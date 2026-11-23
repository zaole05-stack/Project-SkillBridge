# Hilfsfunktionen für Projekte (wird von api/projects.py genutzt)

from db import get_db_con


def euro_in_cent(betrag):
    # Beträge als Cent speichern, um Rundungsfehler bei Floats zu vermeiden
    if betrag == "" or betrag is None:
        return None
    betrag = betrag.replace(",", ".")
    return round(float(betrag) * 100)


def alle_projekte():
    db_con = get_db_con()
    projekte = db_con.execute(
        """SELECT project.*, company.company_name FROM project
           JOIN company ON company.id = project.company_id
           ORDER BY project.created_at DESC"""
    ).fetchall()
    return projekte


# Rückgabe: (projekt_id, []) bei Erfolg oder (None, [fehlerliste])
def projekt_anlegen(company_id, formular, skills):
    # Leere Strings zu None wandeln, damit DB-Constraints (z.B. bei Dates) nicht greifen
    titel = formular.get("title", "").strip()
    beschreibung = formular.get("description", "").strip()
    start = formular.get("start_date") or None
    ende = formular.get("end_date") or None
    stadt = formular.get("city") or None
    land = formular.get("country") or None
    verguetung = formular.get("compensation_type") or None

    if formular.get("full_remote"):
        remote = 1
    else:
        remote = 0

    fehler = []

    if titel == "":
        fehler.append("Bitte einen Titel eingeben.")
    if beschreibung == "":
        fehler.append("Bitte eine Beschreibung eingeben.")
    if start and ende and ende < start:
        fehler.append("Das Enddatum liegt vor dem Startdatum.")

    try:
        budget_min = euro_in_cent(formular.get("budget_min"))
        budget_max = euro_in_cent(formular.get("budget_max"))
    except ValueError:
        fehler.append("Das Budget muss eine Zahl sein.")
        return None, fehler

    if budget_min and budget_max and budget_max < budget_min:
        fehler.append("Das maximale Budget ist kleiner als das minimale.")

    if fehler:
        return None, fehler

    db_con = get_db_con()
    firma = db_con.execute("SELECT id FROM company WHERE id = ?", (company_id,)).fetchone()
    if firma is None:
        return None, ["Nur Unternehmen können Projekte anlegen."]

    # status und created_at laufen über DB-Defaults
    cursor = db_con.execute(
        """INSERT INTO project (company_id, title, description, start_date, end_date, full_remote,
                               city, country, compensation_type, budget_min_cents, budget_max_cents)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
        (company_id, titel, beschreibung, start, ende, remote,
         stadt, land, verguetung, budget_min, budget_max)
    )
    projekt_id = cursor.lastrowid

    for skill_id in skills:
        db_con.execute(
            "INSERT INTO project_skill (project_id, skill_id, is_required) VALUES (?, ?, 1)",
            (projekt_id, skill_id)
        )

    db_con.commit()
    return projekt_id, []


def projekt_loeschen(projekt_id, company_id):
    db_con = get_db_con()

    projekt = db_con.execute(
        "SELECT id FROM project WHERE id = ? AND company_id = ?",
        (projekt_id, company_id)
    ).fetchone()
    if projekt is None:
        return False

    # Bewerbungen manuell löschen (kein ON DELETE CASCADE hinterlegt, project_skill löscht sich automatisch)
    db_con.execute("DELETE FROM application WHERE project_id = ?", (projekt_id,))
    db_con.execute("DELETE FROM project WHERE id = ?", (projekt_id,))
    db_con.commit()
    return True


# Verwaltung (eigene Projekte)

def ist_unternehmen(user_id):
    db_con = get_db_con()
    firma = db_con.execute("SELECT id FROM company WHERE id = ?", (user_id,)).fetchone()
    if firma is None:
        return False
    return True


def eigene_projekte(company_id, suche):
    db_con = get_db_con()
    projekte = db_con.execute(
        """SELECT * FROM project
           WHERE company_id = ? AND title LIKE ?
           ORDER BY created_at DESC""",
        (company_id, "%" + suche + "%")
    ).fetchall()
    return projekte


def projekt_abschliessen(projekt_id, company_id):
    db_con = get_db_con()
    db_con.execute(
        "UPDATE project SET status = 'closed' WHERE id = ? AND company_id = ?",
        (projekt_id, company_id)
    )
    db_con.commit()


def skills_nach_gruppe():
    db_con = get_db_con()
    zeilen = db_con.execute(
        """SELECT skill.id, skill.name, skill_group.name AS gruppe FROM skill
           JOIN skill_group ON skill_group.id = skill.group_id
           ORDER BY skill_group.id, skill.name"""
    ).fetchall()

    # Gruppierung für die Checkboxen im Frontend: {gruppenname: [skills]}
    gruppen = {}
    for zeile in zeilen:
        if zeile["gruppe"] not in gruppen:
            gruppen[zeile["gruppe"]] = []
        gruppen[zeile["gruppe"]].append(zeile)
    return gruppen
    
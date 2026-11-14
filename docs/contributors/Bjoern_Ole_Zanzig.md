# Profil: Zanzig, Björn Ole

**Projekt-Repository:** [zaole05-stack/StudyBees](https://github.com/zaole05-stack/StudyBees.git)

## Allgemeine Informationen
- **Matrikelnummer:** 77204460409
- **GitHub Username:** zaole05-stack
- **Portfolio (Aufteilung):** A
- **Target Grade:** 1.0

## Meta-Goals
- Ich möchte die Fähigkeiten entwickeln, die es benötigt, eine Web-Applikation zu konzipieren, aufzubauen und zu optimieren.
- Aktuell bekomme ich auf der Arbeit bereits kleine Einblicke, wo ich Webanwendungen für einen Ressourcen-Manager optimiere. Jedoch erfahre ich dort noch nicht, was wirklich dahintersteckt, ein Projekt von Step One bis zur Production zu bringen.
- Generell möchte ich sowohl meine Programmierkenntnisse verbessern als auch meine Fähigkeiten ausbauen, Anwendungen zu konzeptualisieren und zu konstruieren.
### Eidesstattliche Erklärung

**[Björn Ole Zanzig, Matrikelnr.: 77204460409]**

Ich erkläre an Eides statt:

Diese Arbeit habe ich selbständig und eigenhändig erstellt. Die den benutzten Quellen wörtlich oder inhaltlich entnommenen Stellen habe ich als solche kenntlich gemacht. Diese Erklärung gilt für jeglichen als Projektergebnis eingereichten Inhalt, einschließlich Quellcode, Texte und Illustrationen.

KI-Systeme (z.B. LLM-basierte Werkzeuge) habe ich ausschließlich als Hilfsmittel gemäß der Vorgaben im Modul eingesetzt. Insbesondere habe ich zu keiner Zeit und in keiner Weise agentische Systeme ("Agentic AI") genutzt. Jegliche Nutzung habe ich vollständig und gemäß der geltenden Regeln und Vorgaben an HWR Berlin und Fachbereich 1 dokumentiert. 

Mir ist bewusst, dass folgendes als Täuschungsversuch gewertet wird und zu einer Beurteilung der Modulleistung mit "nicht ausreichend" führt:

- Die wörtliche oder nahezu wörtliche Wiedergabe von fremden Inhalten - einschließlich KI-generierte Inhalte - ohne Quellenangabe;
- Die nicht vollständige Offenlegung genutzter KI-Systeme;
- Jegliche Nutzung von Agentic AI.

Mir ist weiterhin bewusst, dass ich, sofern ich zur Erstellung dieser Arbeit KI-basierte Hilfsmittel verwendet habe, die Verantwortung für eventuell durch die KI generierte fehlerhafte oder verzerrte Inhalte, fehlerhafte Referenzen, Verstöße gegen das Datenschutz- und Urheberrecht oder Plagiate trage.

---

## Vertical Feature Ownership

[First, briefly describe the vertical feature(s) that you owned.

Next, provide a **step-by-step walkthrough** of owned vertical feature(s) that examiner can follow in app. Ensure this matches actually implemented functionality.

**In addition**, supply ample proof of ownership, primarily through exemplary git commit traces. For every vertical feature you owned, maintain a table like this.]

| Activities | Proof, e.g., git commits | Sources used |
| :-- | :-- | :-- |
| [Design Challenge research] | [Research traces](../product-discovery/01-design-challenge.md#raw-materia) | See left |
| [Refactor to use Flask Blueprints] | [d816e4](https://github.com/hwrberlin/fswd/commit/d816e4), [75a6c1](https://github.com/hwrberlin/fswd/commit/75a6c1) | [Flask Documentation](https://flask.palletsprojects.com/en/stable/blueprints/#the-concept-of-blueprints) |
|  |  |  |
|  |  |  |
|  |  |  |

---

## Portfolio Ownership

[Indicate your [Portfolio Ownership](https://hwrberlin.github.io/fswd/assessment.html#vertical-feature-and-portfolio-ownership). Usually, it will be sufficicent to just write something like: "I owned Portfolio **B** in our **4-person** team."

**In addition**

| Portfolio Task | Proof |
| :-- | :-- |
| **Discovery Process** | |
| Plan discovery activities | [Discovery Plan](../product-discovery/material/02-up/.todo) |
| Maintain discovery evidence | *01.11.:* I reminded everybody to upload their discovery evidence |
| | *05.11.:* I checked all uploads for completeness |
**API** | |
| Integrate API behavior | [74a6b7](https://github.com/hwrberlin/fswd/commit/74a6b7) |
| | |
| | |

---

## Design Decisions that I led

- [00: Title](../design-decisions/dd-00.md)
- [01: How to access the database - SQL or SQLAlchemy](../design-decisions/dd-01.md)

---

## AI Directory
| #   | AI Tool | Purpose of Use | Affected Sections (Code + Docs) | Remarks, Procedure, Prompts |
| :-- | :--     | :--            | :--                             | :--                         |
| 01  |  Gemini       |     Verstehen wie ich schritt für Schritt vorgehen muss um die API  zu entwerfen (Vorgehnsmodell)          |             Planung der API um einfach einen Ansatz für mich zu haben. Es wurde keine MD oder Code geschrieben                    |                 Planung und Konzeption einerAPI für mein Fullstack-Webentwicklungsprojekt Ich möchte die API für mein Fullstack-Webentwicklungsprojekt entwickeln und benötige dafür einen vollständigen, strukturierten und praxisorientierten Arbeitsplan. Deine Aufgabe ist es, mich durch die gesamte Planung und Konzeption der API zu führen, bevor ich mit der eigentlichen Implementierung beginne. Erstelle einen detaillierten Schritt-für-Schritt-Plan, der alle wichtigen Aspekte berücksichtigt, die bei der Entwicklung einer professionellen, sicheren und wartbaren API relevant sind. 1. Anforderungen und Grundlagen - Welche funktionalen und nicht funktionalen Anforderungen muss ich definieren? - Wie identifiziere ich die benötigten API-Funktionen? - Welche Aufgaben übernimmt die API innerhalb meiner Fullstack-Architektur? - Wie definiere ich die Kommunikation zwischen Frontend, Backend und Datenbank? 2. API-Architektur und Design - Welche API-Architektur ist für mein Projekt sinnvoll (z. B. REST oder GraphQL) wie finde ich das raus?- Wie strukturiere ich meine API logisch? - Wie definiere ich Endpunkte, HTTP-Methoden und Ressourcen? - Wie gestalte ich einheitliche Request- und Response-Strukturen? - Wie gehe ich mit Statuscodes und Fehlerbehandlung um? - Wie plane ich Versionierung und Erweiterbarkeit? 3. Datenmodell und Datenbank - Welche Daten benötigt meine API? - Wie leite ich aus den Anforderungen Datenmodelle und Beziehungen ab? - Wie plane ich Validierung, Datenintegrität und Datenbankzugriffe? - Wie vermeide ich redundante oder inkonsistente Daten? 4. Authentifizierung und Sicherheit - Wie plane ich Registrierung, Login und Logout? - Wann benötige ich Authentifizierung und wann Autorisierung? - Wie gehe ich mit Rollen und Berechtigungen um? - Welche Sicherheitsrisiken muss ich berücksichtigen? - Wie schütze ich meine API vor Angriffen, Missbrauch und ungültigen Eingaben? - Welche Aspekte wie CORS, Rate Limiting, Passwort-Hashing und sichere Token-Verwaltung muss ich beachten?5. API-Dokumentation - Wie dokumentiere ich meine Endpunkte? - Welche Informationen gehören in eine API-Dokumentation? - Wie kann ich OpenAPI/Swagger sinnvoll einsetzen? - Wie stelle ich sicher, dass die Dokumentation mit der Implementierung übereinstimmt? 6. Testing und Qualitätssicherung - Welche verschiedenen API-Tests sollte ich einplanen? - Wie teste ich Endpunkte, Fehlerfälle und Berechtigungen? - Wie überprüfe ich die Integration zwischen Frontend, Backend und Datenbank? - Welche Testwerkzeuge sind sinnvoll?7. Deployment und Betrieb - Was muss ich für den späteren Produktivbetrieb vorbereiten? - Wie verwalte ich Umgebungsvariablen und Zugangsdaten? - Wie plane ich Logging, Monitoring und Fehlerüberwachung? - Welche Aspekte muss ich bei Performance, Skalierbarkeit und Wartbarkeit beachten? Anforderungen an deinen Arbeitsplan 1. Gliedere den gesamten Prozess in eine sinnvolle Reihenfolge aufeinander aufbauender Phasen.2. Erkläre für jede Phase, was ich tun muss, warum es wichtig ist und welches konkrete Ergebnis am Ende vorliegen sollte. 3. Erstelle für jede Phase eine Checkliste mit konkreten Aufgaben. 4. Zeige Abhängigkeiten zwischen den einzelnen Arbeitsschritten auf. 5. Unterscheide zwischen zwingend notwendigen Aufgaben und optionalen Verbesserungen. 6. Nenne typische Anfängerfehler und erkläre, wie ich diese vermeiden kann. 7. Empfiehl geeignete Tools und Technologien, ohne mich unnötig auf einen bestimmten Tech-Stack festzulegen. 8. Berücksichtige Best Practices für eine professionelle API-Entwicklung. Wichtige Einschränkungen - Schreibe keinen Code. - Erstelle keine fertige API und implementiere keine Endpunkte. - Konzentriere dich ausschließlich auf Planung, Konzeption, Architektur und Vorbereitung. - Erkläre technische Zusammenhänge verständlich, aber auf einem fachlich fundierten Niveau. - Vermeide unnötige Theorie und konzentriere dich auf konkrete Arbeitsschritte. Gewünschtes Endergebnis Ich möchte einen vollständigen Projektfahrplan erhalten, den ich eigenständig Schritt für Schritt abarbeiten kann. Der Plan soll so aufgebaut sein, dass ich nach Abschluss jeder Phase genau weiß: - Was ich erledigt habe. - Welche Entscheidungen ich getroffen habe. - Welche Dokumente oder Ergebnisse entstanden sind.- Was als Nächstes zu tun ist.
Beginne mit einer Übersicht aller Entwicklungsphasen und gehe anschließend jede Phase detailliert durch.            |
| 02  |         |                |                                 |                             |
| ... |         |                |                                 |                             |

# Profil: Hüsgen, Lior Elouan
(Diese Datei st mithilfe von Chatgbt angepasst)

**Projekt-Repository:** [zaole05-stack/StudyBees](https://github.com/zaole05-stack/StudyBees.git)  
**Anwendung:** SkillBridge  
**Stand dieser Arbeitsfassung:** 14.11.2026

> Diese Fassung basiert auf meinen bisher besprochenen Arbeiten. Der aktuelle Repository-Stand wurde dafür nicht geprüft. Alle Angaben mit **[ERGÄNZEN]** oder **[PRÜFEN]** sind vor der Abgabe zu bearbeiten. Eine besprochene Lösung oder ein vorhandenes Layout ist noch kein Nachweis für eine vollständig funktionierende Implementierung.

## Allgemeine Informationen

- **Matrikelnummer:** 77206090745
- **GitHub Username:** elouanhsg
- **Portfolio (Aufteilung):** C
- **Target Grade:** 1.0
- **Teamgröße:** 4

## Meta-Goals

- Ich arbeite in einem IT-Unternehmen, bin dort jedoch nicht in der IT-Abteilung tätig. Durch dieses Projekt möchte ich die Entwicklung von Webanwendungen besser verstehen und einen tieferen Einblick in die Arbeit der IT-Abteilung gewinnen. Dieses Wissen möchte ich nutzen, um meine Aufgaben künftig effizienter und effektiver zu bearbeiten.
- Ich möchte üben, Anwendungslogik strukturiert zu entwerfen und anschließend selbstständig in Code umzusetzen. Dadurch möchte ich mein logisches Denken stärken, meine Programmierkenntnisse verbessern und mich auf die Anforderungen des nächsten Semesters vorbereiten.

### Eidesstattliche Erklärung

**Lior Elouan Hüsgen, Matrikelnr.: 77206090745**

**[OFFEN – vor der Abgabe klären]**

Hier ist der verbindliche Wortlaut der Erklärung aus der Modulvorlage einzusetzen und mit der tatsächlichen Arbeitsweise abzugleichen.

Die Vorlage enthält die Aussage, dass keine agentischen KI-Systeme eingesetzt wurden. Diese Aussage wird in dieser Arbeitsfassung nicht als bereits zutreffende Erklärung übernommen: Bei der Erstellung dieser Dokumentationsfassung wurde ChatGPT im Codex/Work-Modus mit selbstständigen Recherche- und Dateischritten eingesetzt. Diese Unterstützung ist unten im AI Directory dokumentiert.

Die Modulvorgaben verbieten Codex und agentische KI ausdrücklich. Die Zulässigkeit dieser Unterstützung ist deshalb mit der Lehrperson zu klären. Eine Offenlegung allein macht einen untersagten Einsatz nicht zulässig.

**Quelle:** [Generative AI Use Policy des Moduls](https://hwrberlin.github.io/fswd/assessment.html#generative-ai-use-policy)

---

## Vertical Feature Ownership

### Eigenes vertikales Feature

**Feature:** Suchfunktion

**Nutzen für die Zielgruppe:** 
- Für Freelancer erwitern wir durch ene Suche die Möglchkeit angepasste Projekte zu finden. Das spart Zeiit und verrbessert die UX (andernfalls müsste ein Userr endlose Projektlisten durchscollen)
- Unternehmen benötigen bekommen erstmal keien Suchfunktion (vorbehalt: De Suchfunktion kann vorteile bei der Namensuche bringen. Implementierung kann bei beddarf und passendem Pensum folgen)

**Mein eigener Verantwortungsumfang:** [ERGÄNZEN – Oberfläche, Geschäftslogik und Datenverarbeitung konkret benennen; gemeinsame Arbeit abgrenzen.]

**Umsetzungsstand:** [ERGÄNZEN]

Ein vertikales Feature umfasst nach den Modulvorgaben Frontend, Geschäftslogik und Datenverarbeitung. Meine bisherigen Arbeiten an CSS, Schriften, Templates und Sidebar dokumentiere ich zusätzlich als übergreifende Beiträge. Sie belegen für sich allein noch kein vollständiges vertikales Feature.

**Quelle:** [Vertical Feature and Portfolio Ownership](https://hwrberlin.github.io/fswd/assessment.html#vertical-feature-and-portfolio-ownership)


### Walkthrough meines fertigen vertikalen Features

**[ERGÄNZEN – erst anhand der tatsächlich funktionierenden Anwendung ausfüllen.]**

1. **Voraussetzungen:** [Benutzerrolle, benötigte Testdaten und Ausgangszustand beschreiben; auf die Startanleitung im README verweisen.]
2. **Einstieg:** [Genaue Seite und auszulösende Aktion nennen.]
3. **Eingabe:** [Konkrete, reproduzierbare Testdaten angeben.]
4. **Ausführung:** [Beschreiben, welche Aktion das Feature ausführt.]
5. **Ergebnis:** [Sichtbares Resultat und, soweit relevant, gespeicherte Datenänderung nennen.]
6. **Fehlerfall:** [Einen tatsächlich implementierten Fehler- oder Berechtigungsfall mit erwartetem Ergebnis angeben.]

### Nachweise für mein vertikales Feature

| Activities | Proof, e.g., git commits | Sources used |
| :-- | :-- | :-- |
| [Konkreter eigener Umsetzungsschritt] | [ERGÄNZEN – endgültiger Commit-Link] | [ERGÄNZEN – tatsächlich verwendete Quelle und gegebenenfalls AI-Directory-Eintrag] |
| [Geschäftslogik des Features] | [ERGÄNZEN – endgültiger Commit-Link] | [ERGÄNZEN] |
| [Datenverarbeitung des Features] | [ERGÄNZEN – endgültiger Commit-Link] | [ERGÄNZEN] |

### Zusätzliche Beiträge: Layout, Styles und Navigation

Die folgenden Beschreibungen greifen meine bisher besprochenen Arbeiten auf. Vor der Abgabe sind Umfang, Funktion und endgültige Commit-Nachweise am aktuellen Projektstand zu prüfen.

| Activities | Proof, e.g., git commits | Sources used |
| :-- | :-- | :-- |
| Globale Farben, Schriftgrößen und grundlegende Styles in `static/css/styles.css` festgelegt bzw. erweitert. | Historischer Commit-Hinweis: `0ad584e`; endgültigen Commit-Link ergänzen. | [ERGÄNZEN – tatsächlich genutzte CSS-Quellen und KI-Unterstützung] |
| Nunito für Überschriften und Inter für Fließtext vorgesehen und an der Einbindung über `static/css/fonts.css` gearbeitet. | [ERGÄNZEN – eigener Commit und betroffene Font-Dateien] | [ERGÄNZEN – tatsächlich verwendete Font-Quelle und KI-Unterstützung] |
| Am gemeinsamen Seitenaufbau mit Jinja2-Vererbung und wiederverwendbaren Layouts gearbeitet. | [ERGÄNZEN – eigene Änderungen an `templates/base.html` bzw. `templates/layoutApp.html` nachweisen und aktuelle Dateinamen prüfen] | [ERGÄNZEN – tatsächlich genutzte Jinja2-/Flask-Quellen und KI-Unterstützung] |
| Sidebar-Markup mit Links zu Dashboard, Suche, Projekten, Chat, Einstellungen und Profil vorbereitet. | [ERGÄNZEN – eigener Commit zu `templates/partials/sidebar.html`; vorhandene Routen prüfen] | [ERGÄNZEN – tatsächlich verwendete Quellen und KI-Unterstützung] |
| `static/css/sidebar.css` erstellt und an der Gestaltung der Sidebar gearbeitet. | Historischer Commit-Hinweis: `7c9dd0c`; endgültigen Commit-Link ergänzen. | [ERGÄNZEN – tatsächlich verwendete Quellen und KI-Unterstützung] |
| Die zugehörige CSS-Datei im Head von `layoutApp.html` eingebunden. | Historischer Commit-Hinweis: `3d63d4e`; endgültigen Commit-Link ergänzen. | [ERGÄNZEN – tatsächlich verwendete Quellen und KI-Unterstützung] |
| Frühes Login-Template unter `prototype/templates/login.html` angelegt und die Template-Struktur vorbereitet. | [ERGÄNZEN – endgültiger Commit-Link und heutigen Dateipfad prüfen] | [ERGÄNZEN – tatsächlich verwendete Quellen und KI-Unterstützung] |

**Status der Commit-Hinweise:** Die drei kurzen Hashes stammen aus einem früher gezeigten, noch laufenden Rebase des Branches `feature/sidebar`. Durch den Rebase können sich die Hashes geändert haben. Sie sind Suchhinweise und noch keine bestätigten Nachweise für den abgegebenen Stand. Für die Abgabe sind die endgültigen, erreichbaren Commit-Links und der jeweilige eigene Beitrag zu prüfen.

### Layout und Navigation in der Anwendung nachvollziehen

**[PRÜFEN – jeden Schritt lokal ausführen; unzutreffende Schritte korrigieren.]**

1. Die Anwendung anhand der Anleitung im Repository starten.
2. Das Dashboard öffnen.
3. Prüfen, ob die gemeinsamen Grundstile und die vorgesehenen Schriften geladen werden.
4. Prüfen, ob die Sidebar mit den oben genannten Menüpunkten erscheint.
5. Die bereits angeschlossenen Navigationslinks öffnen und kontrollieren, ob das gemeinsame Layout erhalten bleibt.
6. Noch nicht angeschlossene Links oder reine Platzhalter ausdrücklich als offenen Stand festhalten.

Diese Prüfung beschreibt meine Layoutarbeiten. Sie ersetzt nicht den Walkthrough eines vollständigen vertikalen Features.

---

## Portfolio Ownership

Ich übernehme Portfolio **C** in unserem **4-köpfigen Team**.

**Mein Verantwortungsbereich:** [ERGÄNZEN – die konkret übernommenen Aufgaben aus Portfolio C beschreiben.]

| Portfolio Task | Proof |
| :-- | :-- |
| [Tatsächlich übernommene Portfolio-Aufgabe laut Modul] | [Datum, eigene Aktivität und Link zu Commit, Review, Protokoll oder anderem Beleg] |
| [Weitere tatsächlich übernommene Aufgabe] | [ERGÄNZEN] |
| [Weitere tatsächlich übernommene Aufgabe] | [ERGÄNZEN] |

### Laufende Dokumentation der Portfolio-Arbeit

| Datum | Konkrete eigene Tätigkeit | Ergebnis / Nachweis |
| :-- | :-- | :-- |
| [ERGÄNZEN] | [Was habe ich koordiniert, überprüft oder entschieden?] | [Link zum tatsächlichen Ergebnis] |

---

## Design Decisions that I led

**[ERGÄNZEN – mindestens zwei tatsächlich von mir geleitete, relevante Entscheidungen im vorgeschriebenen Modulformat verlinken.]**

Mögliche Themen aus meinen bisherigen Arbeiten, sofern ich die Entscheidung tatsächlich geleitet habe:

- **Organisation der Styles:** zentrale Grundstile und separate CSS-Dateien für einzelne Komponenten.
- **Wiederverwendbare Seitenlayouts:** gemeinsamer Seitenaufbau und Sidebar mit Jinja2-Vererbung und eingebundenen Teiltemplates.

Diese Themen sind Vorschläge, keine bereits nachgewiesenen Design Decisions. Jede eingetragene Entscheidung muss auf die tatsächliche Entscheidungsdokumentation und greifbare Nachweise für betrachtete Alternativen verweisen.

| Design Decision | Dokumentation | Eigener Beitrag / Nachweise für betrachtete Alternativen |
| :-- | :-- | :-- |
| [Tatsächlich geleitete Entscheidung 1] | [ERGÄNZEN – existierender Dokumentlink] | [ERGÄNZEN – z. B. eigene Prototypen, Branches oder Vergleichsartefakte] |
| [Tatsächlich geleitete Entscheidung 2] | [ERGÄNZEN – existierender Dokumentlink] | [ERGÄNZEN] |

---

## AI Directory

Jede Nutzung ist konkret zu dokumentieren. Die folgenden offenen Einträge sind anhand der tatsächlichen Chatverläufe zu vervollständigen; sie bilden noch kein vollständiges Verzeichnis aller früheren Nutzungen. Zu weiteren eingesetzten Tools sind zusätzliche Einträge anzulegen.

| # | AI Tool | Purpose of Use | Affected Sections (Code + Docs) | Remarks, Procedure, Prompts |
| :-- | :-- | :-- | :-- | :-- |
| 01 | ChatGPT im Codex/Work-Modus, 14.11.2026 | Eine persönliche Arbeitsfassung dieser Contributor-Dokumentation anhand einer bereitgestellten Beispieldatei und früher besprochener Beiträge erstellen. | Diese Markdown-Datei: Profil, Lernzielvorschläge, Beitragsbeschreibungen, offene Nachweise und AI Directory. | Nutzerauftrag sinngemäß: „Ich muss alles, was ich implementiere, dokumentieren. Hilf mir, die Contributor-Vorlage für mich umzusetzen.“ Das System recherchierte frühere Projektgespräche und Modulvorgaben und erstellte diese Datei mit Werkzeugunterstützung. Das Projekt-Repository wurde dabei nicht verändert. Persönliche Prüfung und Freigabe stehen aus. Die Zulässigkeit dieses Einsatzes ist wegen des ausdrücklichen Verbots von Codex/agentischer KI zu klären. |
| 02 | ChatGPT im Codex/Work-Modus, 14.11.2026 | Vom Nutzer gelieferte persönliche Angaben übernehmen und seine beiden Meta-Goals sprachlich überarbeiten. | Profilüberschrift, Allgemeine Informationen, Meta-Goals, Namensangabe unter Eidesstattliche Erklärung und Portfolio-Zuordnung. | Der Nutzer lieferte den Namen Lior Elouan Hüsgen, seine Matrikelnummer, den GitHub-Namen elouanhsg, Portfolio C, die Zielnote 1.0 und zwei selbst formulierte Lernziele. Diese Angaben wurden eingetragen und die Lernziele sprachlich überarbeitet. Die bestehende Datei wurde aktualisiert. |
| 03 | ChatGPT im Codex/Work-Modus, 05.11.2026 | Globale Farben und Schriftgrößen für SkillBridge festlegen und Nunito für Überschriften sowie Inter für Fließtext einbinden. | Codebeispiele für `static/css/styles.css`, lokale Schriftdateien unter `static/fonts/` und den Stylesheet-Link in `templates/base.html`. `templates/login.html` diente als Beispiel für die Jinja-Vererbung. | Ich fragte sinngemäß „Wie setze ich die Farbpalette aus dem Bild nach der HWR-Vorlage für HTML und CSS um? Wo gehören die globalen Stile hin, und wie binde ich Nunito und Inter aus meiner ZIP ein?“ ChatGPT zog das Kurskapitel zum Branch `html+css` heran und lieferte Beispielcode für die sechs Farben der Palette „Deep Petrol“ in `:root`, ihre Verwendung mit `var()` und Schriftgrößen in `rem`. Für die Fonts zeigte es zunächst einen Google-Fonts-Link und anschließend die lokale Einbindung der entpackten TTF-Dateien mit `@font-face` in `styles.css`. Welche Regeln ich übernommen, angepasst oder in `static/css/fonts.css` ausgelagert habe, ist anhand meiner Projektänderungen zu ergänzen. |
| 04 | ChatGPT im Codex/Work-Modus, 07.11.2026 | Die Funktion von Jinja2 anhand der Modulvorgaben verstehen und auf SkillBridge übertragen. | Kick-off-PDF, insbesondere Folien 6 und 8. Lernbeispiele für eine Flask-Route, `templates/main.html` und `templates/projekte.html`. | „Lies die PDF und erkläre mir, wie Jinja2 funktioniert und wie ich es in meinem Projekt nutzen werde.“ ChatGPT wertete die PDF aus und zog die HWR-Kursmaterialien sowie die Flask- und Jinja-Dokumentation heran. An einer Projektliste mit Beispieldaten zeigte es, wie `render_template()` Daten übergibt und wie eine Vorlage diese mit einer Schleife und einer Bedingung darstellt. |
| 05 | ChatGPT im Codex/Work-Modus, 07.11.2026 | Die Titelzeile des Basistemplates verstehen. | `<title>{% block title %}SkillBridge{% endblock %}</title>` im Basistemplate. | „Warum sieht die Titelzeile genau so aus?“ ChatGPT erklärte die Funktion des HTML-Elements `<title>`, des Jinja-Blocks `title` und des Standardwerts `SkillBridge`. Ein Beispiel zeigte, wie eine Unterseite den Titel im Browser-Tab überschreibt. |
| 06 | ChatGPT im Codex/Work-Modus, 07.11.2026 | Codebeispiel für ein gemeinsames Basistemplate mit Jinja2-Vererbung erstellen lassen. | Beispielcode für `templates/base.html`, `templates/index.html` und die Flask-Route `index()`. Verknüpfung mit `static/css/styles.css`. | „Ich nutze Inheritance. Zeige mir, was für meine `base.html` notwendig ist, und erstelle ein entsprechendes Codebeispiel.“ ChatGPT generierte ein vollständiges Basistemplate mit Header, Navigation, Footer und den Blöcken `title`, `content` und `extra_css`. Zusätzlich lieferte es eine erbende Startseite und die zugehörige Beispielroute. |
| 07 | ChatGPT im Codex/Work-Modus, 07.11.2026 | Den Terminalbefehl für den Zugriff auf die „Webversion“ erfragen. | Lokaler Start der Flask-Anwendung. | „Mit welchem Befehl kann ich auf die Webversion zugreifen?“ ChatGPT deutete die Frage zunächst als lokale Vorschau und nannte `python -m flask --app app run --debug` sowie die Browseradresse `http://127.0.0.1:5000`. Anschließend präzisierte ich, dass ich Git meinte. |
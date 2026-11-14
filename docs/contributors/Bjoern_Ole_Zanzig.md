# Profil: Hüsgen, Lior Elouan

**Projekt-Repository:** [zaole05-stack/StudyBees](https://github.com/zaole05-stack/StudyBees.git)  
**Anwendung:** SkillBridge  
**Stand dieser Arbeitsfassung:** 14.11.2026

> Diese Arbeitsfassung dokumentiert meine angegebenen Beiträge und ihren jeweiligen Umsetzungsstand. Angaben mit **[ERGÄNZEN]** oder **[PRÜFEN]** sowie die endgültigen Commit-Links und Entwurfsnachweise sind vor der Abgabe zu vervollständigen.

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

### Meine bisherigen Beiträge

#### 1. UI-Screens entworfen und mit der Umsetzung begonnen

Ich habe die UI-Screens für die Anwendung entworfen. Die Entwürfe bilden die Grundlage für die Gestaltung und den Aufbau der Benutzeroberfläche. Anschließend habe ich begonnen, die entworfenen Screens in HTML und CSS umzusetzen.

**Stand:** Die UI-Screens sind entworfen; die Umsetzung ist begonnen und noch nicht vollständig abgeschlossen.  
**Entwürfe:** [ERGÄNZEN – Link zu den Screens oder Entwurfsdateien]

#### 2. Grundlagen für Flask und den HTML-Seitenaufbau geschaffen

Ich habe die Grundlagen für die Flask-Anwendung geschaffen. Dazu habe ich die Ordnerstruktur angepasst und das HTML-Grundschema erstellt. Dieses Grundschema dient als gemeinsame Ausgangsbasis für den Aufbau der einzelnen Seiten.

**Stand:** Die Ordnerstruktur wurde angepasst und das HTML-Grundschema erstellt.  
**Betroffene Bereiche:** Projektstruktur und gemeinsame HTML-Templates; genaue Dateien und Commit-Links sind unten zu ergänzen.

#### 3. Globale CSS-Variablen festgelegt

Ich habe die globalen CSS-Variablen für die Anwendung festgelegt. Darin werden grundlegende Gestaltungswerte wie Farben, Schriftarten und Größen zentral definiert. Die Variablen bilden eine gemeinsame Grundlage für die Gestaltung der Seiten und erleichtern spätere Anpassungen.

**Stand:** Die globalen CSS-Variablen sind festgelegt.  
**Betroffene Datei:** `static/css/styles.css`

#### 4. Sidebar implementiert

Ich habe die Sidebar als wiederkehrendes Navigationselement implementiert. Dazu gehören der HTML-Aufbau, die Gestaltung mit CSS und die Einbindung in das gemeinsame Seitenlayout. Die Sidebar enthält die Menüpunkte Dashboard, Suche, Projekte, Chat, Einstellungen und Profil.

**Stand:** Die Sidebar ist implementiert. Die verlinkten Anwendungsbereiche können unabhängig davon noch in Entwicklung sein.  
**Betroffene Dateien:** `templates/partials/sidebar.html`, `static/css/sidebar.css` und das gemeinsame Layout, zuletzt `templates/layoutApp.html`. Die aktuellen Dateipfade sind vor dem Eintragen der Nachweise zu prüfen.

### Nachweise meiner Beiträge

| Activities | Proof, e.g., git commits | Sources used |
| :-- | :-- | :-- |
| UI-Screens entworfen und mit der Umsetzung in HTML und CSS begonnen. | [ERGÄNZEN – Link zu den eigenen UI-Entwürfen und Commit-Links zur begonnenen Umsetzung] | [ERGÄNZEN – tatsächlich verwendete Quellen und gegebenenfalls KI-Nutzung] |
| Grundlagen der Flask-Anwendung geschaffen: Ordnerstruktur angepasst und HTML-Grundschema erstellt. | [ERGÄNZEN – Commit-Links zur Projektstruktur und zu den gemeinsamen Templates] | [ERGÄNZEN – tatsächlich verwendete Flask-/HTML-/Jinja2-Quellen und gegebenenfalls KI-Nutzung] |
| Globale CSS-Variablen für die gemeinsame Gestaltung festgelegt. | [ERGÄNZEN – endgültiger Commit-Link zu `static/css/styles.css`; historischer Suchhinweis: `0ad584e`] | [ERGÄNZEN – tatsächlich verwendete CSS-Quellen und gegebenenfalls KI-Nutzung] |
| Sidebar mit HTML und CSS implementiert und in das gemeinsame Layout eingebunden. | [ERGÄNZEN – endgültige Commit-Links; historische Suchhinweise: `7c9dd0c` und `3d63d4e`] | [ERGÄNZEN – tatsächlich verwendete Quellen und gegebenenfalls KI-Nutzung] |

**Hinweis zu den Commit-Nachweisen:** Die kurzen Hashes stammen aus einem früher gezeigten Rebase des Branches `feature/sidebar`. Sie dienen als Suchhinweise. Für die Abgabe sind sie durch die endgültigen, erreichbaren Commit-Links zu ersetzen.

### Walkthrough meiner bisherigen UI- und Layoutarbeiten

**Voraussetzung:** Die Anwendung wird anhand der Startanleitung im README ausgeführt. Die folgenden Schritte sind vor der Abgabe am aktuellen Stand der Anwendung zu prüfen.

1. Die verlinkten UI-Entwürfe öffnen und mit den bereits umgesetzten Screens vergleichen. Dabei berücksichtigen, dass sich die Umsetzung noch in Arbeit befindet.
2. Das Dashboard öffnen und den gemeinsamen HTML-Seitenaufbau nachvollziehen.
3. Die Sidebar mit den Menüpunkten Dashboard, Suche, Projekte, Chat, Einstellungen und Profil ansehen.
4. Die bereits angeschlossenen Navigationslinks öffnen und die Einbindung der Sidebar auf den betreffenden Seiten nachvollziehen.
5. Auf den bereits gestalteten Seiten prüfen, wie die global festgelegten Farben, Schriftarten und Größen verwendet werden.

Die Anpassung der Flask-Ordnerstruktur und das HTML-Grundschema sind zusätzlich anhand der verlinkten Dateien und Commits nachvollziehbar.

### Vollständiges vertikales Feature

Die oben beschriebenen Beiträge betreffen UI-Entwurf, Projektgrundlagen, Gestaltung und Navigation. Ein vollständiges vertikales Feature mit Benutzeroberfläche, Geschäftslogik und Datenverarbeitung ist hier noch gesondert zu dokumentieren.

- **Eigenes Feature:** [ERGÄNZEN – vereinbarte Verantwortung]
- **Nutzen für die Zielgruppe:** [ERGÄNZEN]
- **Eigener Beitrag zu Oberfläche, Geschäftslogik und Datenverarbeitung:** [ERGÄNZEN]
- **Walkthrough und Commit-Nachweise:** [ERGÄNZEN – passend zur tatsächlich umgesetzten Funktion]

**Quelle:** [Vertical Feature and Portfolio Ownership](https://hwrberlin.github.io/fswd/assessment.html#vertical-feature-and-portfolio-ownership)

---

## Portfolio Ownership

Ich übernehme Portfolio **C** in unserem **[ERGÄNZEN]-köpfigen Team**.

Mein bisheriger Schwerpunkt liegt auf der Benutzeroberfläche und der gemeinsamen Seitenstruktur. Dazu habe ich UI-Screens entworfen, mit ihrer Umsetzung begonnen, das HTML-Grundschema erstellt, globale CSS-Variablen festgelegt und die Sidebar implementiert. Zusätzlich habe ich die Grundlagen der Flask-Projektstruktur geschaffen.

Die folgende Tabelle dokumentiert meine bisherigen Beiträge in diesem Bereich. Weitere tatsächlich übernommene Koordinations- und Prüfaufgaben innerhalb des Portfolios sind laufend zu ergänzen.

| Portfolio Task | Proof |
| :-- | :-- |
| UI-Screens als Grundlage der Benutzeroberfläche entwerfen und ihre Umsetzung beginnen. | [ERGÄNZEN – Entwurfsdateien und Commit-Links] |
| Gemeinsamen Seitenaufbau und Navigation integrieren: HTML-Grundschema und Sidebar. | [ERGÄNZEN – Commit-Links zu den Templates und zur Sidebar] |
| Gemeinsame Gestaltung durch globale CSS-Variablen festlegen. | [ERGÄNZEN – Commit-Link zu `static/css/styles.css`] |

### Laufende Dokumentation der Portfolio-Arbeit

| Datum / Zeitraum | Konkrete eigene Tätigkeit | Ergebnis / Nachweis |
| :-- | :-- | :-- |
| [ERGÄNZEN – tatsächlicher Arbeitszeitraum] | UI-Screens entworfen und mit der Umsetzung begonnen. | [Link zu Entwürfen und Umsetzungsstand] |
| [ERGÄNZEN – tatsächlicher Arbeitszeitraum] | Flask-Ordnerstruktur angepasst und HTML-Grundschema erstellt. | [Commit-Links] |
| [ERGÄNZEN – tatsächlicher Arbeitszeitraum] | Globale CSS-Variablen festgelegt. | [Commit-Link] |
| [ERGÄNZEN – tatsächlicher Arbeitszeitraum] | Sidebar implementiert und in das Layout eingebunden. | [Commit-Links] |

---

## Design Decisions that I led

Meine bisherigen Gestaltungs- und Strukturentscheidungen betreffen die UI-Screens, das gemeinsame HTML-Grundschema und die globalen CSS-Variablen.

Die Entscheidungen sind noch im vorgeschriebenen Modulformat zu dokumentieren und zu verlinken. Tatsächlich betrachtete Alternativen und die dazugehörigen eigenen Artefakte sind zu ergänzen.

| Design Decision | Mein bisheriger Beitrag | Dokumentation / Nachweise |
| :-- | :-- | :-- |
| Gestaltung der UI-Screens | Ich habe die UI-Screens entworfen und als Grundlage für die begonnene Umsetzung verwendet. | [ERGÄNZEN – Design-Decision-Dokument, eigene Entwürfe und tatsächlich betrachtete Alternativen] |
| Projektstruktur und gemeinsames HTML-Grundschema | Ich habe die Ordnerstruktur für Flask angepasst und das HTML-Grundschema erstellt. | [ERGÄNZEN – Design-Decision-Dokument, Commit-Links und eigene Nachweise zu betrachteten Alternativen] |
| Zentrale Gestaltung mit globalen CSS-Variablen | Ich habe die globalen CSS-Variablen festgelegt, damit grundlegende Gestaltungswerte gemeinsam verwendet werden können. | [ERGÄNZEN – Design-Decision-Dokument, Commit-Link und tatsächlich betrachtete Alternativen] |

---

## AI Directory

Jede Nutzung ist konkret zu dokumentieren. Die folgenden offenen Einträge sind anhand der tatsächlichen Chatverläufe zu vervollständigen; sie bilden noch kein vollständiges Verzeichnis aller früheren Nutzungen. Zu weiteren eingesetzten Tools sind zusätzliche Einträge anzulegen.

| # | AI Tool | Purpose of Use | Affected Sections (Code + Docs) | Remarks, Procedure, Prompts |
| :-- | :-- | :-- | :-- | :-- |
| 01 | ChatGPT im Codex/Work-Modus, 14.11.2026 | Eine persönliche Arbeitsfassung dieser Contributor-Dokumentation anhand einer bereitgestellten Beispieldatei und früher besprochener Beiträge erstellen. | Diese Markdown-Datei: Profil, Lernzielvorschläge, Beitragsbeschreibungen, offene Nachweise und AI Directory. | Nutzerauftrag sinngemäß: „Ich muss alles, was ich implementiere, dokumentieren. Hilf mir, die Contributor-Vorlage für mich umzusetzen.“ Das System recherchierte frühere Projektgespräche und Modulvorgaben und erstellte diese Datei mit Werkzeugunterstützung. Das Projekt-Repository wurde dabei nicht verändert. Persönliche Prüfung und Freigabe stehen aus. Die Zulässigkeit dieses Einsatzes ist wegen des ausdrücklichen Verbots von Codex/agentischer KI zu klären. |
| 02 | ChatGPT im Codex/Work-Modus, 14.11.2026 | Vom Nutzer gelieferte persönliche Angaben übernehmen und seine beiden Meta-Goals sprachlich überarbeiten. | Profilüberschrift, Allgemeine Informationen, Meta-Goals, Namensangabe unter Eidesstattliche Erklärung und Portfolio-Zuordnung. | Der Nutzer lieferte den Namen Lior Elouan Hüsgen, seine Matrikelnummer, den GitHub-Namen elouanhsg, Portfolio C, die Zielnote 1.0 und zwei selbst formulierte Lernziele. Diese Angaben wurden eingetragen und die Lernziele sprachlich überarbeitet. Die bestehende Datei wurde aktualisiert. |
| 03 | ChatGPT im Codex/Work-Modus, 14.11.2026 | Die Contributor-Dokumentation an vier vom Nutzer beschriebene Beiträge anpassen. | Vertical Feature Ownership, Portfolio Ownership, Design Decisions und dieser AI-Directory-Eintrag. | Nutzerauftrag sinngemäß: „Dokumentiere den Entwurf und die begonnene Umsetzung der UI-Screens, die Flask-Grundlagen mit angepasster Ordnerstruktur und HTML-Grundschema, die Festlegung globaler CSS-Variablen und die implementierte Sidebar.“ Die Beschreibungen wurden auf diese Angaben abgestimmt. Die UI-Umsetzung wird als begonnen geführt; fehlende Nachweise bleiben markiert. Das Projekt-Repository wurde nicht verändert. |
| [ERGÄNZEN] | [Tatsächlich eingesetztes Tool, Modell soweit bekannt, Datum] | Unterstützung bei globalen CSS-Grundstilen und der Einbindung von Nunito und Inter. | [PRÜFEN: `static/css/styles.css`, `static/css/fonts.css`, zugehörige Templates] | [Exakten oder klar als sinngemäß gekennzeichneten Prompt, Ergebnis, übernommene Stellen und eigene Anpassungen nachtragen.] |
| [ERGÄNZEN] | [Tatsächlich eingesetztes Tool, Modell soweit bekannt, Datum] | Unterstützung bei Jinja2-Vererbung, Layouts und Sidebar. | [PRÜFEN: `templates/base.html`, `templates/layoutApp.html`, `templates/partials/sidebar.html`, `static/css/sidebar.css`] | [Einzelne Gespräche bzw. klar abgegrenzte Nutzungsschritte mit konkreten Prompts, übernommenen Ergebnissen und eigener Überprüfung dokumentieren.] |
| [ERGÄNZEN] | [Tatsächlich eingesetztes Tool, Modell soweit bekannt, Datum] | [Weitere tatsächliche Nutzung, etwa Hilfe zu Login, Fehleranalyse oder Git] | [Konkrete Dateien oder Dokumentabschnitte] | [Konkreten Prompt, Ergebnis, Übernahme und eigene Prüfung beschreiben.] |


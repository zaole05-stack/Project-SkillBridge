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
| #   | AI Tool | Purpose of Use | Affected Sections (Code + Docs) | Remarks, Procedure, Prompts |
| :-- | :--     | :--            | :--                             | :--                         |
| 01  |  Gemini       |     Verstehen wie ich schritt für Schritt vorgehen muss um die API  zu entwerfen (Vorgehnsmodell)          |             Planung der API um einfach einen Ansatz für mich zu haben. Es wurde keine MD oder Code geschrieben                    |                 Planung und Konzeption einerAPI für mein Fullstack-Webentwicklungsprojekt Ich möchte die API für mein Fullstack-Webentwicklungsprojekt entwickeln und benötige dafür einen vollständigen, strukturierten und praxisorientierten Arbeitsplan. Deine Aufgabe ist es, mich durch die gesamte Planung und Konzeption der API zu führen, bevor ich mit der eigentlichen Implementierung beginne. Erstelle einen detaillierten Schritt-für-Schritt-Plan, der alle wichtigen Aspekte berücksichtigt, die bei der Entwicklung einer professionellen, sicheren und wartbaren API relevant sind. 1. Anforderungen und Grundlagen - Welche funktionalen und nicht funktionalen Anforderungen muss ich definieren? - Wie identifiziere ich die benötigten API-Funktionen? - Welche Aufgaben übernimmt die API innerhalb meiner Fullstack-Architektur? - Wie definiere ich die Kommunikation zwischen Frontend, Backend und Datenbank? 2. API-Architektur und Design - Welche API-Architektur ist für mein Projekt sinnvoll (z. B. REST oder GraphQL) wie finde ich das raus?- Wie strukturiere ich meine API logisch? - Wie definiere ich Endpunkte, HTTP-Methoden und Ressourcen? - Wie gestalte ich einheitliche Request- und Response-Strukturen? - Wie gehe ich mit Statuscodes und Fehlerbehandlung um? - Wie plane ich Versionierung und Erweiterbarkeit? 3. Datenmodell und Datenbank - Welche Daten benötigt meine API? - Wie leite ich aus den Anforderungen Datenmodelle und Beziehungen ab? - Wie plane ich Validierung, Datenintegrität und Datenbankzugriffe? - Wie vermeide ich redundante oder inkonsistente Daten? 4. Authentifizierung und Sicherheit - Wie plane ich Registrierung, Login und Logout? - Wann benötige ich Authentifizierung und wann Autorisierung? - Wie gehe ich mit Rollen und Berechtigungen um? - Welche Sicherheitsrisiken muss ich berücksichtigen? - Wie schütze ich meine API vor Angriffen, Missbrauch und ungültigen Eingaben? - Welche Aspekte wie CORS, Rate Limiting, Passwort-Hashing und sichere Token-Verwaltung muss ich beachten?5. API-Dokumentation - Wie dokumentiere ich meine Endpunkte? - Welche Informationen gehören in eine API-Dokumentation? - Wie kann ich OpenAPI/Swagger sinnvoll einsetzen? - Wie stelle ich sicher, dass die Dokumentation mit der Implementierung übereinstimmt? 6. Testing und Qualitätssicherung - Welche verschiedenen API-Tests sollte ich einplanen? - Wie teste ich Endpunkte, Fehlerfälle und Berechtigungen? - Wie überprüfe ich die Integration zwischen Frontend, Backend und Datenbank? - Welche Testwerkzeuge sind sinnvoll?7. Deployment und Betrieb - Was muss ich für den späteren Produktivbetrieb vorbereiten? - Wie verwalte ich Umgebungsvariablen und Zugangsdaten? - Wie plane ich Logging, Monitoring und Fehlerüberwachung? - Welche Aspekte muss ich bei Performance, Skalierbarkeit und Wartbarkeit beachten? Anforderungen an deinen Arbeitsplan 1. Gliedere den gesamten Prozess in eine sinnvolle Reihenfolge aufeinander aufbauender Phasen.2. Erkläre für jede Phase, was ich tun muss, warum es wichtig ist und welches konkrete Ergebnis am Ende vorliegen sollte. 3. Erstelle für jede Phase eine Checkliste mit konkreten Aufgaben. 4. Zeige Abhängigkeiten zwischen den einzelnen Arbeitsschritten auf. 5. Unterscheide zwischen zwingend notwendigen Aufgaben und optionalen Verbesserungen. 6. Nenne typische Anfängerfehler und erkläre, wie ich diese vermeiden kann. 7. Empfiehl geeignete Tools und Technologien, ohne mich unnötig auf einen bestimmten Tech-Stack festzulegen. 8. Berücksichtige Best Practices für eine professionelle API-Entwicklung. Wichtige Einschränkungen - Schreibe keinen Code. - Erstelle keine fertige API und implementiere keine Endpunkte. - Konzentriere dich ausschließlich auf Planung, Konzeption, Architektur und Vorbereitung. - Erkläre technische Zusammenhänge verständlich, aber auf einem fachlich fundierten Niveau. - Vermeide unnötige Theorie und konzentriere dich auf konkrete Arbeitsschritte. Gewünschtes Endergebnis Ich möchte einen vollständigen Projektfahrplan erhalten, den ich eigenständig Schritt für Schritt abarbeiten kann. Der Plan soll so aufgebaut sein, dass ich nach Abschluss jeder Phase genau weiß: - Was ich erledigt habe. - Welche Entscheidungen ich getroffen habe. - Welche Dokumente oder Ergebnisse entstanden sind.- Was als Nächstes zu tun ist.
Beginne mit einer Übersicht aller Entwicklungsphasen und gehe anschließend jede Phase detailliert durch.            |
| 02  |         |                |                                 |                             |
| ... |         |                |                                 |                             |

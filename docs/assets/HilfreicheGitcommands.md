WICHTIGE GIT BEFEHLE FUER DAS TEAM

-- LOKALER WORKFLOW --

git status                  - Zeigt den aktuellen Status der Dateien an (geändert, gestaged, etc.).

git add .                   - Fügt alle aktuellen Änderungen zum Staging-Bereich hinzu.

git add <dateiname>         - Fügt nur eine spezifische Datei zum Staging-Bereich hinzu.

git commit -m "Nachricht"   - Speichert die gestagten Änderungen lokal mit einer Beschreibungsnachricht.

-- BRANCHES (ZWEIGE) --

git branch                  - Listet alle lokalen Branches auf. Der aktuelle Branch ist markiert.

git switch <branchname>     - Wechselt zu einem anderen, bereits existierenden Branch.

git switch -c <branchname>  - Erstellt einen neuen Branch und wechselt sofort dorthin.

git merge <branchname>      - Führt den angegebenen Branch in den Branch zusammen, in dem man sich gerade befindet.



-- REMOTE / SYNCHRONISATION --

git fetch                   - Lädt Informationen über neue Commits vom Server, ändert aber die lokalen Dateien noch nicht.

git pull                    - Lädt die neuesten Änderungen vom Server herunter und integriert sie direkt.

git push                    - Lädt die eigenen, lokalen Commits auf den Server hoch.

git push -u origin <branch> - Lädt einen neu erstellten Branch zum ersten Mal auf den Server hoch.



-- HILFREICHE WERKZEUGE --

git log                     - Zeigt die Historie der bisherigen Commits an (beenden mit Taste 'q').

git stash                   - Speichert aktuelle, noch nicht fertige Änderungen temporär ab, um den Arbeitsbaum sauber zu machen (z.B. für einen schnellen Branch-Wechsel).

git stash pop               - Holt die zuletzt mit 'stash' zwischengespeicherten Änderungen wieder zurück in den Arbeitsbaum.

git reset --soft HEAD~1     - Macht den allerletzten Commit rückgängig, behält aber die Änderungen in den Dateien.
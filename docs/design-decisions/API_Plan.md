# Aufbau unserer API
Hier ist eine Übersicht was für APIs unser Projekt enthalten wird. Es wurde aufgeteilt nach jeweiligen Ressourcen, die wir benötigen.

Entscheidung für das Design: Die Idee ist es nicht alle Routen einfach in die Hauptanwendung(app.py) zu schreiben. Das würde den Code schwierig zu warten machen des weiteren wird die zusammenarbeit in git schwer je größer die einzelne Anwendung umso mehr merge Konflikte können entsehen. Meine Idee war es die api´s sauber nach jeweilgien benötigten Ressourcen zu trennen und dafür jeweils dann eigene Bereiche mit Funktionen einzuführen.

## Endpunkte

 ### Profil
 - get (Profildaten laden aus der Datenbank wie beispielsweise User 1 mit Namen, Skills etc.)
 - post (Neues Profil anlegen oder aktualisieren)
 - delete (Profil löschen)

 ### Projekte
 - get (Liste aller Projekte abrufen)
 - post (Ein Projekt erstellen)
 - delete (Ein Projekt löschen)
 ### Chat 
 - get (Nachrichtenverlauf laden)
 - post (Nachricht senden)
 - delete(Nachricht löschen sollten wir das implementieren)
 ### Athenticator
- post  (Neuen Nutzer registrieren)
- post  (Einloggen und Token generieren)

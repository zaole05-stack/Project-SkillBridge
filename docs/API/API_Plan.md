# Aufbau unserer API
Hier ist eine Übersicht was für APIs unser Projekt enthalten wird. Es wurde aufgeteilt nach jeweiligen Ressourcen, die wir benötigen.

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

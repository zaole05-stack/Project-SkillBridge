import click                        # für eigene CLI-Befehle (z. B. flask init-db)
import csv                          # für den location import aus der CSV Datei 
import os                           # für plattformunabhängige Dateipfade und Umgebungsvariablen
import sqlite3
from flask import current_app, g    # current_app: Zugriff auf aktuell laufende Flask-Anwendung | g: Temporärer Speicher pro Web-Request


def get_db_con(pragma_foreign_keys = True):
    # Mehrfachöffnungen vermeiden
    if 'db_con' not in g:
        g.db_con = sqlite3.connect(
            current_app.config['DATABASE'], # Pfad zur Datenbank lesen aus app.py
            detect_types=sqlite3.PARSE_DECLTYPES
        )
        # Zeilen als Row-Objekte zurückgeben, damit man per Spaltenname zugreifen kann bpsw. user['email'] statt user[1]
        g.db_con.row_factory = sqlite3.Row
        
        # Überprüfung Fremdschlüsselbeziehungen (wichtig für ON DELETE CASCADE)
        if pragma_foreign_keys:
            g.db_con.execute('PRAGMA foreign_keys = ON;')
            
    return g.db_con


def close_db_con(e=None):
    db_con = g.pop('db_con', None)
    
    if db_con is not None:
        db_con.close()


def import_locations(db_con):
    
    csv_path = os.path.join(current_app.root_path, 'Liste-Staedte-in-Deutschland (1).csv')
    
    with open(csv_path, encoding='utf-8-sig', newline='') as file:
        reader = csv.DictReader(file, delimiter=';')
        
        for row in reader:
            db_con.execute(
                """
                INSERT OR IGNORE INTO location
                    (ags, stadt, plz, bundesland, landkreis)
                VALUES (?, ?, ?, ?, ?)
                """,
                (
                    row['Schlüsselnummer'].strip(),
                    row['Stadt'].strip(),
                    row['PLZ'].strip(),
                    row['Bundesland'].strip(),
                    row['Landkreis'].strip()
                )
            )
            
    db_con.commit()


@click.command('init-db')
def init_db():
    # instance-Ordner erstellen (falls noch nicht existiert), da hier die SQLite-Datei liegt
    try:
        os.makedirs(current_app.instance_path)
    except OSError:
        pass
    
    db_con = get_db_con()
    
    with current_app.open_resource('sql/drop_tables.sql') as f:
        db_con.executescript(f.read().decode('utf8'))
        
    with current_app.open_resource('sql/create_tables.sql') as f:
        db_con.executescript(f.read().decode('utf8'))
        
    with current_app.open_resource('sql/insert_sample.sql') as f:
        db_con.executescript(f.read().decode('utf8'))

    import_locations(db_con)
        
    # Erfolgsmeldung im Terminal ausgeben
    click.echo('Database has been initialized and filled with sample data.')
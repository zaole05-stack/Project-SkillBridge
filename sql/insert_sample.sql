-- ACHTUNG: Beim erneuten Ausführen entstehen PK-/UNIQUE-Konflikte.
-- Alle Nutzer sind fiktiv. Testpasswort: Demo123!
-- Passwort-Hashes: PBKDF2-SHA256, kompatibel zu werkzeug.security.check_password_hash.
-- CV-/Bildpfade sind nur Platzhalter; die Dateien selbst werden nicht angelegt.

PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- 1. User: vier Freelancer und drei Unternehmen
INSERT INTO user (id, email, password_hash, role) VALUES
    (1, 'anna.weber@example.com', 'pbkdf2:sha256:1000000$873f03f98e5b$3bbe8a6861050cae5f022f14fd75cb3a19e7d6f19e432b961790fb1121f782e3', 'freelancer'),
    (2, 'jonas.richter@example.com', 'pbkdf2:sha256:1000000$fa518e33768d$4a20da7502a30118196f6ef90ad37acb63cec660fec2ca367ae87e5f31d8917e', 'freelancer'),
    (3, 'sofia.neumann@example.com', 'pbkdf2:sha256:1000000$1492f51a8240$0b7d5ff7665cc536f0d85f5a54d4da70489918d940b38487ae9b5cc7caebcd78', 'freelancer'),
    (4, 'emir.yilmaz@example.com', 'pbkdf2:sha256:1000000$b7c80ffb674b$0e42ed5913827027863ca4c1da706eb717d070f1808e287fdc2b77e69af4aae4', 'freelancer'),
    (5, 'kontakt@technova.example', 'pbkdf2:sha256:1000000$6f4fa795e7b2$0af086b91ebcbd73a15a769350246ff6a4a9ada4b4a8aca3b35255310d06dff1', 'company'),
    (6, 'jobs@nordlicht-digital.example', 'pbkdf2:sha256:1000000$69797eb05c22$a78d176b93b2f3e06ff820507290550d9d24307fe91fe3b9c91608db60a851d8', 'company'),
    (7, 'team@greengrid.example', 'pbkdf2:sha256:1000000$980348568b39$b646d8418bf5fd891dfc0062a71c27177d74d5b2fded729cda110df9b5743e2c', 'company');

-- 2. Freelancer-Profile
INSERT INTO freelancer
    (id, display_name, profile_image, job_title, description, city, country,
     availability, weekly_capacity, hourly_rate_cents)
VALUES
    (1, 'Anna Weber', 'uploads/profile_images/anna_weber.jpg', 'Full-Stack-Entwicklerin',
     'Entwickelt moderne Webanwendungen mit Python und Flask.', 'Berlin', 'Deutschland', 'available', 30, 7500),
    (2, 'Jonas Richter', 'uploads/profile_images/jonas_richter.jpg', 'Frontend-Entwickler',
     'Spezialisiert auf React und responsive Benutzeroberflaechen.', 'Hamburg', 'Deutschland', 'limited', 15, 6800),
    (3, 'Sofia Neumann', NULL, 'UX/UI-Designerin',
     'Konzipiert nutzerfreundliche digitale Produkte.', 'Muenchen', 'Deutschland', 'available', 35, 6200),
    (4, 'Emir Yilmaz', 'uploads/profile_images/emir_yilmaz.jpg', 'Data Analyst',
     'Erstellt datengetriebene Dashboards und Analysen.', 'Koeln', 'Deutschland', 'unavailable', 0, 8500);

-- 3. Unternehmensprofile
INSERT INTO company (id, company_name, industry, description, website, city, country, logo)
VALUES
    (5, 'TechNova GmbH', 'Softwareentwicklung', 'Entwicklung von Webplattformen und digitalen Services.',
     'https://technova.example', 'Berlin', 'Deutschland', 'uploads/company_logos/technova.png'),
    (6, 'Nordlicht Digital GmbH', 'E-Commerce', 'Digitale Produkte und Online-Shops.',
     'https://nordlicht-digital.example', 'Hamburg', 'Deutschland', NULL),
    (7, 'GreenGrid Solutions', 'Energietechnologie', 'Digitale Loesungen fuer nachhaltige Energie.',
     'https://greengrid.example', 'Muenchen', 'Deutschland', 'uploads/company_logos/greengrid.png');

-- 4. Skill-Kategorien
INSERT INTO skill_group (id, name) VALUES
    (1, 'Programmierung'),
    (2, 'Design'),
    (3, 'Datenanalyse'),
    (4, 'Projektmanagement');

-- 5. Einzelne Skills
INSERT INTO skill (id, name, group_id) VALUES
    (1, 'Python', 1),
    (2, 'Flask', 1),
    (3, 'JavaScript', 1),
    (4, 'React', 1),
    (5, 'Figma', 2),
    (6, 'UX Research', 2),
    (7, 'SQL', 3),
    (8, 'Tableau', 3),
    (9, 'Machine Learning', 3),
    (10, 'Agiles Projektmanagement', 4),
    (11, 'HTML/CSS', 1),
    (12, 'REST-API-Entwicklung', 1);

-- 6. Freelancer-Skills (m:n)
INSERT INTO freelancer_skill (freelancer_id, skill_id, experience_level) VALUES
    (1, 1, 'expert'), (1, 2, 'expert'), (1, 7, 'intermediate'), (1, 3, 'intermediate'),
    (2, 3, 'expert'), (2, 4, 'expert'), (2, 11, 'expert'), (2, 5, 'intermediate'),
    (3, 5, 'expert'), (3, 6, 'expert'), (3, 11, 'intermediate'),
    (4, 1, 'expert'), (4, 7, 'expert'), (4, 8, 'expert'), (4, 9, 'intermediate');

-- 7. Projekte der Unternehmen; Budget und Stundensaetze in CENT
INSERT INTO project
    (id, company_id, title, description, start_date, end_date, status,
     full_remote, city, country, compensation_type, budget_min_cents, budget_max_cents)
VALUES
    (1, 5, 'Kundenportal mit Flask entwickeln',
     'Login, Kundenprofile und ein REST-Backend fuer ein neues Kundenportal.',
     '2026-12-01', '2027-03-31', 'open', 1, NULL, 'Deutschland', 'hourly', 6000, 9000),
    (2, 6, 'UX-Redesign eines Online-Shops',
     'User Research, Wireframes und neue UI-Komponenten erstellen.',
     '2026-12-15', '2027-02-28', 'open', 0, 'Hamburg', 'Deutschland', 'fixed', 350000, 550000),
    (3, 7, 'Dashboard fuer Energieverbrauch',
     'Interaktives Dashboard zur Visualisierung von Energiedaten aufbauen.',
     '2026-10-01', '2026-12-31', 'in_progress', 1, NULL, 'Deutschland', 'fixed', 600000, 900000),
    (4, 5, 'Interne Reporting-Prozesse automatisieren',
     'Wiederkehrende Datenimporte und Reportings automatisieren.',
     '2026-07-01', '2026-09-30', 'closed', 0, 'Berlin', 'Deutschland', 'hourly', 7000, 11000);

-- 8. Skills, die bei den Projekten gesucht werden
INSERT INTO project_skill (project_id, skill_id, is_required) VALUES
    (1, 1, 1), (1, 2, 1), (1, 7, 1), (1, 3, 0),
    (2, 5, 1), (2, 6, 1), (2, 4, 0),
    (3, 1, 1), (3, 7, 1), (3, 8, 0),
    (4, 1, 1), (4, 7, 1), (4, 10, 0);

-- 9. Bewerbungen: verschiedene Statuswerte
INSERT INTO application (id, freelancer_id, project_id, cover_letter, cv_file, status) VALUES
    (1, 1, 1, 'Ich habe mehrjaehrige Erfahrung mit Python und Flask.', 'uploads/cv/anna_weber_2026.pdf', 'pending'),
    (2, 2, 1, 'Ich uebernehme gern die Entwicklung der Benutzeroberflaeche.', 'uploads/cv/jonas_richter_2026.pdf', 'accepted'),
    (3, 3, 2, 'Ich moechte mein UX-Know-how in Ihr Projekt einbringen.', 'uploads/cv/sofia_neumann_2026.pdf', 'pending'),
    (4, 4, 3, 'Meine Erfahrung in SQL und Tableau passt zu Ihrem Dashboard.', 'uploads/cv/emir_yilmaz_2026.pdf', 'accepted'),
    (5, 1, 4, 'Ich kann die Reporting-Automatisierung uebernehmen.', 'uploads/cv/anna_weber_2026.pdf', 'rejected'),
    (6, 2, 2, 'Ich helfe beim React-Frontend.', 'uploads/cv/jonas_richter_2026.pdf', 'withdrawn');

-- 10. Chats (auch ohne konkrete Projektzuordnung moeglich)
INSERT INTO conversation (id, company_id, freelancer_id, project_id) VALUES
    (1, 5, 1, 1),
    (2, 5, 2, 1),
    (3, 6, 3, 2),
    (4, 7, 4, 3),
    (5, 6, 1, NULL);

-- 11. Nachrichten: sender_id referenziert user.id
INSERT INTO message (id, conversation_id, sender_id, body) VALUES
    (1, 1, 5, 'Hallo Anna, haetten Sie Zeit fuer ein kurzes Kennenlernen?'),
    (2, 1, 1, 'Gerne! Morgen ab 14 Uhr passt es mir gut.'),
    (3, 2, 2, 'Hallo, ich interessiere mich fuer das Kundenportal-Projekt.'),
    (4, 2, 5, 'Vielen Dank! Wir melden uns mit weiteren Details.'),
    (5, 3, 6, 'Hallo Sofia, koennen Sie uns erste Referenzen schicken?'),
    (6, 3, 3, 'Ja, sehr gerne. Ich sende Ihnen mein Portfolio.'),
    (7, 4, 7, 'Willkommen im Projekt, Emir!'),
    (8, 4, 4, 'Vielen Dank, ich freue mich auf die Zusammenarbeit.'),
    (9, 5, 1, 'Hallo, bieten Sie auch Projekte fuer Flask-Entwickler an?'),
    (10, 5, 6, 'Ja, wir planen gerade ein entsprechendes Projekt.');

-- 12. Berufserfahrungen
INSERT INTO work_experience
    (id, freelancer_id, job_title, company_name, description, start_date, end_date)
VALUES
    (1, 1, 'Python-Entwicklerin', 'WebWerk Berlin', 'Backend- und API-Entwicklung.', '2022-04-01', '2025-12-31'),
    (2, 1, 'Werkstudentin Softwareentwicklung', 'Digitalwerk', 'Interne Tools entwickelt.', '2020-06-01', '2022-03-31'),
    (3, 2, 'Frontend Developer', 'PixelFactory', 'React-basierte Webanwendungen.', '2021-01-01', NULL),
    (4, 3, 'UX Designerin', 'Studio Nord', 'Research und Prototyping.', '2023-02-01', NULL),
    (5, 4, 'Data Analyst', 'DataWorks', 'BI-Reports und Datenmodelle.', '2020-09-01', '2025-08-31');

-- 13. Ausbildungen
INSERT INTO education
    (id, freelancer_id, institution, degree, field_of_study, start_date, end_date)
VALUES
    (1, 1, 'Hochschule fuer Wirtschaft und Recht Berlin', 'Bachelor of Science', 'Wirtschaftsinformatik', '2018-10-01', '2022-03-31'),
    (2, 2, 'HAW Hamburg', 'Bachelor of Science', 'Informatik', '2017-10-01', '2021-09-30'),
    (3, 3, 'Hochschule Muenchen', 'Bachelor of Arts', 'Kommunikationsdesign', '2018-10-01', '2022-09-30'),
    (4, 4, 'Universitaet zu Koeln', 'Master of Science', 'Data Science', '2018-10-01', '2020-09-30');

COMMIT;

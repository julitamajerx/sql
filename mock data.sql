insert into kierunki (nazwa, wydzial) values
(N'Informatyka',  N'Wydział Matematyki i Informatyki'),
(N'Matematyka',   N'Wydział Matematyki i Informatyki'),
(N'Ekonomia',     N'Wydział Nauk Ekonomicznych'),
(N'Psychologia',  N'Wydział Psychologii');

insert into prowadzacy (imie, nazwisko, tytul, pensja, data_zatrudnienia, id_przelozonego) values
(N'Andrzej',    N'Kowalski',     N'prof. dr hab.', 12500.00, '1998-10-01', NULL),
(N'Ewa',        N'Nowak',        N'dr hab.',        9800.00, '2005-02-15', 1),
(N'Piotr',      N'Wiśniewski',   N'dr',             7200.00, '2012-10-01', 1),
(N'Katarzyna',  N'Wójcik',       N'dr',             7500.00, '2010-03-01', 2),
(N'Tomasz',     N'Kamiński',     N'mgr',            5200.00, '2019-10-01', 3),
(N'Magdalena',  N'Lewandowska',  N'dr hab.',       10200.00, '2003-09-01', NULL),
(N'Jan',        N'Zieliński',    N'mgr',            NULL,    '2023-10-01', 6);

insert into przedmioty (nazwa, ects, id_prowadzacego) values
(N'Bazy danych',                  6, 3),
(N'Programowanie obiektowe',      6, 3),
(N'Algorytmy i struktury danych', 5, 2),
(N'Analiza matematyczna',         8, 1),
(N'Algebra liniowa',              6, 4),
(N'Mikroekonomia',                5, 6),
(N'Statystyka',                   4, 4),
(N'Sieci komputerowe',            4, 7),
(N'Etyka zawodowa',               2, NULL);

insert into studenci (imie, nazwisko, data_urodzenia, miasto, rok_studiow, id_kierunku) values
(N'Anna',      N'Kowalczyk',    '2003-04-12', N'Warszawa', 3, 1),
(N'Michał',    N'Zając',        '2004-08-23', N'Kraków',   2, 1),
(N'Julia',     N'Król',         '2005-01-30', N'Warszawa', 1, 1),
(N'Jakub',     N'Wieczorek',    '2002-11-05', N'Łódź',     4, 1),
(N'Zofia',     N'Jankowska',    '2003-06-17', N'Poznań',   3, 2),
(N'Kacper',    N'Mazur',        '2004-02-09', N'Warszawa', 2, 2),
(N'Maja',      N'Kwiatkowska',  '2005-09-14', N'Gdańsk',   1, 2),
(N'Filip',     N'Krawczyk',     '2003-12-01', N'Kraków',   3, 3),
(N'Natalia',   N'Piotrowska',   '2004-05-28', N'Wrocław',  2, 3),
(N'Bartosz',   N'Grabowski',    '2002-07-19', N'Warszawa', 4, 3),
(N'Oliwia',    N'Nowakowska',   '2005-03-03', N'Łódź',     1, 3),
(N'Szymon',    N'Pawłowski',    '2001-10-22', NULL,        5, 1),
(N'Wiktoria',  N'Michalska',    '2004-01-15', N'Poznań',   2, 1),
(N'Adam',      N'Kowalski',     '2005-07-07', N'Warszawa', 1, NULL),
(N'Lena',      N'Adamczyk',     '2003-03-25', N'Gdańsk',   3, 2);

insert into oceny (id_studenta, id_przedmiotu, ocena, data_wystawienia) values
(1, 1, 5.0, '2026-02-03'),
(1, 2, 4.5, '2026-02-05'),
(1, 3, 4.0, '2025-06-20'),
(1, 4, 3.5, '2025-02-10'),
(1, 8, 5.0, '2026-02-10'),

(2, 1, 3.0, '2026-02-03'),
(2, 2, 4.0, '2026-02-05'),
(2, 4, 2.0, '2025-02-10'),
(2, 4, 3.0, '2025-02-24'),

(3, 4, 4.0, '2026-02-10'),
(3, 2, 3.5, '2026-02-05'),

(4, 1, 4.5, '2025-02-04'),
(4, 3, 5.0, '2024-06-18'),
(4, 8, 4.0, '2025-02-11'),
(4, 2, 5.0, '2025-02-06'),

(5, 4, 5.0, '2024-02-12'),
(5, 5, 4.5, '2024-06-19'),
(5, 7, 4.0, '2025-06-17'),
(5, 3, 3.0, '2025-06-20'),

(6, 4, 3.0, '2025-02-10'),
(6, 5, 2.0, '2025-06-19'),
(6, 5, 3.5, '2025-09-05'),

(7, 4, 4.0, '2026-02-10'),

(8, 6, 4.0, '2025-02-07'),
(8, 7, 3.5, '2025-06-17'),
(8, 4, 3.0, '2024-02-12'),

(9, 6, 5.0, '2026-02-07'),
(9, 7, 4.5, '2026-02-12'),

(10, 6, 3.0, '2024-02-07'),
(10, 7, 2.0, '2024-06-17'),
(10, 7, 3.0, '2024-09-03'),
(10, 4, 3.5, '2023-02-13'),

(11, 6, 4.0, '2026-02-07'),

(12, 1, 4.0, '2024-02-05'),
(12, 2, 4.0, '2024-02-07'),
(12, 3, 4.5, '2023-06-20'),
(12, 9, 5.0, '2025-06-10'),

(13, 1, 3.5, '2026-02-03'),
(13, 2, 2.0, '2026-02-05'),

(14, 8, 4.0, '2026-02-10');
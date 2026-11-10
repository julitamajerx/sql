--create database uczelnia;
--use uczelnia;

create table kierunki (
	id_kierunku int identity(1,1) primary key,
	nazwa nvarchar(100)not null,
	wydzial nvarchar(100)
);

create table studenci (
	id_studenta int identity(1,1) primary key,
	imie nvarchar(100) not null,
	nazwisko nvarchar(100) not null,
	data_urodzenia date,
	miasto nvarchar(100),
	rok_studiow int check (rok_studiow between 1 and 5),
	id_kierunku int references kierunki(id_kierunku)
);

create table prowadzacy (
	id_prowadzacego int identity(1,1) primary key,
	imie nvarchar(100)not null,
	nazwisko nvarchar(100)not null,
	tytul nvarchar(30),
	pensja decimal(8,2) check (pensja >0),
	data_zatrudnienia date,
	id_przelozonego int references prowadzacy(id_prowadzacego)
);

create table przedmioty (
	id_przedmiotu int identity(1,1) primary key,
	nazwa nvarchar(100) not null,
	ects int check (ects > 0),
	id_prowadzacego int references prowadzacy(id_prowadzacego)
);

create table oceny (
	id_oceny int identity(1,1) primary key,
	id_studenta int references studenci(id_studenta) not null,
	id_przedmiotu int references przedmioty(id_przedmiotu) not null,
	ocena decimal(2,1) not null check (ocena between 2 and 5),
	data_wystawienia date
);
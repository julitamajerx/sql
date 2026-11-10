--select * from przedmioty;

-- select
select imie, nazwisko, miasto from studenci;
select imie, nazwisko, pensja * 12 as pensja_roczna from prowadzacy;

--distinct
select distinct miasto from studenci;
select distinct tytul from prowadzacy;

--order by
select imie, nazwisko from studenci order by nazwisko;
select * from studenci order by rok_studiow desc, nazwisko;

--top
select top 3 pensja, imie, nazwisko from prowadzacy order by pensja desc;
select top 1 imie, nazwisko, data_urodzenia from studenci order by data_urodzenia desc;

--where
select * from studenci where miasto = N'Warszawa';
select * from prowadzacy where pensja is null;

--and
select * from studenci where miasto = N'Warszawa' and rok_studiow = 1;
select * from prowadzacy where tytul = N'dr' and pensja > 7300.00;

--between
select * from przedmioty where ects between 4 and 6;
select * from studenci where data_urodzenia between '2004-01-01' and '2004-12-31';

--or
select * from studenci where miasto = N'Kraków' or miasto = N'Gdańsk';
select * from studenci where  (rok_studiow = 1 or rok_studiow = 2) and id_kierunku = 1;

--in
select * from prowadzacy where tytul in (N'dr', N'dr hab.');
select * from studenci where miasto not in (N'Warszawa', N'Łódź', N'Kraków');

--like
select * from studenci where nazwisko like 'K%';
select * from studenci where nazwisko like '_o%';

--max
select max(pensja) as najwyzsza_pensja from prowadzacy;
select max(data_wystawienia) as ostatnia_ocena from oceny;

--min
select min(ects) as najmniejsze_punkty from przedmioty;
select min(data_urodzenia) as najstarszy from studenci;

--sum
select sum(ects) as suma_ects from przedmioty;
select sum(pensja) as mies_wyd_prow from prowadzacy;

--avg
select avg(pensja) as sred_pensja_prow from prowadzacy;
select avg(ocena) as srednia_ocen from oceny where id_studenta = 1;

--round
select round(avg(pensja), 2) as sred_pensja_prow from prowadzacy;
select round(avg(ocena), 1) as srednia_ocen from oceny where id_studenta = 1;

--count
select count(*) as liczba_studentow from studenci;
select count(*) as liczba_studentow from studenci where miasto is not null;

--group by
select id_kierunku, count(*) as liczba_studentow from studenci group by id_kierunku;
select id_studenta, avg(ocena) as srednia from oceny group by id_studenta;

--having
select 
id_studenta, 
avg(ocena) as srednia 
from oceny 
group by id_studenta
having avg(ocena) > 4.0 
order by id_studenta;

select 
miasto,
count(*) as liczba_studentow 
from studenci
group by miasto
having count(*) > 1
order by miasto;

--inner join
select s.imie, s.nazwisko, k.nazwa from studenci as s
inner join kierunki as k
on s.id_kierunku = k.id_kierunku;

select p.imie, p.nazwisko, p2.nazwa from prowadzacy as p
inner join przedmioty as p2
on p.id_prowadzacego = p2.id_prowadzacego;

--right join
select s.imie, s.nazwisko, k.nazwa from studenci as s
right join kierunki as k
on s.id_kierunku = k.id_kierunku;

select p.imie, p.nazwisko, p2.nazwa from przedmioty as p2
right join prowadzacy as p
on p.id_prowadzacego = p2.id_prowadzacego;

-- left join
select s.imie, s.nazwisko, k.nazwa from studenci as s
left join kierunki as k
on s.id_kierunku = k.id_kierunku;

select s.imie, s.nazwisko, o.ocena from studenci as s
left join oceny as o
on o.id_studenta = s.id_studenta
where ocena is null;

--full join
select * from studenci as s
full join kierunki as k
on s.id_kierunku = k.id_kierunku;

select * from prowadzacy as p
full join przedmioty as p2
on p.id_prowadzacego = p2.id_prowadzacego;

--union
select imie, nazwisko from studenci
union
select imie, nazwisko from prowadzacy

select nazwisko from studenci
union all
select nazwisko from prowadzacy



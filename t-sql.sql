--zmienna
declare @miasto nvarchar(100);
set @miasto = N'Kraków';

select * from studenci where miasto = @miasto;

declare @srednia_pensja decimal(8, 2);
select @srednia_pensja = avg(pensja) from prowadzacy;

select * from prowadzacy where pensja > @srednia_pensja;
go

--if...else
declare @studenci_bez_kieruku int;
select @studenci_bez_kieruku = count(*) from studenci where id_kierunku is null;

if @studenci_bez_kieruku > 0
	begin 
		print N'Są studenci bez kierunku.';
	end
else
	begin
		print N'Wszyscy mają kierunek.';
	end
go

declare @id_studenta int;
set @id_studenta = 15;

declare @srednia_studenta decimal (2,1);
select @srednia_studenta = avg(ocena) from oceny where id_studenta = @id_studenta;

if @srednia_studenta <= 0
	begin 
		print N'Brak ocen';
	end
else if @srednia_studenta >= 4.0
	begin
		print N'Dobra średnia';
	end
else 
	begin
		print N'Przeciętna średnia';
	end
go

--while
declare @counter int;
set @counter = 10;

while @counter >= 1
begin 
	print @counter;
	set @counter = @counter - 1;
end
go

declare @rok_studiow int;
set @rok_studiow = 1;

declare @ile int;

while @rok_studiow <=5
begin
	select @ile = count(*) from studenci where rok_studiow = @rok_studiow;
	print concat('Rok ', @rok_studiow, ': ', @ile, N' studentów');
	set @rok_studiow = @rok_studiow + 1;
end
go

--try...catch

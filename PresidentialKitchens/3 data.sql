use PresidentialKitchensDB
go 
delete Orders
go  

insert Orders(CustomerFirstName, CustomerMiddleName, CustomerLastName, QuoteDate, NumOfCabinets, CabinetType, KitchenSqFt, CostOfCounters, OrderDate, DeliveryDate, OrderStatus)
select 'Hillary', 'R', 'Clinton', '10/19/2021', 40, 'Discovery frost', 50, 2250, '10/26/2021', '10/26/2022', 'delivered' 
union select 'Mitt', null, 'Romney', '06/6/2021', 55, 'Nexus frost', 70, 3150, '06/12/2021', '06/12/2022', 'delivered' 
union select 'John', null, 'McCain', '08/22/2021', 43, 'Galaxy frost', 55, null, '08/29/2021', '08/29/2022', 'delivered' 
union select 'John', null, 'Kerry', '12/05/2021', 70, 'Discovery frost', 80, 3600, '12/11/2021', '12/11/2022', 'ordered' 
union select 'Al',  null, 'Gore', '06/24/2021', 30, 'Discovery frost', 42, null, null, null, 'quote' 
union select 'Bob', null, 'Dole', '07/15/2021', 20, 'Galaxy frost', 30, 1350, null, null, 'quote' 
union select 'Thomas', 'E', 'Dewey', '12/10/2021', 64, 'Nexus frost', 74, null, '12/17/2021', '12/17/2022', 'ordered' 
union select 'Ron', null, 'DeSantis', '09/07/2021', 95, 'Nexus frost', 105, 4725, '09/14/2021', '09/14/2022', 'delivered'
--AS For the QuoteDate it didn't work to minus 7 days because than some dates from the president data came out invalid. ie: A month that does not have 31 days and landed up with 31. 
--AS I had to switch the year of QuoteDate to 2020 because it was crashing on that OrderDate came out earlier than QuoteDate.
union select p.FirstName, null, p.LastName, datefromparts(2020, month(DateBorn), day(dateadd(day, -5, DateBorn))), Termstart - year(DateBorn), 
case when p.party = 'Democrat' then 'Galaxy frost' when p.party = 'Republican' then 'Nexus frost' else 'Discovery frost' end, 
case when p.TermEnd is not null then (p.TermEnd - year(DateBorn)) - p.Num else (year(getdate()) - year(DateBorn)) - p.Num end, null,
case when p.TermEnd is null or p.FirstName like '% %' then null else datefromparts(2021, month(p.DateBorn), day(p.DateBorn)) end,
case when p.TermEnd is null or p.FirstName like '% %' then null else datefromparts(2022, month(p.DateBorn), day(p.DateBorn)) end,
case when p.TermEnd is null or p.FirstName like '% %' then 'Quote' else 'Delivered' end
from RecordKeeperDB.dbo.president p

/*
--AS This info cannot be inserted since these columns are computed columns.
presidents with a 'J' in their last name only priced cabinets, with a 'W' got cabinets and installation everyone else got cabinets installation and installation.
*/

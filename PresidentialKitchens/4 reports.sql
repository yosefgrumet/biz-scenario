
--1) list which type of cabinets was the most popular every month in 2021, order by most popular and how many of each type were sold that month
select CountPerType = count(*), o.CabinetType, MonthOfYear = month(o.OrderDate)
from Orders o
where year(o.OrderDate) = 2021
group by o.CabinetType, month(o.OrderDate)
--2) what was the total monetary sum of each category of cabinets sold in 2021 
select CostPerType = sum(o.CostOfCabinets), o.CabinetType
from Orders o 
where year(o.OrderDate) = 2021
group by o.CabinetType
--3) how many square feet of kitchens did we price total?
select TotalKitchenSqFt = sum(o.KitchenSqFt)
from Orders o
--4) we get the counters for $30 and mark it up, how much did we make extra selling counters?
--AS I don't see a way to do this because I have no clue how many counters each person ordered. This could be done for cabinets.
select o.CostOfCounters
from Orders o
where o.CostOfCounters is not null

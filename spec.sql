/*
Hi, I run a Kitchen installation company called Presidential Kitchens.
We give quotes and then hope that the customer finds the price favorable and goes through with the order with us.
Sometimes they price it out with other companies and never get back to us and just leave it in our system as a quote.
We are going through our books from the fiscal year 2021 but due to all the quotes Our books are in total disaray, 
we need a system that will show us what got left as a quote and which customers
went through with the plan and if it was delivered yet or if its still a processing order and the total price for what they ordered.
We price out the cabinets, counters and installation and then add them all together to give a final price, 
but some clients only want cabinets with either counters or installation.
We are currently only using Fabuwood Cabinetry do to the fact that their website is the easiest to use.
we offer one of three cabinets to choose from, 
1) Discovery frost - $100 a cabinet
2) Galaxy frost - $125 a cabinet
3) Nexus frost - $150 a cabinet

For installation we charge $40 a square foot
and $45 a square foot for countertops.

Use the president table for sample data:

Technical Note: To select from a table in a database other than the one you are working in, prefix the source table with the database name and dbo like this:
--select * from RecordKeeperDB.dbo.president

If the president was a democrat they got Galaxy frost, republicans got Nexus frost everyone else got discovery frost.
the client needs the same amount of cabinets as their age when elected president.
the square footage of the job is the age of the president when they left office minus the number president that they were, if still in office use current age.
everyone requested a quote and recieved it a week before thier birthday in 2021. 
if the president didnt end their term or has a middle name, they didnt end up ordering with us and leftit as an open quote,
everyone else ordered and placed the order on their birthday in the year 2021 and had it delivered a year later.
presidents with a 'J' in their last name only priced cabinets, with a 'W' got cabinets and installation everyone else got cabinets installation and installation.

we need a list that will show: 
first name, middle name, last name, quote date, number of cabinets needed, cabinet type, cost for cabinets,
kitchen square footage, cost for counters, cost for installation, total cost, order date, delivery date, quote order or delivered

Q: Do you need times or just dates?
A:We don't need to record time. Just a date is enough

Q: Does anyone ever order just counters?
A: No, we really just do cabinets if need be we help and order counters but our primary job is cabinets

Q: Do you ever give discounts?
A: Yes for Rabbis, but i dont think we had any order kitchens in the year 2021

Q: does it ever take time to send back a quote?
A: no, we pride ourself that we send back the quote on the day it was sent in for pricing

Q: What should i put in if it wasnt delived yet?
A: enter the current date because it is always delivered that day, but leave it in the system as an order not as delivered

Reports:
1) list which type of cabinets was the most popular every month in 2021, order by most popular and how many of each type were sold that month
2) what was the total monetary sum of each category of cabinets sold in 2021 
3) how many square feet of kitchens did we price total?
4) we get the counters for $30 and mark it up, how much did we make extra selling counters?

Sample Data:

Donald, J, Trump, 10/27/2021, 58, Nexus frost, $7000, 60, $2000, $1860, $10860, 11/15/2021, 12/25/2021, delivered 

*/
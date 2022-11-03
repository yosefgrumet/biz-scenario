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

Q: Do you need times or just dates?
A:We don't need to record time. Just a date is enough

Q: Does anyone ever order just counters?
A: No, we really just do cabinets if need be we help and order counters but our primary job is cabinets

                                                   
Q: What should i put in if it wasnt delived yet?
A: enter the current date because it is always delivered that day, but leave it in the system as an order not as delivered

Reports:
1) list which type of cabinets was the most popular every month in 2021, order by most popular and how many of each type were sold that month
2) what was the total monetary sum of each category of cabinets sold in 2021 
3) how many square feet of kitchens did we price total?
4) we get the counters for $30 and mark it up, how much did we make extra selling counters?

we need a list that will show: 
first name, middle name, last name, quote date, number of cabinets needed, cabinet type, cost for cabinets,
kitchen square footage, cost for counters, cost for installation, total cost, order date, delivery date, quote order or delivered

Sample Data:

Hillary, R, Clinton, 10/19/2021, 40, Discovery frost, $4000, 50, $2250, $2000, $8250, 10/26/2021, 10/26/2022, delivered 
Mitt, null, Romney, 06/6/2021, 55, Nexus frost, $8250, 70, $3150, $2800, $14200, 06/12/2021, 06/12/2022, delivered 
John, null, McCain, 08/22/2021, 43, Galaxy frost, $5375, 55, null, $2200, $55, 08/29/2021, 08/29/2022, delivered 
John, null, Kerry, 12/05/2021, 70, Discovery frost, $7000, 80, $3600, $3200, $13800, 12/11/2021, 12/11/2022, ordered 
Al,  null, Gore, 06/24/2021, 30, Discovery frost, $3000, 42, null, null, $3000, null, null, quote 
Bob, null, Dole, 07/15/2021, 20, Galaxy frost, $2500, 30, $1350, $1200, $5050, null, null, quote 
Thomas, E, Dewey, 12/10/2021, 64, Nexus frost, $9600, 74, null, $2960, $12560, 12/17/2021, 12/17/2022, ordered 
Ron, null, DeSantis, 09/07/2021, 95, Nexus frost, $14250, 105, $4725, $4200, $23175, 09/14/2021, 09/14/2022, delivered 

adding additional data from the president table will be extra credit:

Technical Note: To select from a table in a database other than the one you are working in, prefix the source table with the database name and dbo like this:
--select * from RecordKeeperDB.dbo.president

If the president was a democrat they got Galaxy frost, republicans got Nexus frost everyone else got discovery frost.
the client needs the same amount of cabinets as their age when elected president.
the square footage of the job is the age of the president when they left office minus the number president that they were, if still in office use current age.
everyone requested a quote and recieved it a week before thier birthday in 2021. 
if the president didnt end their term or has a middle name, they didnt end up ordering with us and leftit as an open quote,
everyone else ordered and placed the order on their birthday in the year 2021 and had it delivered a year later.
presidents with a 'J' in their last name only priced cabinets, with a 'W' got cabinets and installation everyone else got cabinets installation and installation.


*/
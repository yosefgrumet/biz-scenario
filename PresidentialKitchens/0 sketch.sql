/*
Orders
	CustomerFirstName varchar(25) not null not blank
	CustomerMiddleName varchar(25) null not blank
	CustomerLastName varchar(25) not null not blank
	QuoteDate date not null <= getdate
	NumOfCabinets int not null 
	CabinetType varchar(14) not null must be one of 3 options
	CostOfCabinets computed
	KitchenSqFt int not null greater than zero
	CostOfCounters decimal(8,2) 
	CostOfInstallation computed
	TotalCost computed
	OrderDate date  <= getdate
	DeliveryDate date
	OrderStatus varchar(9) not null must be ordered or delivered or quote
	constraint DeliveryDate >= OrderDate >= QuoteDate
*/
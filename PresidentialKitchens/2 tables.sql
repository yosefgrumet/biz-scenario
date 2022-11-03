use PresidentialKitchensDB
go
drop table if exists Orders
go 

create table dbo.Orders(
    OrdersId int not null identity primary key,
    CustomerFirstName varchar(25) not null constraint ck_Orders_CustomerFirstName_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerMiddleName varchar(25) constraint ck_Orders_CustomerMiddleName_cannot_be_blank check(CustomerMiddleName <> ''),
    CustomerLastName varchar(25) not null constraint ck_Orders_CustomerLastName_cannot_be_blank check(CustomerLastName <> ''),
    QuoteDate date not null constraint ck_Orders_QuoteDate_must_be_less_than_or_equal_to_the_current_date check(QuoteDate <= getdate()),
    NumOfCabinets int not null constraint ck_Orders_NumOfCabinets_must_be_greater_than_zero check(NumOfCabinets > 0),
    CabinetType varchar(15) not null constraint ck_Orders_CabinetType_must_be_either_DiscoveryFrost_GalaxyFrost_or_NexusFrost check(CabinetType in('Discovery frost', 'Galaxy frost', 'Nexus frost')),
--AS For the CostOfCabinets and CostOfInstallation you gave info that seemed that these columns should be computed. Then you gave data to insert and it didn't match up with this.
--AS If it is computed columns it doesn't need to be inserted as data. 
    CostOfCabinets as case when CabinetType = 'Discovery frost' then 100 * NumOfCabinets when CabinetType = 'Galaxy frost' then 125 * NumOfCabinets else 150 * NumOfCabinets end persisted,
    KitchenSqFt int not null constraint ck_Orders_KitchenSqFt_must_be_greater_than_zero check(KitchenSqFt > 0),
    CostOfCounters decimal(8,2) constraint ck_Orders_CostOfCounters_must_be_greater_than_zero check(CostOfCounters > 0),
    CostOfInstallation as case when CostOfCounters is not null then KitchenSqFt * 85 else KitchenSqFt * 40 end persisted,
--AS This column is not possible since you can't compute one column off another computed column. It can be done in reports.
    --TotalCost as CostOfCabinets + CostOfCounters + CostOfInstallation persisted,
    OrderDate date constraint ck_Orders_OrderDate_must_be_less_than_or_equal_to_the_current_date check(OrderDate <= getdate()),
    DeliveryDate date,
    OrderStatus varchar(9) not null constraint ck_Orders_OrderStatus_must_be_either_ordered_delivered_or_quote check(OrderStatus in('Ordered', 'Delivered', 'Quote')),
    constraint ck_Orders_DeliveryDate_is_after_or_on_OrderDate_and_OrderDate_is_after_or_on_QuoteDate check(DeliveryDate >= OrderDate and OrderDate >= QuoteDate),
)
go

DROP TABLE 

ALTER TABLE Item
add "Description" VARCHAR(100)

alter table Item
drop column "Description"

alter table ItemType
drop column "ItemTypeID"

alter table DetailSellTransaction
add "SellQuantity" INTEGER
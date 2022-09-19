--HAVING
--HAVING adalah WHERE versi agregat

SELECT* FROM item

SELECT ItemTypeID, [Quantity per ItemType] = SUM(Quantity)
FROM Item
GROUP BY ItemTypeID

SELECT ItemTypeID
FROM Item
GROUP BY ItemTypeID
HAVING SUM(Quantity) > 100
-- Tablodan istenilen sütunlarý getirir.
Select brand_name From production.brands; 

-- Tablodaki bütün sütunlarý getirir.
Select * From production.brands; 

-- Tablodaki adedi 1 olan kayýtlarý döndürür.
Select * From sales.order_items Where quantity = 1; 

-- Tablodaki adedi 1 olan kayýtlarý fiyat sutünuna göre sýralayarak getir.
Select * From sales.order_items Where quantity = 1 Order By list_price; 

-- Tablodaki adeti 1 olan sipariþlerin liste fiyatlarýný ve o liste fiyatýndan kaç adet var ise adet toplamlarýný grupla getir.
Select list_price, Count(*) From sales.order_items Where quantity = 1 Group By list_price Order By list_price;

-- Tablodaki adeti 1 olan sipariþlerin liste fiyatlarýný ve o liste fiyatýndan kaçar tane var ise 2'den büyük olmak þartý ile kayýtlarý getirir.
Select list_price, Count(*) From sales.order_items Where quantity = 1 Group By list_price Having Count(*) > 2 Order By Count(*);

-- Tablodaki list_price sütununu artan sýra ile getirir. 
Select list_price From sales.order_items Order By list_price Asc 

-- Tablodaki list_price sütununu azalan sýra ile getirir.
Select list_price From sales.order_items Order By list_price Desc 

-- Tablodaki þehir, ad, soyad sütunlarýný alýr ve ilk þehir daha sonra ad'a göre sýralar ve getirir.
SELECT city, first_name, last_name FROM sales.customers ORDER BY city, first_name;

-- Tablodaki þehir, ad, soyad sütunlarýný alýr ve seçim listesinde olmayan stated sütununa göre sýralar kaydý döndürür.
Select city, first_name, last_name From sales.customers Order By state;

-- Tablodaki ad sütununu adýnda geçen karakter sayýsý az olandan çok olana doðru kayýtlarý döndürür.
Select first_name From sales.customers Order By Len(first_name) Asc

-- Tablodaki ilk 3 kaydý geçerek sonraki 3 kaydý getir. 
Select * From sales.customers OFFSET Order By first_name OFFSET 3 ROWS Fetch Next 3 Rows Only;

-- Tablodaki baþtan 20 kaydýn adlarýný getirir.
Select Top 20 first_name From sales.customers;

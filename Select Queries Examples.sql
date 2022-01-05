-- Tablodan istenilen s�tunlar� getirir.
Select brand_name From production.brands; 

-- Tablodaki b�t�n s�tunlar� getirir.
Select * From production.brands; 

-- Tablodaki adedi 1 olan kay�tlar� d�nd�r�r.
Select * From sales.order_items Where quantity = 1; 

-- Tablodaki adedi 1 olan kay�tlar� fiyat sut�nuna g�re s�ralayarak getir.
Select * From sales.order_items Where quantity = 1 Order By list_price; 

-- Tablodaki adeti 1 olan sipari�lerin liste fiyatlar�n� ve o liste fiyat�ndan ka� adet var ise adet toplamlar�n� grupla getir.
Select list_price, Count(*) From sales.order_items Where quantity = 1 Group By list_price Order By list_price;

-- Tablodaki adeti 1 olan sipari�lerin liste fiyatlar�n� ve o liste fiyat�ndan ka�ar tane var ise 2'den b�y�k olmak �art� ile kay�tlar� getirir.
Select list_price, Count(*) From sales.order_items Where quantity = 1 Group By list_price Having Count(*) > 2 Order By Count(*);

-- Tablodaki list_price s�tununu artan s�ra ile getirir. 
Select list_price From sales.order_items Order By list_price Asc 

-- Tablodaki list_price s�tununu azalan s�ra ile getirir.
Select list_price From sales.order_items Order By list_price Desc 

-- Tablodaki �ehir, ad, soyad s�tunlar�n� al�r ve ilk �ehir daha sonra ad'a g�re s�ralar ve getirir.
SELECT city, first_name, last_name FROM sales.customers ORDER BY city, first_name;

-- Tablodaki �ehir, ad, soyad s�tunlar�n� al�r ve se�im listesinde olmayan stated s�tununa g�re s�ralar kayd� d�nd�r�r.
Select city, first_name, last_name From sales.customers Order By state;

-- Tablodaki ad s�tununu ad�nda ge�en karakter say�s� az olandan �ok olana do�ru kay�tlar� d�nd�r�r.
Select first_name From sales.customers Order By Len(first_name) Asc

-- Tablodaki ilk 3 kayd� ge�erek sonraki 3 kayd� getir. 
Select * From sales.customers OFFSET Order By first_name OFFSET 3 ROWS Fetch Next 3 Rows Only;

-- Tablodaki ba�tan 20 kayd�n adlar�n� getirir.
Select Top 20 first_name From sales.customers;

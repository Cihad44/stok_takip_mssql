
USE [stok_takip]
GO

SELECT [OID]
      --,[Lokasyon_ID]
	  ,l1.Lokasyon_Adý
      --,[Kullanýcý_ID]
	   ,u1.Ad +' '+ u1.Soyad as Personel_Adi
      --,[Ürün_ID]
	   ,p1.Ürün_Adý
	   ,p1.Ürün_Miktarý
	   	   ,o1.Ürün_Miktarý
      --,[Ürüntipi_ID]
	   ,pt1.Ürün_Tipi
      ,[Tarih]
      
      --,[OTID]
	   ,ot1.Operasyon_Tipleri
  FROM Operation as o1,Locations as l1,Users as u1,Product as p1,Product_Type as pt1,Operation_Type as ot1
  WHERE o1.Lokasyon_ID = l1.LID 
  AND o1.Kullanýcý_ID = u1.UID 
  AND o1.OTID = ot1.OPID 
  AND o1.Ürün_ID = p1.PID
  AND o1.Ürüntipi_ID = pt1.PTID 

  GO

  SELECT [OID]
      --,[Lokasyon_ID]
	  ,l1.Lokasyon_Adý
      --,[Kullanýcý_ID]
	   ,u1.Ad +' '+ u1.Soyad as Personel_Adi
      --,[Ürün_ID]
	   ,p1.Ürün_Adý
	   ,p1.Ürün_No
	   ,p1.Ürün_Miktarý
      --,[Ürüntipi_ID]
	   ,pt1.Ürün_Tipi
	   ,l1.Adet  
	    
  FROM Operation as o1,Locations as l1,Users as u1,Product as p1,Product_Type as pt1,Operation_Type as ot1
  WHERE   o1.Lokasyon_ID = l1.LID 
  AND o1.Kullanýcý_ID = u1.UID 
  AND o1.OTID = ot1.OPID 
  AND o1.Ürün_ID = p1.PID
  AND o1.Ürüntipi_ID = pt1.PTID 
  AND pt1.Ürün_Tipi='satýþta' 
  GO


select * from Product

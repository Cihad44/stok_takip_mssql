
USE [stok_takip]
GO

SELECT [OID]
      --,[Lokasyon_ID]
	  ,l1.Lokasyon_Ad�
      --,[Kullan�c�_ID]
	   ,u1.Ad +' '+ u1.Soyad as Personel_Adi
      --,[�r�n_ID]
	   ,p1.�r�n_Ad�
	   ,p1.�r�n_Miktar�
	   	   ,o1.�r�n_Miktar�
      --,[�r�ntipi_ID]
	   ,pt1.�r�n_Tipi
      ,[Tarih]
      
      --,[OTID]
	   ,ot1.Operasyon_Tipleri
  FROM Operation as o1,Locations as l1,Users as u1,Product as p1,Product_Type as pt1,Operation_Type as ot1
  WHERE o1.Lokasyon_ID = l1.LID 
  AND o1.Kullan�c�_ID = u1.UID 
  AND o1.OTID = ot1.OPID 
  AND o1.�r�n_ID = p1.PID
  AND o1.�r�ntipi_ID = pt1.PTID 

  GO

  SELECT [OID]
      --,[Lokasyon_ID]
	  ,l1.Lokasyon_Ad�
      --,[Kullan�c�_ID]
	   ,u1.Ad +' '+ u1.Soyad as Personel_Adi
      --,[�r�n_ID]
	   ,p1.�r�n_Ad�
	   ,p1.�r�n_No
	   ,p1.�r�n_Miktar�
      --,[�r�ntipi_ID]
	   ,pt1.�r�n_Tipi
	   ,l1.Adet  
	    
  FROM Operation as o1,Locations as l1,Users as u1,Product as p1,Product_Type as pt1,Operation_Type as ot1
  WHERE   o1.Lokasyon_ID = l1.LID 
  AND o1.Kullan�c�_ID = u1.UID 
  AND o1.OTID = ot1.OPID 
  AND o1.�r�n_ID = p1.PID
  AND o1.�r�ntipi_ID = pt1.PTID 
  AND pt1.�r�n_Tipi='sat��ta' 
  GO


select * from Product

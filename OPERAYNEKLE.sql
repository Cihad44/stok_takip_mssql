USE [stok_takip]
GO
/****** Object:  StoredProcedure [dbo].[SP]    Script Date: 31.07.2019 13:14:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP]
(

@Ürün_Adı nvarchar(50),
@Birim_Fİyat INT,
@Yaşam_Ömrü INT,
@Ürün_Miktarı INT,
@Ürün_No INT
)


WITH RECOMPILE

AS

 INSERT INTO dbo.Product VALUES (@Ürün_Adı,
@Birim_Fİyat,@Yaşam_Ömrü,@Ürün_Miktarı,@Ürün_No)







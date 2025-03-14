USE [stok_takip]
GO
/****** Object:  StoredProcedure [dbo].[SP_LocationOperation]    Script Date: 6.08.2019 15:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  PROCEDURE [dbo].[SP_LocationOperation]
(
	@UserID int,
	@LocationID int,
	@OperationTypeID int,
	@ProductTypeID int,
	@ProductID int,
	@ProductNo int,
	@Quantity int
)
AS
BEGIN
	Declare @producttypeadi int;
	Declare @auth int;
	declare @lotıd int;
	Declare @No int;
	Declare @Adi varchar(150);
	Declare @location_name nvarchar(10);
	Declare @latestId int;
	--Lokasyon Değişimi için auth yapılacak.
	SELECT @auth = Users.TPID from Users,Users_Type WHERE Users.TPID = Users_Type.TPID AND Users.UID = @UserID
	SELECT  @Adi =  Product.Ürün_Adı from Product WHERE  Product.PID = @ProductID	--productıdsi aynı olanın operasyontpe yazdırılcak
	if(@auth = 1)
	BEGIN

	INSERT INTO [dbo].[Product] ([Ürün_Adı],[Birim_Fİyat],[Yaşam_Ömrü],[Ürün_Miktarı],[Ürün_No])
	SELECT [Ürün_Adı],[Birim_Fİyat],[Yaşam_Ömrü],[Ürün_Miktarı],[Ürün_No] FROM [dbo].[Product] WHERE Product.PID = @ProductID 
	SELECT @latestId = SCOPE_IDENTITY()

	--operationa eklenen ürünü eklemmiz lazım--

		UPDATE Product SET  Ürün_Miktarı = @Quantity WHERE Product.PID = @latestId
		
		UPDATE Product SET  Ürün_Miktarı -= @Quantity WHERE Product.PID = @ProductID 
		
		SELECT 'lokasyon değişimi' AS 'BAŞARILI'; END
	
	
END
go

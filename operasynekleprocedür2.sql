use stok_takip
go
CREATE OR ALTER PROCEDURE SP_MaterialAccepting
(
@UserID int,
@LocationID int,
@OperationTypeID int,
@ProductTypeID int,
@ProductID int,
@ProductNo int,
@ProductQuantity int
)
AS
BEGIN
Declare @auth int;
Declare @No int;
DECLARE @NAME NVARCHAR(50);
DECLARE @UNITPRICE INT;
DECLARE @LIFETIME INT;
SELECT @No = Product.Ürün_No from Product WHERE Product.PID = @ProductID

SELECT @auth = Users.TPID from Users,Users_Type WHERE Users.TPID = Users_Type.TPID AND Users.UID = @UserID
IF(@ProductNo = @No)
BEGIN
if(@auth=4)
begin
select * from Operation,Locations,Users,Product
end
if(@auth=3)
begin
select * from Operation
end
IF(@auth = 1)
BEGIN
INSERT INTO Operation([Lokasyon_ID],[Kullanýcý_ID],[Ürün_ID],[Ürüntipi_ID],[Tarih],[Ürün_Miktarý],[OTID],[ürün_no]) 
VALUES(@LocationID,@UserID,@ProductID,@ProductTypeID,GETDATE(),@ProductQuantity,@OperationTypeID,@ProductNo)
SELECT @NAME = Product.Ürün_Adý FROM Product WHERE Product.Ürün_No = @No;
SELECT @UNITPRICE = Product.Birim_FÝyat FROM Product WHERE Product.Ürün_No = @No;
SELECT @LIFETIME = Product.Yaþam_Ömrü FROM Product WHERE Product.Ürün_No = @No;
INSERT INTO dbo.Product VALUES (@NAME,@UNITPRICE,@LIFETIME,@ProductQuantity,@No);

	UPDATE Product SET Ürün_Miktarý += @ProductQuantity WHERE Product.PID = @ProductID
	SELECT 'OPERASYON EKLENDÝ' AS 'BAÞARILI';


END
ELSE
BEGIN
	select 'Yetkiniz Yetmemektedir.' AS 'HATA';
END  
END





ELSE 
BEGIN
SELECT 'URUN NOSU BULUNMAMAKTADIR' AS 'HATA';
END

END

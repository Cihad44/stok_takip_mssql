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
SELECT @No = Product.�r�n_No from Product WHERE Product.PID = @ProductID

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
INSERT INTO Operation([Lokasyon_ID],[Kullan�c�_ID],[�r�n_ID],[�r�ntipi_ID],[Tarih],[�r�n_Miktar�],[OTID],[�r�n_no]) 
VALUES(@LocationID,@UserID,@ProductID,@ProductTypeID,GETDATE(),@ProductQuantity,@OperationTypeID,@ProductNo)
SELECT @NAME = Product.�r�n_Ad� FROM Product WHERE Product.�r�n_No = @No;
SELECT @UNITPRICE = Product.Birim_F�yat FROM Product WHERE Product.�r�n_No = @No;
SELECT @LIFETIME = Product.Ya�am_�mr� FROM Product WHERE Product.�r�n_No = @No;
INSERT INTO dbo.Product VALUES (@NAME,@UNITPRICE,@LIFETIME,@ProductQuantity,@No);

	UPDATE Product SET �r�n_Miktar� += @ProductQuantity WHERE Product.PID = @ProductID
	SELECT 'OPERASYON EKLEND�' AS 'BA�ARILI';


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

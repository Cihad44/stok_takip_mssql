
use stok_takip
go
CREATE PROC SP
(
@Ürün_Adý nvarchar,
@Birim_FÝyat INT,
@Yaþam_Ömrü INT,
@Ürün_Miktarý INT,
@Ürün_No INT
)

WITH RECOMPILE
AS
 INSERT INTO dbo.Product VALUES (@ürün_Adý,@birim_fiyat,@yaþam_ömrü,@ürün_miktarý,@ürün_no)












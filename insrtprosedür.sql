
use stok_takip
go
CREATE PROC SP
(
@�r�n_Ad� nvarchar,
@Birim_F�yat INT,
@Ya�am_�mr� INT,
@�r�n_Miktar� INT,
@�r�n_No INT
)

WITH RECOMPILE
AS
 INSERT INTO dbo.Product VALUES (@�r�n_Ad�,@birim_fiyat,@ya�am_�mr�,@�r�n_miktar�,@�r�n_no)












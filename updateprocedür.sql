
use stok_takip
go
alter PROC SP_update
(
@PID varchar,
@Ürün_Miktarý INT
)

WITH RECOMPILE
AS

 UPDATE Product
SET Ürün_Miktarý = @ürün_miktarý
WHERE PID=@PID;









use stok_takip
go
alter PROC SP_update
(
@PID varchar,
@�r�n_Miktar� INT
)

WITH RECOMPILE
AS

 UPDATE Product
SET �r�n_Miktar� = @�r�n_miktar�
WHERE PID=@PID;








USE [stok_takip]
GO
/****** Object:  StoredProcedure [dbo].[SP_update]    Script Date: 31.07.2019 10:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[SP_delete]
(
@PID int

)

WITH RECOMPILE
AS
DELETE FROM Product WHERE PID=@PID;











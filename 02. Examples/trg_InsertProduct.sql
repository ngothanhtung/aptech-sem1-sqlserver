
ALTER TRIGGER [dbo].[trg_InsertProduct]
ON [dbo].[Products]
FOR INSERT
AS

IF (SELECT Stock FROM INSERTED) > 9999
	BEGIN
		PRINT 'Stock cannot exceed 9999'
		ROLLBACK TRANSACTION
	END


CREATE FUNCTION [dbo].[uf_GetGenderText_VN]
(
	@Gender VARCHAR(20)	
)
RETURNS VARCHAR(20)
AS
BEGIN
	DECLARE @Result VARCHAR(20)
	IF @Gender = 'MAN' RETURN 'DAN ONG'
	RETURN 'DAN BA'
END
DECLARE @dt datetime = SysDateTime()
DECLARE @days datetime = '2026-05-05'


SELECT @dt AS DATA
SELECT Cast(@dt AS int) - Cast(@days AS int) AS DNI
--46275
--46275 - 2321
SELECT Cast(2345 AS datetime) AS RESULT

SELECT Convert(varchar, @dt) AS HERO
SELECT TRY_CONVERT(float, @dt) AS IDK
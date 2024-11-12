/*
Transformar linha (registro) em coluna (xml,json)
SELECT * FROM STD_PERSON
*/
SELECT
    CASE 
      WHEN COLUNA = 1 THEN
           'CODIGO'
      WHEN COLUNA = 2 THEN
           'NOME'
      WHEN COLUNA = 3 THEN
           'MAE'
      WHEN COLUNA = 4 THEN
           'PAI'
    END COLUNA
  , CASE 
      WHEN COLUNA = 1 THEN
           STD_ID_PERSON
      WHEN COLUNA = 2 THEN
           STD_N_FIRST_NAME
      WHEN COLUNA = 3 THEN
           CBR_NAME_MATHER
      WHEN COLUNA = 4 THEN
           CBR_NAME_FATHER
   END LINHA
FROM STD_PERSON
  ,(SELECT ROWNUM COLUNA
  FROM STD_COUNTRY
  WHERE ROWNUM <= 4
  )
WHERE 1=1
AND STD_ID_PERSON = 350533
/*
1	CODIGO	350533
2	NOME	FERNANDA 
3	MAE	JANETE 
4	PAI	FERNANDO 
*/

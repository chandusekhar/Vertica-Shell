\timing 

SELECT COUNT(P1.ASSET_ROW_ID)
	,P1.CPL_DT
	,P1.LAN_SPEED
FROM KPI.KPI_ASSET_IO_A P1
INNER JOIN DMN.CAG_COM_STD_PRD_LVL4 P2
	ON P1.STD_PRD_LVL4_ID = P2.STD_PRD_LVL4_ID
		AND P2.PRD_NAME = '宽带'
WHERE P1.CPL_DT >= DATE '2017-04-15'
	AND P1.CPL_DT <= DATE '2017-04-19'
	AND P1.LAN_SPEED = '102400Kbps'
	AND P1.IO_FLG = 'I'
GROUP BY P1.CPL_DT
	,P1.LAN_SPEED;


;WITH Ranked AS (
    SELECT 
        T.*,
        ROW_NUMBER() OVER (PARTITION BY T.GRNO, T.VDate, T.Party ORDER BY T.ID)   AS ChallanRowNo
    FROM tbl_FabricPOReport T
    WHERE 1=1
     AND DispatchDate BETWEEN '2026-01-01' AND '2026-01-31'   and Party='AAN CLOTHINGS LLP '    
     AND ISNUMERIC(T.PoRequiredMtr) > 0
     AND CAST(T.PoRequiredMtr AS DECIMAL(18,2)) > 0
)


SELECT  ID, GRNO, VDate, GreyWidth, Party,
    CASE WHEN ChallanRowNo = 1 THEN CAST(PoRequiredMtr AS DECIMAL(18,2)) ELSE 0 END AS PoRequiredMtr,
    CASE WHEN ChallanRowNo = 1 THEN CHALLAN_MTR ELSE 0 END AS CHALLAN_MTR,
    QulName,
    PONumber,
    glenth,
    ShedName,DispatchDate,DMTR,ChallanRowNo
FROM Ranked
ORDER BY VDate,GRNO,PONumber;

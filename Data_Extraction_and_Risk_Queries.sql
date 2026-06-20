-- ==========================================================================================
-- Phase 1: Operational Backlog Analysis (Member Services Request)
-- Purpose: Identify oldest pending transactions to prioritize operational workflow.
-- ==========================================================================================

-- 1. Detailed view of pending transactions prioritized by age
SELECT * 
FROM [dbo].[Simulated_Transactions]
WHERE Status = 'Pending'
ORDER BY days_since_request DESC;

------------------------------------------------------------------------------------------

-- 2. Aggregated view: Total monetary risk and transaction count by age and type
SELECT 
    days_since_request,
    transaction_type,
    SUM(amount) AS Total_Amount,
    COUNT(transaction_id) AS Total_Transactions
FROM [dbo].[Simulated_Transactions]
WHERE Status = 'Pending'
GROUP BY days_since_request, transaction_type
ORDER BY days_since_request DESC;


-- ==========================================================================================
-- Phase 2: CFO Executive Summary - Repurchase Efficiency & Revenue at Risk
-- Purpose: Quantify successful repurchases and calculate trapped cash due to failed operations.
-- ==========================================================================================

-- 3. Executive KPI metrics for Repurchase operations
SELECT 
    SUM(CASE WHEN Status = 'Success' THEN amount ELSE 0 END) AS Total_Successful_Repurchase,
    SUM(CASE WHEN Status = 'Failed' THEN amount ELSE 0 END) AS Trapped_Cash,
    AVG(CASE WHEN Status = 'Failed' THEN amount ELSE NULL END) AS Average_Failed_Transaction
FROM [dbo].[Simulated_Transactions]
WHERE transaction_type = 'Repurchase';

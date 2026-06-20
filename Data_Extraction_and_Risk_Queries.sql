SELECT * FROM [dbo].[Necati_Database]
where Status = 'Pending'
Order by days_since_request DESC
----------------------
SELECT 
    days_since_request, 
    transaction_type,
    SUM(amount) AS Total_Amount,
    COUNT(transaction_id) AS Total_Transactions
FROM [dbo].[Necati_Database]
WHERE Status = 'Pending'
GROUP BY days_since_request, transaction_type
ORDER BY days_since_request DESC

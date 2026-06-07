SELECT * FROM healthcare_fraud.healthcare_fraud_messy_3000;

SELECT COUNT(*) AS Total_Records
FROM healthcare_fraud.healthcare_fraud_messy_3000;

SELECT Fraud_Flag,
       COUNT(*) AS Total_Cases
FROM healthcare_fraud.healthcare_fraud_messy_3000
GROUP BY Fraud_Flag;

SELECT ROUND(AVG(Claim_Amount),2) AS Avg_Claim
FROM healthcare_fraud.healthcare_fraud_messy_3000;

SELECT Provider_Specialty,
       COUNT(*) AS Total_Claims
FROM healthcare_fraud.healthcare_fraud_messy_3000
GROUP BY Provider_Specialty
ORDER BY Total_Claims DESC;

SELECT State,
       SUM(Fraud_Flag) AS Fraud_Cases
FROM healthcare_fraud.healthcare_fraud_messy_3000
GROUP BY State
ORDER BY Fraud_Cases DESC;

SELECT YEAR(Service_Date) AS Claim_Year,
       MONTH(Service_Date) AS Claim_Month,
       COUNT(*) AS Total_Claims
FROM healthcare_fraud.healthcare_fraud_messy_3000
GROUP BY Claim_Year, Claim_Month
ORDER BY Claim_Year, Claim_Month;

SELECT Service_Date
FROM healthcare_fraud.healthcare_fraud_messy_3000
LIMIT 10;

SELECT
    Service_Date,
    STR_TO_DATE(Service_Date, '%m/%d/%Y') AS Converted_Date
FROM healthcare_fraud.healthcare_fraud_messy_3000
LIMIT 10;

SELECT
    YEAR(STR_TO_DATE(Service_Date, '%m/%d/%Y')) AS Claim_Year,
    MONTH(STR_TO_DATE(Service_Date, '%m/%d/%Y')) AS Claim_Month,
    COUNT(*) AS Total_Claims
FROM healthcare_fraud.healthcare_fraud_messy_3000
GROUP BY Claim_Year, Claim_Month
ORDER BY Claim_Year, Claim_Month;
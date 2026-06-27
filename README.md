
# Healthcare Fraud Detection Analysis

## 📊 Project Overview

**Dataset Size:** 4,000 Claims | 250 Providers | 2,518 Patients  
**Date Range:** January 2024 – September 2025  
**Total Claim Value:** $30.78 Million  
**Tools Used:** SQL, Excel, Tableau  
**Focus:** Identifying suspicious claim patterns and high-risk providers

This analysis identifies healthcare fraud indicators through claim behavior analysis, enabling data-driven intervention on high-risk providers and suspicious claim patterns.

---

## 💼 Business Problem

Healthcare fraud represents a significant financial and operational challenge:
- **Financial Impact:** Fraudulent claims drain resources from legitimate healthcare delivery
- **Provider Accountability:** Some providers exhibit abnormal billing patterns warranting investigation
- **System Integrity:** Undetected fraud erodes trust in healthcare systems
- **Cost Escalation:** Fraud drives up premiums and out-of-pocket costs for patients

**Organizations need systematic methods to identify high-risk claims before payment.**

---

## 🎯 Business Questions

### Key Investigation Areas

1. **Provider Risk Profiling**
   - Which providers submit claims with highest fraud indicators?
   - What percentage of a provider's claims are flagged as high-risk?
   - Which providers warrant immediate audit?

2. **Claim Pattern Analysis**
   - Are duplicate claims more likely to be fraudulent?
   - Do high-cost claims cluster with other suspicious indicators?
   - What claim characteristics correlate with fraud risk?

3. **Patient Behavior Patterns**
   - Do high-risk claims involve unusually frequent visits?
   - Are certain patient demographics more prevalent in fraud cases?
   - How do visit patterns differ by fraud risk level?

4. **Financial Impact**
   - What percentage of total claim dollars come from high-risk claims?
   - What is the financial exposure in each fraud risk category?
   - Which flags (duplicate, high-cost, weekend service) are strongest predictors?

---

## 🔑 Key Findings

### Finding 1: High-Risk Claims Represent Disproportionate Financial Exposure

**Observation:**
- High-risk claims: **602 claims (15.05% of total)**
- But represent: **$6.4M (20.8% of total claim value)**
- Average high-risk claim: **$10,638**
- Average low-risk claim: **$5,238**
- **High-risk claims are 103% more expensive** than low-risk claims

**Evidence:**
```
Fraud Risk       Count    % of Claims    Claim Value    Avg Amount
─────────────────────────────────────────────────────────────────
High              602        15.05%      $6.4M          $10,638
Medium           1,484        37.10%     $14.4M         $9,671
Low              1,914        47.85%     $10.0M         $5,238
```

**Implication:** A small subset of claims (15%) drives outsized financial risk. Preventing high-risk claims could save millions.

---

### Finding 2: Duplicate + High-Cost Flags = Certainty of Fraud Risk

**Observation:**
- 341 claims have BOTH high-cost AND duplicate flags
- **100% of these dual-flagged claims are marked as High-Risk**
- This combination is a definitive fraud indicator

**Evidence:**
- Claims with both flags: 341
- Marked as High-Risk: 341 (100.0%)
- Average claim amount: $10,900+ (higher than general high-risk average)

**Implication:** Dual-flag methodology is a reliable fraud detection mechanism. These claims should receive automatic manual review before payment.

---

### Finding 3: Duplicate Claims Are Predominantly High-Risk

**Observation:**
- Duplicate claims flagged: **1,029 (25.7% of all claims)**
- Of those duplicates:
  - **47.7% are High-Risk** (491 claims)
  - **52.3% are Medium-Risk** (538 claims)
  - Only 0% are Low-Risk

**Evidence:**
```
Among 1,029 Duplicate Claims:
- High-Risk:   491 (47.7%)
- Medium-Risk: 538 (52.3%)
```

**Implication:** Duplicate claims are never low-risk. Claims flagged as duplicates warrant investigation before payment authorization.

---

### Finding 4: Provider Risk Is Highly Concentrated

**Observation:**
Top 10 providers by high-risk claims:

| Provider | High-Risk Claims | Total Claims | Risk Rate | Avg Claim |
|----------|------------------|--------------|-----------|-----------|
| PR0090   | 7                | 16           | 43.8%     | $9,184    |
| PR0240   | 7                | 17           | 41.2%     | $9,303    |
| PR0059   | 7                | 19           | 36.8%     | $9,207    |
| PR0068   | 6                | 16           | 37.5%     | $9,175    |

**Evidence:** A small group of providers (4 providers) account for 27 of the 602 high-risk claims (4.5% of providers, ~4.5% of high-risk risk).

**Implication:** High-risk providers should be prioritized for:
- Detailed billing audits
- Claims pre-authorization requirements
- Compliance reviews

---

### Finding 5: High-Risk Patients Exhibit Elevated Visit Frequency

**Observation:**
- High-risk claims: **Avg 9.7 visits in 30-day window**
- Low-risk claims: **Avg 7.9 visits in 30-day window**
- **High-risk patients visit 23.2% more frequently**

**Implication:** Elevated visit frequency is a risk signal. This could indicate:
- Unnecessary/redundant services
- Service duplication across providers
- Potential collusion for billing purposes

---

## 💡 Business Recommendations

### Immediate Actions (0-30 days)

1. **Implement Automated Pre-Authorization for Dual-Flagged Claims**
   - Any claim with BOTH high-cost AND duplicate flags automatically routes to manual review
   - Expected impact: Prevent $3.7M+ in dual-flagged exposure
   - Success metric: 100% review rate before payment

2. **Audit Top 10 High-Risk Providers**
   - Prioritize PR0090, PR0240, PR0059, PR0068 (43%+ high-risk rates)
   - Conduct 100% claims review for 90 days
   - Expected impact: Identify patterns, establish compliance baselines

3. **Flag All Duplicate Claims for Manual Review**
   - Don't auto-pay any claim flagged as duplicate
   - 47.7% are high-risk; remainder warrant verification
   - Expected impact: Prevent $5.4M in duplicate exposure

### Strategic Initiatives (30-90 days)

4. **Develop Provider-Specific Risk Profiles**
   - Calculate each provider's high-risk percentage
   - Establish audit triggers based on volume and risk rate
   - Create tiered intervention strategies (yellow flag, red flag, suspension)

5. **Analyze High-Frequency Patient Visits**
   - Cross-reference patients with 10+ visits/month
   - Determine if services are medically necessary or duplicative
   - Investigate provider coordination for those patients

6. **Implement Real-Time Fraud Scoring**
   - Build composite risk score using:
     - High-cost flag (33.9% of claims)
     - Duplicate flag (25.7% of claims)
     - Weekend service patterns (50% of claims)
     - Provider historical risk rate
     - Patient visit frequency
   - Route high-scoring claims to review queue automatically

### Long-Term Strategy (90+ days)

7. **Establish Predictive Fraud Model**
   - Use high-risk claims as labeled training data
   - Build classification model to identify fraud before claims are paid
   - Expected impact: Proactive fraud prevention vs. reactive auditing

8. **Create Provider Accountability Program**
   - Publish provider-level fraud statistics quarterly
   - Implement performance-based contracting
   - Require corrective action plans for high-risk providers

9. **Develop Patient Education Initiative**
   - Alert patients to suspicious claims in their name
   - Provide mechanisms to dispute unauthorized services
   - Reduce collusion by increasing patient oversight

---

## 🎓 Skills Demonstrated

- ✅ **Data Cleaning & Transformation** — Excel, Power Query
- ✅ **SQL Query Writing** — Claims data extraction, aggregation, validation
- ✅ **Exploratory Data Analysis** — Identifying patterns and anomalies
- ✅ **Data Visualization** — Multi-sheet Tableau dashboard
- ✅ **Statistical Analysis** — Risk distribution, correlation analysis
- ✅ **Business Logic** — Fraud detection rule design (composite indicators)
- ✅ **Financial Analysis** — Claim value analysis, exposure quantification
- ✅ **Risk Assessment** — Provider profiling, claim categorization
- ✅ **Business Storytelling** — Presenting findings to stakeholders
- ✅ **Actionable Insights** — Translating analysis into operational recommendations

---

## 📈 Key Metrics & Definitions

| Metric | Definition | Significance |
|--------|-----------|--------------|
| **High-Cost Flag** | Claims above 75th percentile of claim amounts | Identifies expensive outliers |
| **Duplicate Flag** | Claims matching on Patient_ID, Provider_ID, Procedure within 30 days | Detects billing duplication |
| **Weekend Service Flag** | Services rendered Saturday/Sunday | Unusual for routine care; may indicate after-hours billing |
| **Fraud Risk Score** | Composite of flags, provider history, patient patterns | Determines priority for manual review |
| **Provider Risk Rate** | % of a provider's claims flagged as high-risk | Identifies problematic providers |

---

## 📊 Dashboard Overview

**Tableau Dashboard: Healthcare Fraud Detection Analysis**

The dashboard includes 5 interconnected sheets:
1. **Fraud Risk Distribution** — Overview of claim breakdown by risk level
2. **High Cost Claims** — Claims flagged for unusual expense amounts
3. **High Risk Provider** — Top providers by fraud risk flags
4. **Duplicate Claim** — Claims flagged as potential duplicates
5. **Average Claim Amount by Fraud Risk** — Financial impact analysis

---

## 📁 Project Files

| File | Purpose |
|------|---------|
| `Healthcare_Fraud_Dataset_4000.csv` | Raw claims dataset (4,000 rows, 14 columns) |
| `Tableau_Fraud_Dashboard.twbx` | Interactive Tableau dashboard |
| `Fraud_Analysis_Queries.sql` | SQL queries for claims analysis and validation |
| `README.md` | This documentation |

---

## 🚀 Quick Start

1. **Explore the Dashboard:** Open `Tableau_Fraud_Dashboard.twbx` for interactive analysis
2. **Review the Data:** Load `Healthcare_Fraud_Dataset_4000.csv` to inspect claims
3. **Understand the Logic:** Reference `Fraud_Analysis_Queries.sql` for calculation methodology

---

## 📈 Financial Impact Summary

| Category | Count | Claim Value | % of Total |
|----------|-------|-------------|-----------|
| **High-Risk Claims** | 602 | $6.4M | 20.8% |
| **Medium-Risk Claims** | 1,484 | $14.4M | 46.7% |
| **Low-Risk Claims** | 1,914 | $10.0M | 32.5% |
| **TOTAL** | 4,000 | $30.8M | 100% |

---

## 🔮 Future Improvements

- [ ] Machine Learning Classification Model — Predict fraud before claims are paid
- [ ] Real-Time Risk Scoring — Implement composite fraud score on all incoming claims
- [ ] Provider Intervention Tracking — Monitor outcomes of audit recommendations
- [ ] Patient Notification System — Alert patients to suspicious claims in their name
- [ ] Predictive Network Analysis — Identify provider collusion patterns

---

## 💬 Questions & Analysis Details

Questions about the methodology, findings, or recommendations? Methodology is documented in the SQL query file for full transparency and reproducibility.

---

## 📄 License

This project is open-source under the MIT License. Feel free to use it for learning, but please cite appropriately if sharing.




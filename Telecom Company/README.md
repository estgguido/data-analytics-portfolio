# Telecom Customer Churn Analysis

## Background and Data Overview

This analysis focuses on customer churn for a fictional telecommunications company operating in California. The company provides both phone and internet services to its customer base. The primary objective is to understand the key drivers of customer churn by examining various customer attributes and service usage patterns.

The dataset contains comprehensive records for 7,043 customers, providing a detailed view of their demographics, account information, service usage, and churn status. The key variables in the dataset can be grouped into the following categories:

**Customer Demographics:**

- CustomerID: A unique identifier for each customer.
- Age: The age of the customer in years.
- City: The city where the customer resides.
- Number of Referrals: The total number of referrals made by the customer.
- Etc. 

**Account and Service Information:**

- Tenure in Months: The total number of months the customer has been with the company.
- Internet Type: The type of internet service subscribed to (e.g., Cable, Fiber Optic, DSL).
- Payment Method: The customer's method of payment.
- Etc.

**Financial and Usage Metrics:**

- Average Monthly Long Distance Charges: The customer's average monthly spending on long-distance calls.
- Total Refunds: The total amount of refunds issued to the customer.
- Total Long Distance Charges: The cumulative long-distance charges over the customer's tenure.
- Total Revenue: The total revenue generated from the customer.

**Churn Status and Details:**

- Customer Status: The current status of the customer (Joined, Stayed, or Churned).
- Churn Category: For customers who have churned, the general reason for leaving (e.g., Competitor, Dissatisfaction, Price).
- Churn Reason: A more specific, detailed reason for the customer's decision to churn.
- Etc.

## Recommended Next Steps
1. Offer a “stay-and-save” deal to monthly-plan customers. Customers on month-to-month plans drop out more than half the time. Give them a small discount or a free month if they switch to a yearly plan.
2. Upgrade DSL customers’ internet speed. People using the older DSL service leave almost twice as often as fiber or cable users. Offering them a free or low-cost upgrade could make them happier and less likely to leave.
3. Focus retention calls on single customers aged 46-55. Singles and people in the 46–55 age group have the highest churn. A friendly check-in call or loyalty perk could keep many of them from canceling.
5. Give extra attention to customers in San Diego and Los Angeles. These two cities bring in a lot of revenue but also lose customers fastest. Prioritize service quality checks and special offers there first.


## Insights
- Three markets—Los Angeles ($853 k), San Diego ($738 k), Sacramento ($353 k)—deliver 28 % of total revenue.
- DSL customers churn at 47 %, Cable 33 %, Fiber Optic 16 %.
- From the subset that gave a reason, the top categories are Competitor (26 %), Dissatisfaction (19 %), Attitude (12 %), Price (10 %), and Moving (8 %).
- Age: churn creeps up steadily and peaks at 46–55 yrs (27 %); the youngest 18–25 band is lowest at 22 %.
- Dependents: customers with zero dependents are by far the riskiest (35 % churn) versus ~6–7 % for those with 1–3 dependents.
- Multiple-service customers churn three times more (31.6 %) than single-service customers (10.4 %). Average service count in the multi bucket is ~6.1, showing that super-bundled users may be price-sensitive or frustrated by complexity—worth deeper investigation.
– Geographic hotspots (≥ 50 customers). Top-risk cities are led by San Diego (66.6 % churn)—far above the 28 % overall average, followed by San Francisco, Los Angeles, San Jose, and Long Beach. These pockets deserve targeted retention offers or a deeper look at competitive conditions. Especially considering San Diego is responsible for a significant portion of total revenue.






# GameZone: Sales Performance & Growth Opportunity Analysis

## Background and Overview
GameZone is a global retailer of new and refurbished gaming products, operating since 2018. With a strong online presence through its website and mobile app, the company utilizes a multi-channel marketing strategy to reach its customers.

This analysis was conducted to provide senior leadership with a clear overview of sales performance from the company's inception through the most recent data. The primary goals are to identify key revenue drivers, uncover performance trends over time, and provide actionable recommendations to guide strategic decisions in marketing, product management, and platform development.

## Data Overview
The analysis is based on a dataset of 20,000+ order records from 2018 to the present. The data includes two primary tables:

  **Orders:** Contains transactional data, including order ID, product details, pricing in USD, purchase timestamps, marketing channel, and purchase platform (web vs. mobile).

  **Regions:** A mapping table that links country codes to their respective geographical regions.

## Executive Summary
An analysis of historical sales data reveals a dynamic growth story for GameZone. Since its inception, the company has seen rapid expansion, with North America emerging as the dominant market—led overwhelmingly by the United States, which consistently contributes the largest share of total revenue. GameZone’s product portfolio has clear standout performers. The Nintendo Switch, PlayStation 5, and 27-inch 4K gaming monitor have consistently ranked among the top-selling items across all years analyzed, establishing themselves as core revenue drivers and customer favorites.

**Geographic Performance: North America's Dominance**
The North American market is the primary driver of GameZone's revenue. When analyzing by country, the United States stands out significantly as the top contributor.

Top 5 Countries by Total Revenue
1. United States
2. United Kingdom
3. Germany
4. Canada
5. Japan

**Platform Shift: The Slow but Steady Rise of Mobile**
A significant behavioral trend is emerging among customers: a shift toward mobile purchasing. While the website continues to account for the majority of transactions, the mobile app has grown steadily, rising from 6.3% of purchases in 2019 to 20% in 2021. This points to an ongoing evolution in consumer preferences and highlights the importance of mobile-first strategies moving forward.

**Notable Sales Trends:**
2020 was a breakthrough year, with total sales growing by 163% compared to 2019 (from $1.54M to $4.06M), driven by strong demand and possibly pandemic-related market dynamics. However, 2021 experienced a sharp decline, with total revenue dropping by 87.5%, down to approximately $506K. This significant downturn warrants further investigation to understand underlying causes and prevent recurrence.

## Interactive Dashboard
For a more detailed and interactive exploration of these findings, please view the full dashboard on Tableau Public.
https://public.tableau.com/views/GameZoneDashboard/GameZonePerformanceDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

<div class='tableauPlaceholder' id='viz1750461361241' style='position: relative'><noscript><a href='#'><img alt='GameZone Performance Dashboard ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ga&#47;GameZoneDashboard&#47;GameZonePerformanceDashboard&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='GameZoneDashboard&#47;GameZonePerformanceDashboard' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ga&#47;GameZoneDashboard&#47;GameZonePerformanceDashboard&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>               



## Recommendations
Based on the insights, we recommend the following actions:

**Invest in Mobile-First Strategies:** Given that the mobile app has shown a consistent increase in adoption, rising from 6.3% of total purchases in 2019 to 20% in 2021, efforts should be focused on optimizing the in-app user experience, targeted push notifications, and mobile-exclusive promotions to further capitalize on this trend.

**Reinforce Presence in High Performing Markets:** Increase marketing spend and targeted campaigns in the top 5 countries (USA, UK, Germany, Canada, France), as they represent the most significant revenue base.

**Strategic Inventory Management:** Ensure that the top-performing products (Nintento Switch, PS5, etc.) are consistently well-stocked to meet demand and avoid revenue loss from stockouts.

**Investigate and Address 2021 Revenue Decline:** 2021 saw a significant revenue drop of 87.5% following the explosive growth of 2020.
It is recommended to conduct a deeper root-cause analysis to understand whether this decline was due to supply chain disruptions, reduced marketing spend, seasonal fluctuations, or external market factors.

## Technical Appendix
The analysis was performed using PostgreSQL for data querying and data cleaning in Excel, and Tableau for visualization and dashboard creation. All SQL scripts used for the analysis are available within this project's repository.

View SQL Queries - [LINK](https://github.com/estgguido/data-analytics-portfolio/blob/1a616da41b2ce4cd532f1f9efdb780fa15bea738/Gamezone/Queries.sql)

### Data Cleaning

The file 'gamezone-orders-data-copy.xlsx' contains both the original (uncleaned) dataset and the cleaned version for easy side-by-side comparison.


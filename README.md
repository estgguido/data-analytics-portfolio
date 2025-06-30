# Zoom Subscriptions Analysis (2020-2021)
Analyzing Zoom subscription trends from 2020-2021. Interactive Tableau dashboard can be found here:


## North Star Metrics and Dimensions

- **Sales:** Total subscription sales from pro, business, and business plus plans

- **Plan type:** Business, enterprise, or pro

- **Plan period:** Yearly or monthly plan

- **Plan region:** Asia Pacific (APAC), North America (NA), Latin America (LATAM), Europe, Middle East, Africa (EMEA)

## Summary of Insights

### Plan Type:

- At the start of the pandemic, Enterprise plans had a significant spike and record-high at $226K bookings in one week. This spike then significantly decreased and slowed in both summer of 2020 and summer of 2021.

- Business plans have completely dropped off at the end of 2021 - investigate whether there is an issue with the product or a new competitor for this market.

### Plan Period:

- Yearly plans make up over 90% of bookings, but have exhibited a significant drop-off towards the end of 2021 that was not seen in monthly plans.

### Plan Region:

- During the peak-COVID months in early 2020, North America made up almost two thirds of weekly bookings, and most of the spike in enterprise was contained to this region.

## Recommendations & Next Steps

- Investigate why Enterprise plans exhibit a steep dip in summer months and expand this analysis to include more years to examine whether this trend is COVID-related or consistent across time. Is there a product feature we can implement to combat this dip?

- Yearly plans have an outsized-impact on bookings, so consider adding trials or promotions to improve the dip in yearly plans.

- While regional trends have remained relatively consistent, EMEA shows the most volatility - investigate whether there are features or promos to help make this region more stable.






## Interactive Dashboard
For a more detailed and interactive exploration of these findings, please view the full dashboard on Tableau Public.
          
## Technical Appendix
The analysis was performed using PostgreSQL for data querying and data cleaning in Excel, and Tableau for visualization and dashboard creation. All SQL scripts used for the analysis are available within this project's repository.

View SQL Queries - [LINK]

### Data Cleaning

The file 'gamezone-orders-data-copy.xlsx' contains both the original (uncleaned) dataset and the cleaned version for easy side-by-side comparison.

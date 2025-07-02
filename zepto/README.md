# ZEPTO: Product Catalog Analysis

## Background and Overview
Zepto, a leader in the 10-minute grocery delivery space, operates in a highly competitive market. To maintain its growth trajectory, the company must continuously optimize its product catalog, pricing, and inventory management. This analysis serves as an internal report for department heads (Procurement, Marketing, and Operations) to highlight key opportunities within the current product offerings.

The goal of this project is to analyze Zepto's product data to identify actionable insights that can drive revenue, improve inventory turnover, and enhance marketing effectiveness. By examining the product catalog through the lenses of pricing, stock availability, and category performance, we can uncover strategic opportunities to strengthen our market position.

## Data Overview

The analysis is based on a snapshot of Zepto's product catalog, comprising over 3,000 unique SKUs. The dataset is a single table, containing the following key attributes:

- name: The unique name of the product.

- category: The product category (e.g., Fruits & Vegetables, Dairy, Bread & Batter).

- mrp: Maximum Retail Price, the original price of the product.

- discountpercent: The percentage discount offered on the MRP.

- discountedsellingprice: The final price after the discount is applied.

- availablequantity: The current number of units available in inventory.

- outofstock: A boolean flag indicating if the product is currently unavailable.

- weightingms: The weight of the product, typically in grams or milliliters.

## Executive Summary
This analysis of Zepto's product catalog reveals several key strategic insights. The Munchies and Cooking Essentials categories represent the highest potential revenue pools. However, significant revenue is being lost due to high-value items, such as "Patanjali Cow's Ghee" (MRP 565), being out of stock. Furthermore, our discounting strategy is most aggressive in the Paan Corner and Personal Care categories, suggesting an opportunity to apply these learnings to other areas to drive sales. We recommend an immediate restocking of high-MRP out-of-stock items and a strategic review of premium products with low discounts to optimize sales velocity.

Insights Deep Dive
1. Revenue and Category Performance
The "Munchies" and "Cooking Essentials" categories are the primary drivers of potential revenue, each accounting for an estimated of over 300,000 in available inventory value. Conversely, core grocery categories like "Fruits & Vegetables" show significantly lower potential revenue from current stock. This indicates that while fresh produce is crucial to our service, the higher-value, longer-shelf-life products in Munchies and Cooking Essentials are where the bulk of our inventory value lies. Marketing and promotional efforts should be aligned to ensure turnover in these high-value categories.

2. Inventory and Stocking Opportunities
Numerous high-value products (MRP > 300) are currently out of stock. The most significant of these is "Patanjali Cow's Ghee" with an MRP of 565. This issue spans across multiple categories, including staples, personal care, and packaged foods.

3. Pricing and Discount Strategy
The "Paan Corner" and "Personal Care" categories have the highest average discount percentages. Additionally, several products with an MRP over 500 have discounts of less than 10%, potentially making them slow-moving items.

The aggressive discounting in certain categories suggests a strategy to attract customers or clear inventory. These tactics could be selectively tested in other categories. Products with high price points but low discounts, like "Dhara Kachi Ghani Mustard Oil Jar" (8% discount), could benefit from a revised pricing strategy.


## Recommendations
Based on this analysis, the following actions are recommended:

For the Procurement & Operations Team:

- Prioritize restocking the list of high-MRP, out-of-stock products to prevent potential revenue gains.

For the Marketing & Merchandising Team:

- Campaign Opportunity: Launch a "Best Value" marketing campaign featuring products with the highest discount percentages (e.g., Dukes Waffy products at 51% off) and best price-per-gram to drive volume.

- Cross-Promote: Create bundled offers that pair high-revenue items from "Munchies" with complementary products from lower-revenue categories like "Beverages."

- Learn from Paan Corner: Investigate the success of the high-discount strategy in "Paan Corner" and assess if similar tactics can be applied to categories like "Biscuits" or "Meats, Fish & Eggs" to stimulate growth.

## Caveats and Assumptions
Revenue vs. Potential Revenue: The "estimated_revenue" is calculated based on available quantity, not actual sales. It represents the potential value of inventory, not realized income. A complete analysis would require integrating actual sales data.

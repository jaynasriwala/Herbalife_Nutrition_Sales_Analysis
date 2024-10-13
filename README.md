# Herbalife_Nutrition_Sales_Analysis

[Log File](#)

[Tasks To Be Performed](https://docs.google.com/document/d/1xh5X5Z8yxwSyyc_Grlkd3WahunNkt-pnIXVLMYffJ8s/edit?usp=sharing)

[Data Extraction Colab](https://colab.research.google.com/drive/1xt5xVv8L8I4Ve6RQR1UuSVB-lDDu4gZ4?usp=sharing)

[Probability & Hypothesis Colab](https://colab.research.google.com/drive/1aBQe1S9dalP8WqNyLVgjUXFujcrlq5-F?usp=sharing)

[Deployed WebSite Link](https://herabalife-nutrtion-sales-analysis-hardik-songaras-projects.vercel.app/)

[GitHub Link For Source Code Of Wbesite](https://github.com/Hardik74658/herabalife-nutrtion-sales-analysis)


# Project Overview
This project involves analyzing Herbalife Nutrition's sales data from 2022 to 2024. Using Power BI and SQL, we visualized sales trends, customer behavior, and product performance to provide actionable insights for business growth and strategic planning.


# Dataset Description
The dataset comprises Herbalife Nutrition sales data from January 2022 to June 2024. It includes customer information, order details, item specifics, and sales amounts, allowing for comprehensive analysis of purchasing behaviors and sales trends.

## All Orders Table

**Order Number: Unique ID For Each Order Placed.**<br><br>
**Delivery Charges: Delivery Charge Per Order.**<br><br>
**Order Date: Date On Which Order Is Placed.**<br><br>
**Order Status: Status Of Order ENUM[COMPLETED/CANCELLED].**<br><br>
**Purchased By: Person Who Placed Order.**<br><br>
**Customer Name: For Whom Order Is Placed.**<br><br>
**City: City In Which Order Is To Be Placed Or City Name Where the Customer Is From.**<br><br>
**State: Name Of The State.**<br><br>
**Pincode: PINCode Of Area.**<br><br>
**Contact Number: Contact Number Of The Person.**<br><br>
**Amount Paid: Total Amount Paid Per Order.**<br><br>
**Discount: Discount Per Order.**<br><br>
**Quantity: Quantity Of Specific Product In Order.**<br><br>
**Item: Name Of The Item Ordered.**<br><br>
**SKU: Unique ID Of Each Specific Product.**<br><br>

## Items Table
**SKU: Unique ID Of Each Specific Product.**<br><br>
**Item: Name Of The Item Ordered.**<br><br>
**MRP: MRP(Maximum Retail Price Of Product/Item).**<br><br>

## Orders Table
**It is Subset Of AllOrders Table Including Below Fields.**<br><br>
**Ordere Number**<br><br>
**Ordere Date**<br><br>
**Purchased By**<br><br>
**Customer Name**<br><br>
**Contact Number**<br><br>
**Amount Paid**<br><br>
**Discount**<br><br>
**Delivery Charge**<br><br>
**City**<br><br>
**State**<br><br>
**Pincode**<br><br>

## OrderedItems
**It is Used To Connect Two tables Orders And Items.**<br><br>
**Ordere Number**<br><br>
**SKU**<br><br>
**Quantity**<br><br>

## Cancelled Orders
**It contains all fields as AllOrders Table But Entries Only Of Order Status Is CANCELLED.**<br><br>


## Tools And Technologies Used
**Power BI Desktop**<br><br>
**Excel**<br><br>
**Python (For Data Preprocessing)**<br><br>
**Pandas, Matplotlib, Seaborn (Python libraries for data analysis and visualization)**<br><br>
**Probability & Statistics**<br><br>
**Hypothesis Testing**<br><br>


---
When you finish the task, please paste your link to the Excel [sheet](https://unsw-my.sharepoint.com/:x:/g/personal/z5096423_ad_unsw_edu_au/ETIxmQ6pESRHoHPt-PUleR4BuN0_ghByf7TsfSfgDaBhVg?rtime=GAd2OFNM3Eg) for Peer Feedback
---
>Be creative! Feel free to link to embed your [data](2024-srcsc-superlife-inforce-dataset-part1.csv), [code](sample-data-clean.ipynb), [image](unsw.png) here

## Problem Statement
SuperLife, a prominent life insurance carrier in the country of Lumaria, is exploring the development of a health incentive program to complement its long-term life insurance products. Through the health program, Superlife seeks to incentivize healthy lifestyle behaviours and thereby decrease policyholder mortality rates, and boost sales volumes via enhanced marketability and industry competitivenes to ultimately yield economic benefits for the company. Plus Advisory has been engaged as an external consultancy to propose an innovative solution.

## Executive Summary
This showcase presents Plus Advisory’s proposed ‘wellness plan’ with detailed examination into the program design, modelling and evaluation process. These investigations were commissioned by *SuperLife Chief Actuary Jes B. Zane* to address several strategic social, financial and growth objectives for SuperLife’s long-term life insurance products. Included below is a comprehensive review of the initial data exploration, our health program design process, assumptions setting procedure, pricing-model construction methodology and forecasted economic benefits until 2044. To assess and support the long-term financial viability and profitability of the health program, sensitivity analyses and risk evaluations were also conducted. In recommending implementation of the health plan, there are further discussions of other considerations such as using gender-based pricing and devised marketing plans across Lumaria.

## Project Timeline
The chart below depicts the workflow progression of Plus Advisory's consultants in developing the solution.
> Project Timeline

![Workflow](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/ed166fc4-2f0c-4fe8-bc6c-3b8ef331343a)

## Exploratory Data Analysis
#### <ins>Causes of Deaths</ins>
Through a holistic review of SuperLife’s policyholder data, we have identified the mortality trends and contributive variables that must be considered in the health program design. Our analysis, on both a population and region level, revealed the leading causes of death to be neoplasms (33.5%), diseases of the circulatory system (30%) and external causes of morbidity (8.8%) as detailed in the 2 graphs below, a trend largely consistent across all Lumarian regions and product lines (SPWL and T20). Consequently, our program has been specifically tailored to offer incentives that address these particular health concerns with no product-level or geographical differentiation. 

> Prevalence of Difference Causes of Death
<img width="1261" alt="Screen Shot 2024-04-05 at 10 38 20 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/648e3774-9e05-4cd0-9b2e-ead6186dd7ee">

> Most Common Causes of Death for each Region
<img width="1299" alt="Screen Shot 2024-04-05 at 10 49 53 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/146b39bf-a90f-42a6-8bf7-2088debceaff">


#### <ins>Gender Distribution</ins>
Our exploration of the genders of SuperLife’s policyholders has led us to our findings that females join the policy slightly earlier than males, but dead policyholders generally got policies much later. Analysis of the gender of dead policyholders by regions, as shown in the graph below, illustrates all regions having significantly higher numbers of male policyholder deaths than females, especially for regions 1-3. Out of the total dead policyholder count, males accounted for more than twice the number of female policyholders.

> Gender Distribution of Dead Policyholders per Region
<img width="460" alt="Screen Shot 2024-04-05 at 10 53 17 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/ac2a709c-f6da-4487-97de-d69b41cb9f7c">

Analysis of the gender of policyholders based on product revealed a similar distribution of male and female policyholder deaths for both SPWL and T20 products but in proportion to the number of policyholders, more are dying under SPWL products. Our findings are illustrated in the graph below:

> Gender Distribution of Dead Policyholders by Policy Type
<img width="634" alt="Screen Shot 2024-04-05 at 10 55 15 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/c753dd0c-8fec-4318-9ad7-a322656f80b2">


#### <ins>Underwriting Classes</ins>
Additionally, by examining the distribution of underwriting classes among the Lumarian population, as indicated in the graph below, we have discovered that policyholders predominantly fall into the low-risk category (633,198) within the overall claims dataset, yet majority of those who died were categorised as moderate risk (16,187). 

> Underwriting Class Distribution of Lumarian Population
<img width="664" alt="Screen Shot 2024-04-05 at 10 56 19 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/b1a10083-e184-439a-9853-d8bab6c6f8ec">

The subsequent table outlines our findings:

<img width="570" alt="Screen Shot 2024-04-05 at 10 57 54 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/68c8cdce-99b5-409f-a628-5784ff150f63">

A risk profile assessment on smokers’ underwriting classes, as seen in the graph below, highlighted a pronounced discrepancy: smokers only fall into moderate or high-risk underwriting classes indicating a skewed risk distribution, whereas non-smokers were distributed more evenly between very low to high-risk underwriting classes. Hence, smoking has been considered as a significant risk factor.

> Underwriting Class Distribution by Smoking Status
<img width="921" alt="Screen Shot 2024-04-05 at 10 59 29 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/3ec6abfb-cf86-4ac9-b267-0addee483d2d">

In addition, sub-group analysis of smoker status revealed circulatory system diseases as the foremost health issue among smokers, contrasting with neoplasms in non-smokers, as illustrated in the graph below:

> Cause of Deaths by Smoking Status
<img width="895" alt="Screen Shot 2024-04-05 at 11 00 25 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/f4b71b35-9b20-491a-84fa-5ee24d0238fb">


#### <ins>Marketing Distribution Channels</ins>
Upon examining the traction of different distribution channels across all Lumarian regions, detailed in the left graph below, Plus Advisory’s marketing recommendation will primarily focus on agents and online platforms given their consistent popularity. Adopting a product-wise lens, as illustrated in the right graph below, we would advise the concentration of advertising budget and other resources on agents for SPWL given their predominance and even investment across all channels for T20.

> Distribution Channels
<img width="828" alt="Screen Shot 2024-04-05 at 11 01 57 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/b8a3e5cc-daa2-4ba3-8c5a-fcd57373ddf1">


## Assumptions
### Expenses
* Total expenses include operating, reinsurance, taxation and health program expenses. 
* Operating expenses consist of agent commissions, salary payments, office equipment and supplies, claims settlement costs, rent and advertising fees.
* All expenses except health program expenses are calculated as the simple historical averages, as a percentage of GWP, on an aggregate basis.
* Health program expenses are expressed as dollar values, taking moderate estimates and adjusted on a per-person basis where relevant.

![Expenses](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/aaf64308-2d2e-45f6-b5bd-6e55e23445fe)

<ins>Sources<ins>

US National Association of Insurance Commissioners (NAIC)[^1]

American Council of Life Insurers[^2]
[^1]: ACLI (2023) LIFE INSURERS FACT BOOK, Life insurers fact book. Available at: https://www.acli.com/about-the-industry/life-insurers-fact-book (Accessed: 8 March 2024)
[^2]: NAIC (2023) Insurance industry snapshots and analysis reports, NAIC. Available at: https://content.naic.org/cipr-topics/insurance-industry-snapshots-and-analysis-reports (Accessed: 12 March 2024)

### Earnings on Investment Rate and Net Investment Income Allocation
Net investment income asset class allocations are calculated as historical averages. 
![Pie](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/14adb4e5-7062-4395-aa14-c3e1469f566a)

### Lapse Rate
* Assume that only T20 policies have lapses and SPWL does not because policyholders aren't likely to lapse after paying the single premium at the start of the policy.
* All future lapse rates are consistent with the historical trend

Lapse rates of each policy year durations were calculated using the following formula:

<img width="250" alt="Screenshot 2024-04-06 at 10 10 47 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/8d394cfa-6ba8-4f20-8e9c-962feb6e9888">

<ins>Method<ins>
1. Created new column that calculated Years to Lapse (how long it took for each lapsed policyholder to lapse) and counted frequencies from 0 to 19
2. Calculated number of in force policies e.g. how many not dead or lapsed in 2001 when policy issued in 2001, how many not dead or lapsed in 2002 when policy issued in 2002.... which summed to ALL active
3. Repeated until Policy Year 19

> Lapse Rate Trend for T20
<img width="580" alt="Screenshot 2024-04-06 at 11 40 12 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/6add8821-581f-4a77-a464-7439e62e4bca">

**Values are recorded in this [lapse rate table](LapseRate.png)*

<ins>Final Lapse Rates Used<ins>

The calculated lapse rates above were then bucketed as follows:

<img width="320" alt="Screenshot 2024-04-06 at 11 40 34 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/9a0d8aa3-a917-4b83-93ae-f64070d9a94d">

### Inflation Rate
Several methods were considered during the process of setting future inflation rates including linear regression, moving average of 5 years and moving average of 10 years. It was finally decided that future inflation rate is forecasted as a 5-year moving average (3.935%), smoothing the fluctuations apparent in the historical data.

### Discount Rate
5-year moving average projection was applied to the conservatively chosen maximum of the overnight, 1 year and 10 year historical risk free spot rates resulting in a constant discount rate of 3%. This was due to the smoothing effect of the moving average and to allocate more weighting on the 10 year rates to reflect the long term nature of this wellness plan. See this [graph](DiscountRate.png) for a visualisation of this projection.

### Mortality Rate

### New Business Volume
* New business volume figures are forecasted as projections from a linear regression model fit on historical data, by product. The linear regression model was selected on the basis of a linear trend in new business volume for both products.
![New Business Volume](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/5add1704-f32e-4a5c-a7f9-d83778a9ee86)

### New Business Demographics
* Model points are defined across gender, smoking status, age and face value dimensions and the composition of new business across model points is calculated as historical averages.
* Averaging approach based on the stability of composition across past years as shown below.

![SPWL Demo](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/ad598bd3-4a66-4635-b996-a6bea1fa31b0)
![T20 Demo](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/98825cd0-c0f2-4670-a221-287adf794ac5)

## Data Limitations
The following datasets were used:
* Superlife Inforce Dataset
* [data](Lumaria Economic Data.xlsx)
* [data](Lumaria Mortality Table.xlsx)
* [data](Intervention Impact & Cost.xlsx)

<img width="720" alt="Data Limitations" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/7d7c0a85-1275-45f0-af2f-6c2c2565fbb2">

## Risk Management
Significant quantitative and qualitative risks that may arise from the implementation of the health incentive program for SuperLife were identified and assessed. For each risk, ratings of the magnitude of impact and the possibility of occurrence are provided in this [risk matrix](Likelihood.png), alongside relevant mitigation strategies deduced to address these risks, outlined in the table below.

> Risks and Mitigation Strategies

![Screenshot 2024-04-05 at 8 42 48 pm](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/9731c6ef-58f1-4502-be90-ccf12f5fdcb1)

### Sensitivity Analysis
Sensitivity analysis was conducted to assess the materiality of the financial impacts from favourable and unfavourable scenarios based on our key assumptions. The table below details the different scenarios investigated, the recommended range that our health plan will remain financially viable within and any insights gathered during the analysis.

> Sensitivity Testing - Scenarios, Impacts and Insights

![Sensitivity Analysis Table](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/5d36d746-417d-43d1-98c7-21b328d39f65)

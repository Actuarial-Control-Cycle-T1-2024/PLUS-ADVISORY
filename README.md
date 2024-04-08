![4001 Group Logo](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/e0a54d54-bbb0-40e6-a79e-beade0b2f038)

**Team Members: Rachel Dai, Stella Guo, Oliver Yang, Jun Yei Zhang, Angela Zhou**


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
Through a holistic review of SuperLife’s policyholder data, we have identified the mortality trends and contributive variables that must be considered in the health program design. Our analysis, on both a population and region level, revealed the leading causes of death to be neoplasms (33.5%), diseases of the circulatory system (30%) and external causes of morbidity (8.8%), a trend largely consistent across all Lumarian regions and product lines (SPWL and T20), as illustrated below. Consequently, our program has been specifically tailored to offer incentives that address these particular health concerns with no product-level or geographical differentiation. 

> Prevalence of Difference Causes of Death
<img width="1261" alt="Screen Shot 2024-04-05 at 10 38 20 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/648e3774-9e05-4cd0-9b2e-ead6186dd7ee">

> Most Common Causes of Death for each Region
<img width="1299" alt="Screen Shot 2024-04-05 at 10 49 53 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/146b39bf-a90f-42a6-8bf7-2088debceaff">


#### <ins>Gender Distribution</ins>
Analysis of the gender of deceased policyholders by regions, as shown in the graph below, illustrates all regions having significantly higher numbers of male policyholder deaths compared to females, especially for regions 1-3. Out of the total deceased policyholder count, males accounted for more than twice the number of deaths than females.

> Gender Distribution of Dead Policyholders per Region
<img width="460" alt="Screen Shot 2024-04-05 at 10 53 17 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/ac2a709c-f6da-4487-97de-d69b41cb9f7c">

Analysis of the gender of policyholders based on product revealed a similar distribution of male and female policyholder deaths for both SPWL and T20 products but in proportion to the number of policyholders, slightly more are dying under the SPWL product. Our findings are illustrated in the graph below:

> Gender Distribution of Dead Policyholders by Policy Type
<img width="634" alt="Screen Shot 2024-04-05 at 10 55 15 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/c753dd0c-8fec-4318-9ad7-a322656f80b2">


#### <ins>Underwriting Classes</ins>
Additionally, by examining the distribution of underwriting classes of SuperLife policyholders, as seen in the graph below, we have discovered that policyholders predominantly fall into the low-risk category (633,198) within the overall dataset, yet the majority of those who died were categorised as moderate risk (16,187). 

> Underwriting Class Distribution of Lumarian Population
<img width="664" alt="Screen Shot 2024-04-05 at 10 56 19 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/b1a10083-e184-439a-9853-d8bab6c6f8ec">

The subsequent table outlines our findings:

<img width="570" alt="Screen Shot 2024-04-05 at 10 57 54 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/68c8cdce-99b5-409f-a628-5784ff150f63">

A risk profile assessment on smokers’ underwriting classes, as depicted in the graph below, highlighted a pronounced discrepancy: smokers only fall into moderate or high-risk underwriting classes indicating a skewed risk distribution, whereas non-smokers were distributed more evenly between very-low to high-risk underwriting classes. Hence, smoking has been considered as a significant risk factor.

> Underwriting Class Distribution by Smoking Status
<img width="921" alt="Screen Shot 2024-04-05 at 10 59 29 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/3ec6abfb-cf86-4ac9-b267-0addee483d2d">

In addition, sub-group analysis of smoker status revealed circulatory system diseases to be the forefront health issue among smokers, contrasting with neoplasms in non-smokers, as illustrated in the graph below:

> Cause of Deaths by Smoking Status
<img width="895" alt="Screen Shot 2024-04-05 at 11 00 25 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/f4b71b35-9b20-491a-84fa-5ee24d0238fb">

## Program Overview
### Objectives
Our proposed health program aims to reduce the mortality rates across SuperLife’s policyholders by addressing critical health risks and encouraging active engagement in healthier lifestyle behaviours, ultimately to generate substantial economic benefits in the long-term through mortality savings. The wellness program is strategically designed to reward policyholder participation with attractive incentives such as premium discounts, creating synergy with Superlife’s life insurance products in the form of enhanced marketability and elevated sales volume. Through this unique value proposition, we strive to solidify SuperLife’s standing within the competitive landscape of the Lumarian life insurance industry.

### Key Metrics
The following 5 measures will be used to assess the success of our health incentive program:
1. **Health Metrics** - Measure health improvements through CHV metrics, BMI and the number of claims, allowing sufficient time for lifestyle adjustments to occur.
2. **Program Enrollment** - Track the frequency of new T20 and SPWL policyholders enrolling in the health program. Initial enrollment data will help us assess immediate engagement rates and make changes accordingly.
3. **Participation/Attendance Rates** - Monitor the consistency of policyholder attendance in our recommended program events to assess the effectiveness and accessibility of the incentives and in turn, make strategic changes to optimise participation e.g. targeted promotions.
4. **Program Feedback** - Survey health program participants on a regular basis about their experience and potential improvement suggestions.
5. **Financial Indicators** - Calculate segmented loss ratios and net profit and conduct cost-benefit analysis to evaluate the program’s overall profitability and feasibility in the long term.
   
These key metrics will be documented <ins>biannually</ins> for the first 5 years after implementation and then reported <ins>biennially</ins> thereafter in the longer term to monitor the program's effectiveness in attaining its objectives.

## Assumptions
### Expenses
* Total expenses include operating, reinsurance, taxation and health program expenses. 
* Operating expenses consist of agent commissions, salary payments, office equipment and supplies, claims settlement costs, rent and advertising fees.
* All expenses except health program expenses are calculated as simple historical averages, as a percentage of GWP, on an aggregate basis.
* Health program expenses are expressed as dollar values, taking moderate estimates and adjusted on a per-person basis where relevant.

> Expense Calculations

![Expenses](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/aaf64308-2d2e-45f6-b5bd-6e55e23445fe)

<ins>Sources<ins>

US National Association of Insurance Commissioners (NAIC)[^1]

American Council of Life Insurers[^2]

[^1]:ACLI (2023) LIFE INSURERS FACT BOOK, Life insurers fact book. Available at: https://www.acli.com/about-the-industry/life-insurers-fact-book (Accessed: 8 March 2024)

[^2]:NAIC (2023) Insurance industry snapshots and analysis reports, NAIC. Available at: https://content.naic.org/cipr-topics/insurance-industry-snapshots-and-analysis-reports (Accessed: 12 March 2024)

### Earnings on Investment Rate and Net Investment Income Allocation
Net investment income asset class allocations are calculated as historical averages. 

> Average Net Investment Income Asset Class Allocations

![Pie](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/14adb4e5-7062-4395-aa14-c3e1469f566a)

### Lapse Rate
* Assume that only T20 policies have lapses and SPWL does not because policyholders aren't likely to lapse after paying the single premium at the start of the policy.
* All future lapse rates are consistent with the historical trend

Lapse rates of each policy year durations were calculated using the following formula:

<img width="290" alt="Screenshot 2024-04-06 at 10 10 47 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/8d394cfa-6ba8-4f20-8e9c-962feb6e9888">

<ins>Method<ins>
1. Created new column that calculated Years to Lapse (how long it took for each lapsed policyholder to lapse) and counted frequencies from 0 to 19
2. Calculated number of in force policies e.g. how many not dead or lapsed in 2001 when policy issued in 2001, how many not dead or lapsed in 2002 when policy issued in 2002.... which summed to ALL active
3. Repeated until Policy Year 19

> Lapse Rate Trend for T20
<img width="710" alt="Screenshot 2024-04-06 at 11 40 12 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/6add8821-581f-4a77-a464-7439e62e4bca">

**Values are recorded in this [lapse rate table](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/blob/29f9abac2ca4b228ab201b2096d0bb5502e285a2/Project%20Images/LapseRate.png)*

<ins>Final Lapse Rates Used<ins>

The calculated lapse rates above were then bucketed as follows:

<img width="350" alt="Screenshot 2024-04-06 at 11 40 34 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/9a0d8aa3-a917-4b83-93ae-f64070d9a94d">

### Inflation Rate
Several methods were considered during the process of setting future inflation rates including linear regression, moving average of 5 years and moving average of 10 years. It was finally decided that the future inflation rate would be forecasted as the 5-year moving average (3.935%) as it provided appropriate smoothing to the fluctuations apparent in the historical data.

### Discount Rate
A 5-year moving average projection was applied to the conservatively chosen maximum of the overnight, 1 year and 10 year historical risk free spot rates resulting in a constant discount rate of 3%. This was due to the smoothing effect of the moving average and to allocate more weighting on the 10 year rates to reflect the long term nature of this wellness plan. See this [graph](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/blob/86831fdb3c7dab8967aa306369064e8ed503c210/Project%20Images/DiscountRate.png) for a visualisation of this projection.

### New Business Volume
* New business volume figures are forecasted as projections from a linear regression model fit on historical data, by product. The linear regression model was selected on the basis of a linear trend in new business volume for both products.

> New Business Volume Projections

![New Business Volume](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/5add1704-f32e-4a5c-a7f9-d83778a9ee86)

### New Business Demographics
* Model points are defined across gender, smoking status, age and face value dimensions and the composition of new business across model points are calculated as historical averages.
* The stability of composition across past years, representing the basis of the averaging approach, is shown below:

> New Business Historical Model Point Proportions 

![SPWL Demo](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/ad598bd3-4a66-4635-b996-a6bea1fa31b0)
![T20 Demo](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011854/98825cd0-c0f2-4670-a221-287adf794ac5)

## Data Limitations
The following datasets were used:
* Superlife Inforce Dataset
* Lumaria Mortality Table
* Lumaria Economic Data
* Intervention Impact & Cost Table

>Data Limitations Table

<img width="852" alt="datalim" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/bf8e565d-2dbf-44cb-be68-b86842fb49a2">

## Product Design
Leveraging the findings from our exploratory data analysis, Plus Advisory has designed a health program to target the specific health risks associated with smokers and non-smokers. This tailored approach enables us to more effectively improve mortality experience whilst simultaneously promoting inclusivity. On optional participation, our program is segmented into two distinct packages, with key specifications defined in the table below.

> Health Program Packages Outline
<img width="650" alt="Screenshot 2024-04-08 at 2 32 00 am" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/8b9708f5-52f9-4bfe-9e05-795e7277cb18">


Included in both packages are annual health check-ups, weight management programs, and cancer prevention initiatives. However, Package 1 is further enhanced with sun safety awareness and incentives for preventive screenings to directly target neoplasms. Contrastingly, Package 2 incorporates smoking cessation programs and heart health screenings to address circulatory system diseases. Our pricing strategy of optional participation on both packages encourages participation through offering attractive incentives. Participants who opt into Plus Advisory’s program receive the benefit of lower life insurance premiums, making their decision to participate both financially sound and beneficial health-wise. The diagram below provides a detailed breakdown of the policyholders’ options available for each product.

> Decision Tree for Policyholder Options in T20 and SPWL Products

![Decision Tree Team Whiteboard in Green Blue Yellow Simple Colorful Style](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/bf6968af-4770-45e4-95fa-3c540b6111bc)

### Program Specifications
* **Bi-Annual Health Check-Ups**: Policyholders have access to bi-yearly health screenings and consultations, designed to support early identification of various potential health risks.
* **Weight Management Programs**: Up to 1 year of personalised diet and exercise plans designed to promote weight loss and improve metabolic rate. Using Lumarian Skyreach’s nature trails, policyholders will participate in hikes and outdoor fitness sessions amongst Skyreach’s diverse flora and fauna.
* **Cancer Prevention Initiatives**: All participants may receive 1 year of resources on early cancer prevention strategies, such as mammograms and cervical screening tests.
* **Sun Safety Awareness**: Non-smokers may receive 1 year of educational resources on sun safety measures to assist decision-making in minimising skin cancer risks. 
* **Incentives for Preventive Screenings**: Non-smokers can participate in yearly preventive health screenings to ensure early detection of various cancers.
* **Smoking Cessation Programs**: Smokers have up to 1 year of access to quitline services, professional guidance, smoking cessation groups and customised treatment strategies including behavioural therapy.
* **Heart Health Screenings**: Smokers can receive bi-yearly access to regular heart screenings including cholesterol level and blood pressure tests.

The inclusion of weight management programs, annual preventative screenings and sun safety awareness initiatives to reduce neoplasm incidence rates is supported by various World Health Organisation (WHO) publications. Key statistics include that 30% of neoplasm cancers are caused by obesity and tobacco use, over half of which is preventable through regular screenings and healthier lifestyles and that excessive sun exposure is linked to 95% of melanoma cases (Cancer Australia, 2024)[^3]. 

[^3]:Cancer Australia (2024) UV radiation, UV radiation | Cancer Australia. Available at: https://www.canceraustralia.gov.au/resources/position-statements/lifestyle-risk-factors-and-primary-prevention-cancer/lifestyle-risk-factors/uv-radiation (Accessed: 9 March 2024).

In addressing circulatory system diseases, our smoking cessation program is motivated by research conducted by the US National Institutes of Health (NIH), which states that smoking cessation by age 40 reduces the risk of heart diseases by 90% (Gallucci et al., 2020)[^4]. Our health check-up and heart screening offerings align with recommendations from the Australian Government, which advises individuals aged 50 and above to undergo heart disease risk assessments and blood pressure checks at 2 year intervals while those under 50 may do so less frequently.
[^4]:Gallucci, G. et al. (2020) Cardiovascular risk of smoking and benefits of smoking cessation, Journal of thoracic disease. Available at: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7399440/ (Accessed: 9 March 2024).

### Program Requirements
Participants of the health program are required to obtain and submit digital confirmation of attendance to ensure participation is accurately recorded, duly justified by the provision of premium discounts. Individuals attending health check-ups, cancer prevention and heart health screenings are required to visit certain private clinics affiliated with Plus Advisory. Participants claiming non-smoker incentives are also required to provide nicotine test results within the last 12 months to verify their non-smoking status. This is justified by allowing Plus Advisory to ensure tailored health plans and incentives are granted based on verified health statuses. Smokers will be required to undergo initial assessments to tailor the cessation program to their individual needs, supported by European Respiratory Journal which reports a 35-55% higher success rate in quitting smoking when behavioural cessation interventions are tailored at an individual level (Andritsou et al., 2016)[^5].

[^5]:Andritsou, M. et al. (2016) Success rates are correlated mainly to completion of a smoking cessation program, European Respiratory Society. Available at: https://erj.ersjournals.com/content/48/suppl_60/PA4599 (Accessed: 8 March 2024).

### Evaluation Timeframes
For the evaluation time frames of the health program, we propose both short-term and long-term durations to comprehensively assess its effectiveness in reducing mortality rates. A period of 5 years is an appropriate interval for assessing initial policyholder engagement with the program. This duration aligns with standard healthcare program timelines, given that many of our health incentives are provided on an annual or bi-annual basis, allowing ample time to evaluate how the program contributes to enhancing policyholders’ health and lifestyle habits in the short-term. For longer-term analysis, a 20 year timeframe offers a more reliable perspective on our program performance, providing enough time to encounter and address issues such as potential health pandemics that can significantly affect mortality rates. Given that individual health tends to exhibit a steady decline from around age 30 which accelerates around 50, undertaking a 20-year evaluation would also offer adequate time to make adjustments based on evolving health needs and provide the best practices to ensure long-term sustainability of our health program.

## Pricing and Modelling
Utilising the provided mortality experience and mortality table, our group projected the expected mortality of SuperLife’s insured base into the future - for program participants and non-participants. These mortality projections were then used to project the losses and premium profits earned by Superlife from program participants and non-participants, allowing us to calculate the present economic value of implementing the program. Additionally, through the same model, the mortality savings from implementing the program over the past 20 years were estimated by utilising the provided mortality table as a proxy and adjusting mortality according to program participation.

### Stochastic Mortality Modelling
Upon comparing the mortality experience derived from the inforce dataset with the provided ultimate mortality table, we observed that the mortality experience from ages 30-60 are very similar, whereas,  from ages 60+, the observed mortality rates are lower than expected. As a result of the higher variability in the crude mortality rates, particularly in the older ages due to scarcer data, we decided to smooth the mortality rates for more accurate and reliable modelling. Loess regression, a nonparametric method was selected because it is locally adaptive, allowing it to capture both local and global features of the data. Therefore, the smoothed mortality rates will incorporate information from adjacent ages, while following the overall trend and reducing sampling error. The optimal span (amount of smoothing) and degree of freedom were chosen based on the combination that minimised the test RMSE while ensuring that the train RMSE remained larger than test RSME to avoid overfitting. This resulted in a span of 0.45, which provides a balance in fitting the data, while smoothing over the noise and a degree of freedom of 2, as the quadratic polynomial curvature allowed the model to capture the non-linear increase in mortality of older ages. 
> Comparison of Inforce Mortality with Given Mortality Table

![Mortality Rate Comparisons](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/120159796/8749383f-0003-408e-bf33-a27e82d488cf)


Following this, the smoothed dataset was split based on gender and used to train their respective stochastic models. A variety of stochastic models were tested, such as the Lee-Carter (LC), Cairns-Blake-Dowd (CBD), Age-Period-Cohort (APC) and the M6 models. The models were evaluated based on their residual colour map plots and AIC values. From the residual plots below, in the stochastic models for males we observed similar cohort effects indicated by the diagonal trends and age effects represented by the horizontal patterns. Notably, the simpler LC and CBD models demonstrated a higher degree of overestimation, as indicated by the dark blue regions. 
> Residual Plots of Stochastic Models

![Mortality Residuals](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/120159796/195855fa-64e1-4e74-adb7-b4b75acb38d5)

The M6 model had the lowest degree of over- and under- estimation, aligning with expectation, as it is an extension of the CBD model, which is particularly effective in modelling older ages. The M6 model incorporates an additional parameter to account for the cohort effect into the CBD Model, that is clearly present in the residuals, coupled with the lowest AIC. We selected the M6 model because it displayed the best goodness-of-fit without compromising on overall model parsimony. The same conclusion was reached for the stochastic models for females, as shown below, however instead of age patterns, they displayed a period effect (vertical patterns). Therefore, the M6 model was used to project the base mortality rates over a 50 year-horizon for both males and females. 

>AIC Values of Stochastic Models

AIC|Lee Carter|Cairns Blake Dowd|Age-Period-Cohort|M6
---|---|---|---|---
Males|5286|5233|5287|5232
Females|3713|3569|3705|3621

To obtain the smoking risk loading factors, we modelled death counts using a Generalised Linear Model (GLM) with smoking status as the predictor. A quasi-poisson distribution with a log link function was utilised to account for the overdispersion of the data. The data was not split based on gender due to the scarcity of deaths of female smokers in the inforce dataset. The GLM model which was trained using k-cross validation with 10 folds, yielded a coefficient of 1.58 for smokers. Since the coefficient of the GLM represented the log odds, this corresponded to smokers being 4.85x more likely to die compared to non-smokers. From the data, we found that the majority of the deaths for smokers occur around the age range of 50-70, thus we opted to apply the risk factors incrementally, beginning with a baseline risk factor of 1.30 at age 26, then increasing it by 0.05 at every subsequent age. This gradual increase continues until age 97, with a factor of 4.85, which is maintained at this level until age 120. This approach reflects the cumulative health impacts of smoking, especially at older ages.

The final mortality rates applied in our analysis incorporate the base mortality projections derived from the M6 model, adjusted for smoking risk loading for smokers and reduction factors for individuals participating in the respective wellness plans:
$$q_{x,Final} = q_{x,Base} * R_{Wellness} * L_{Smoker}$$

The reduction factors were chosen as the midpoint of the given approximate impact of the intervention programs on mortality for a more conservative modelling approach. 

### Mortality Savings
The mortality savings for the wellness program were found by comparing the differences between the expected present value (EPV) of total historical death benefits and expenses paid if the program had existed 20 years ago, compared to the actual death experience. The expected death benefits under the wellness program were calculated using the 2010 mortality rates as a proxy for the 20-year historical mortality. Leading to the following adjusted historical mortality rate:	

$$q_{x,adj} = q_{x,historical}*\prod_{i}\mu_{i}$$

$\mu_{i}$ represents the mortality improvement factors unique to each wellness incentive. These adjusted historical mortality rates were then used to find the EPV of the programs’ historical expenses, which amounted to Č3.755 billion, and the mortality savings were found to be Č3.780 billion. By offsetting the savings and added expenses, the total historic mortality savings of the program were found to be Č25.3 million. The historical annual mortality savings for each product can be found below.
>Total Cumulative Projected Profits per Year - With Program vs No Program

![Historical Mortality Savings](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/120159796/77403bd3-f9c8-49bf-a05c-b8e58d49b740)


### Economic Value of the Program and Insurance Changes
The economic value of our health program was evaluated by comparing the differences in the EPV of profits with and without the wellness program. The estimated premiums, expenses and reserves of both products were modelled using projected mortality and the assumptions that the demographics of new business are consistent with historical policyholder demographic proportions and volume of new business is the linear extrapolation of historical growth trends.

The model was built around the ‘Actuarial Equivalence Principle’, which states that the EPV of future premiums must equal the EPV of future benefits and expenses. Within this framework, premiums were calculated to achieve an expected profit margin of 5% to ensure the sustainability of the products. Additionally, reserves were calculated through the ‘Net Premium Reserve’ method, whose formulae are outlined below, whereby reserves are equal to the expected prospective loss.

![Screenshot 2024-04-08 003040](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/120159796/681c016f-756f-49bb-8b10-f0a1588f376a)


By inferring these values, the expected profit forecasts from an individual policyholder of given characteristics for the T20 and SPWL products were calculated from 2024 to 2033. These figures were then aggregated according to the population projections and consequently, a comparison was made between the EPV of profits assuming the implementation of the wellness program versus assuming no changes. This results in the economic value difference of Č10,370,689.25 in favour of the wellness program. 
The key driver of this profit difference was the SPWL policy, SuperLife’s more profitable product, which cross-subsidised the Č5.3m loss projected on the 20-year term policies. This cross-subsidy is valuable as it provides opportunities for SuperLife to gain a greater market share on the term-life product, providing greater exposure to turn these customers towards SuperLife's more profitable products and grow its brand presence.
> Total Cumulative Projected Profits by Year - With Program vs. No Program

![433958583_392340550189918_3200590496252941095_n](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/120159796/ec33ce25-f49a-4bff-aeec-2d37df63b4d8)

The consistently greater profit values recorded under the program compared to those without the program in the above chart reinforce the value added by the program, as the wellness program’s cumulative profit eclipses that of SuperLife’s current product structure each year over the observed 10 years. 

### Pricing Considerations
When considering the pricing of the new policies under the wellness program, it is important to acknowledge the added expenses SuperLife will receive from the program, especially in tandem with the long-tailed nature of its business exposure. However, Superlife must also understand the importance of keeping premiums manageable to continue attracting new  business. 

Thus, we propose to add a risk margin of 5% to future premiums charged after the implementation of the policy to mitigate their right-tailed risk whilst not pricing out a significant portion of their future customer base. This risk margin should be charged to all policyholders, however, those not in the program should be charged a higher margin to subsidise the extra costs incurred from financing the wellness program, effectively providing a discount to program members, and further promoting program growth. However, it is recommended that SuperLife maintains moderately similar policy premiums between program members and those who aren’t enrolled to optimise sales growth.

## Risk Management
Significant quantitative and qualitative risks that may arise from the implementation of the health incentive program for SuperLife were identified and assessed. For each risk, ratings of the magnitude of impact and the possibility of occurrence are provided in this [risk matrix](https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/blob/f35e6ff04573ddd31a5e4af1ac29750a8fe88731/Project%20Images/Likelihood.png), alongside relevant mitigation strategies deduced to address these risks, outlined in the table below.

> Risks and Mitigation Strategies

<img width="780" alt="risk" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/a1cc4512-8d35-4447-b49c-2560ac2ea785">

### Sensitivity Analysis
Sensitivity analysis was conducted to assess the materiality of the financial impacts from favourable and unfavourable scenarios based on our key assumptions. The table below details the different scenarios investigated, the recommended range that our health plan will remain financially viable within and any insights gathered during the analysis.

> Sensitivity Testing - Scenarios, Impacts and Insights

<img width="780" alt="sens" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/165151626/e9940eea-6456-4a15-9cf9-6ed93a86a14d">

## Other Considerations
In reference to the European Union’s ban on gender-based discrimination in 2012, gender-neutral pricing models carry concerns including the potential risk of adverse selection where“67% of insurers experienced higher than expected male policyholders in their portfolio” a month post-ban (Chan, 2014)[^6]. Furthermore, material differences in projected mortality rates between the sexes have been observed. To mitigate these risks, Plus Advisory has integrated gender as a key pricing determinant. While use of sex and gender dependent pricing may invoke moral concerns such as discrimination and gender inequality, particularly in the context of the  LGBTQ+ and intersex population, regulatory and best practice guidance is currently vague (Embse, 2022)[^7]. Our evaluation is further justified by potential implicit price variation through other variables with non-zero correlation to sex, supported by the 3-fold difference in prices for the average male and female observed 5 years after implementation of gender-neutral pricing in the UK. 

Upon examining the traction of different distribution channels across all Lumarian regions, detailed in the left graph below, Plus Advisory’s marketing recommendation will primarily focus on agents and online platforms given their consistent popularity. Adopting a product-wise lens, as illustrated in the right graph below, we would advise the concentration of advertising budget and other resources on agents for SPWL given their predominance and even investment across all channels for T20.

[^6]:Chan, C.Y. (2014) The impact of gender-neutral pricing on the life insurance ..., The Impact of Gender-neutral Pricing on the Life Insurance Industry. Available at: https://www.scor.com/sites/default/files/2015_uk_chancho-yeung.pdf (Accessed: 19 March 2024).

[^7]:Von Der Embse, J. (2022.). Beyond the Binary -How Insurance Companies Can Adapt to Meet the Needs of Transgender, Non-binary, and Intersex Individuals. [online] Available at: https://www.soa.org/4aa620/globalassets/assets/files/resources/research-report/2022/age-ret-lgbtq--vonderembse.pdf(Accessed: 20 March 2024).

> Distribution Channels
<img width="828" alt="Screen Shot 2024-04-05 at 11 01 57 pm" src="https://github.com/Actuarial-Control-Cycle-T1-2024/group-page-showcase-cc2024/assets/166011691/b8a3e5cc-daa2-4ba3-8c5a-fcd57373ddf1">

## Final Recommendation
While acknowledging key limitations in our solution design, including the inability to account for health program participation mid-policy term, lack of reliability in pricing where assumptions deviate from recommended ranges, limited insight into scenarios where multiple assumptions develop adversely and constraints in the granularity of analysis due to data limitations, upon careful evaluation of the long-term viability and economic efficiency of our health program’s design and pricing strategies, Plus Advisory recommends that SuperLife integrates our health incentives with its long-term life insurance products. Given that our sensitivity analysis supports keeping costs low, we advise SuperLife to form partnerships with reputable private health clinics to reduce our health program costs through referral fees and increased goodwill. It is further advised that SuperLife carefully monitors aforementioned key metrics over both short-term and long-term timeframes, identified and emerging risks associated with our health incentives and model assumptions and features, making appropriate updates and refinements to maintain the  health program’s long-term effectiveness. 




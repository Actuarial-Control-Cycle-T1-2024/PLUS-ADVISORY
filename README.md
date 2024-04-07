# Actuarial Theory and Practice B @ UNSW
did this work
_"Tell me and I forget. Teach me and I remember. Involve me and I learn" - Benjamin Franklin_

---

### Congrats on completing the [2024 SOA Research Challenge](https://www.soa.org/research/opportunities/2024-student-research-case-study-challenge/)!

>Now it's time to build your own website to showcase your work.  
>To create a website on GitHub Pages to showcase your work is very easy.

This is written in markdown language. 
>
* Click [link](https://classroom.github.com/a/biNKOeX_) to accept your group assignment.

#### Follow the [guide doc](doc1.pdf) to submit your work. 

When you finish the task, please paste your link to the Excel [sheet](https://unsw-my.sharepoint.com/:x:/g/personal/z5096423_ad_unsw_edu_au/ETIxmQ6pESRHoHPt-PUleR4BuN0_ghByf7TsfSfgDaBhVg?rtime=GAd2OFNM3Eg) for Peer Feedback
---
>Be creative! Feel free to link to embed your [data](2024-srcsc-superlife-inforce-dataset-part1.csv), [code](sample-data-clean.ipynb), [image](unsw.png) here

More information on GitHub Pages can be found [here](https://pages.github.com/)
![](Actuarial.gif)


Pricing and Cost
---
Utilising the provided mortality experience plus the mortality table, our group projected the expected mortality of SuperLife’s insured base into the future - for program participants and non-participants. These mortality projections were then used to project the losses and premium profits earned by Superlife from program participants and non-participants, allowing us to calculate the present economic value of implementing the program. Additionally, through the same model, the mortality savings from implementing the program over the past 20 years were estimated by utilising the provided mortality table as a proxy and adjusting mortality according to program participation.

Stochastic Mortality Modelling
---
Upon comparing the mortality experience derived from the inforce dataset with the provided ultimate mortality table, shown in Appendix 5, we observed that the mortality experience  from ages 30-60 are very similar, whereas,  from ages 60+, the observed mortality rates are lower than expected. As a result of the higher variability in the crude mortality rates, particularly in the older ages due to scarcer data, we decided to smooth the mortality rates for more accurate and reliable modelling. Loess regression, a nonparametric method was selected because it is locally adaptive, allowing it to capture both local and global features of the data. Therefore, the smoothed mortality rates will incorporate information from adjacent ages, while following the overall trend and reducing sampling error. The optimal span (amount of smoothing) and degree of freedom was chosen based on the combination that minimised the test RMSE while ensuring that the train RMSE remained larger than test RSME to avoid overfitting. This resulted in a span of 0.45, which provides a balance in fitting the data, while smoothing over the noise and a degree of freedom of 2, as the quadratic polynomial curvature allowed the model to capture the non-linear increase in mortality of older ages. 

Following this, the smoothed dataset was split based on gender and used to train their respective stochastic models. A variety of stochastic models were tested, such as the Lee-Carter (LC), Cairns-Blake-Dowd (CBD), Age-Period-Cohort (APC) and the M6 models. The models were evaluated based on their residual colour map plots and AIC values. From Appendix 6, in the stochastic models for males we observed similar cohort effects indicated by the diagonal trends and age effects represented by the horizontal patterns. Notably, the simpler LC and CBD models demonstrated a higher degree of overestimation, as indicated by the dark blue regions. 

The M6 model evidently has the lowest degree of over- and under- estimation, aligning with expectation, as it is an extension of the CBD model, which is particularly effective in modelling older ages. The M6 model incorporates an additional parameter to account for the cohort effect into the CBD Model, that is clearly present in the residuals, coupled with the lowest AIC. We selected the M6 model because it displayed the best goodness of fit without compromising on overall model parsimony. The same conclusion was reached for the stochastic models for females, as shown below, however instead of age patterns, they displayed a period effect (vertical patterns). Therefore, the M6 model was used to project the base mortality rates over a 50 year-horizon for both males and females. 

AIC|Lee Carter|Cairns Blake Dowd|Age-Period-Cohort|M6
---|---|---|---|---
Males|5286|5233|5287|5232
Females|3713|3569|3705|3621

To obtain the smoking risk loading factors, we modelled death counts using a Generalised Linear Model (GLM) with smoking status as the predictor. A quasi-poisson distribution with a log link function was utilised to account for the overdispersion of the data. The data was not split based on gender due to the scarcity of deaths of female smokers in the inforce dataset. The GLM model which was trained using k-cross validation with 10 folds, yielded a coefficient of 1.58 for smokers. Since the coefficient of the GLM represented the log odds, this corresponded to smokers being 4.85x more likely to die compared to non-smokers. From Appendix 10, we see that the majority of the deaths for smokers occur around the age range of 50-70, thus we opted to apply the risk factors incrementally, beginning with a baseline risk factor of 1.30 at age 26 , then increasing it by 0.05 at every subsequent age. This gradual increase continues until age 97, with a factor of 4.85, which is maintained at this level until age 120. This approach reflects the cumulative health impacts of smoking, especially at older ages.

The final mortality rates applied in our analysis incorporate the base mortality projections derived from the M6 model, adjusted for smoking risk loading for smokers and reduction factors for individuals participating in the respective wellness plans:
$$q_{x,Final} = q_{x,Base} * R_{Wellness} * L_{Smoker}$$

The reduction factors were chosen as the midpoint of the given approximate impact of the intervention programs on mortality for a more conservative modelling approach. 

Mortality Savings
---
The mortality savings for the wellness program were found by comparing the differences between the expected present value (EPV) of total historical death benefits and expenses paid if the program had existed 20 years ago, compared to the actual death experience. The expected death benefits under the wellness program were calculated using the 2010 mortality rates as a proxy for the 20-year historical mortality. Leading to the following adjusted historical mortality rate:	

$$q_{x,adj} = q_{x,historical}*\prod_{i}\mu_{i}$$

$\mu_{i}$ represents the mortality improvement factors unique to each wellness incentive. These adjusted historical mortality rates were then used to find the EPV of the programs’ historical expenses, which amounted to Č3.755 billion, and the mortality savings were found to be Č3.780 billion. By offsetting the savings and added expenses, the total historic mortality savings of the program were found to be Č25.3 million. The historical annual mortality savings for each product can be found below.

Economic Value of the Program and Insurance Changes
---
The economic value of our health program was evaluated by comparing the differences in the EPV of profits with and without the wellness program. The estimated premiums, expenses and reserves of both products were modelled using projected mortality and the assumptions that the demographics of new business are consistent with historical policyholder demographic proportions and volume of new business is the linear extrapolation of historical growth trends.

The model was built around the ‘Actuarial Equivalence Principle’, which states that the EPV of future premiums must equal the EPV of future benefits and expenses. Within this framework, premiums were calculated to achieve an expected profit margin of 5% to ensure the sustainability of the products. Additionally, reserves were calculated through the ‘Net Premium Reserve’ method, whose formulae are outlined in Appendix 13, whereby reserves are equal to the expected prospective loss. By inferring these values, the expected profit forecasts from an individual policyholder of given characteristics for the T20 and SPWL products were calculated from 2024 to 2033. These figures were then aggregated according to the population projections and consequently, a comparison was made between the EPV of profits assuming the implementation of the wellness program versus assuming no changes. This results in the economic value difference of Č10,370,689.25 in favour of the wellness program. 
The key driver of this profit difference was the SPWL policy, SuperLife’s more profitable product, which cross-subsidised the Č5.3m loss projected on the 20-year term policies. This cross-subsidy is valuable as it provides opportunities for SuperLife to gain a greater market share on the term-life product, providing greater exposure to turn these customers towards SuperLife's more profitable products and grow its brand presence.
## Total Cumulative Projected Profits by Year - With Program vs. No Program

The consistently greater profit values recorded under the program compared to those without the program in the above chart reinforce the value added by the program, as the wellness program’s cumulative profit eclipses that of SuperLife’s current product structure each year over the observed 10 years. 

Pricing Considerations
---
When considering the pricing of the new policies under the wellness program, it is important to acknowledge the added expenses SuperLife will receive from the program, especially in tandem with the long-tailed nature of its business exposure. However, Superlife must also understand the importance of keeping premiums manageable to continue attracting new  business. 
Thus, we propose to add a risk margin of 5% to future premiums charged after the implementation of the policy to mitigate their right-tailed risk whilst not pricing out a significant portion of their future customer base. This risk margin should be charged to all policyholders, however, those not in the program should be charged a higher margin to subsidise the extra costs incurred from financing the wellness program, effectively providing a discount to program members, and further promoting program growth. However, it is recommended that SuperLife maintains moderately similar policy premiums between program members and those who aren’t enrolled to optimise sales growth.



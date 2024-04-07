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

Mortality Savings
---
The mortality savings for the wellness program were found by comparing the differences between the expected present value (EPV) of total historical death benefits and expenses paid if the program had existed 20 years ago, compared to the actual death experience. The expected death benefits under the wellness program were calculated using the 2010 mortality rates as a proxy for the 20-year historical mortality. Leading to the following adjusted historical mortality rate:	

$$q_{x,adj} = q_{x,historical}*\prod_{i}\mu_{i}$$

$\mu_{i}$ represents the mortality improvement factors unique to each wellness incentive. These adjusted historical mortality rates were then used to find the EPV of the programs’ historical expenses, which amounted to Č3.755 billion, and the mortality savings were found to be Č3.780 billion. By offsetting the savings and added expenses, the total historic mortality savings of the program were found to be Č25.3 million. The historical annual mortality savings for each product can be found below.

Economic Value of the Program and Insurance Changes
---
The economic value of our health program was evaluated by comparing the differences in the EPV of profits with and without the wellness program. The estimated premiums, expenses and reserves of both products were modelled using projected mortality and the assumptions that the demographics of new business are consistent with historical policyholder demographic proportions and volume of new business is the linear extrapolation of historical growth trends, as illustrated in Appendix 12.
##1. Future New Business Volume Projections
##2. Future New Business Demographics
The model was built around the ‘Actuarial Equivalence Principle’, which states that the EPV of future premiums must equal the EPV of future benefits and expenses. Within this framework, premiums were calculated to achieve an expected profit margin of 5% to ensure the sustainability of the products. Additionally, reserves were calculated through the ‘Net Premium Reserve’ method, whose formulae are outlined in Appendix 13, whereby reserves are equal to the expected prospective loss. By inferring these values, the expected profit forecasts from an individual policyholder of given characteristics for the T20 and SPWL products were calculated from 2024 to 2033. These figures were then aggregated according to the population projections and consequently, a comparison was made between the EPV of profits assuming the implementation of the wellness program versus assuming no changes. This results in the economic value difference of Č10,370,689.25 in favour of the wellness program. 
The key driver of this profit difference was the SPWL policy, SuperLife’s more profitable product, which cross-subsidised the Č5.3m loss projected on the 20-year term policies. This cross-subsidy is valuable as it provides opportunities for SuperLife to gain a greater market share on the term-life product, providing greater exposure to turn these customers towards SuperLife's more profitable products and grow its brand presence.
##Total Cumulative Projected Profits by Year - With Program vs. No Program

The consistently greater profit values recorded under the program compared to those without the program in the above chart reinforce the value added by the program, as the wellness program’s cumulative profit eclipses that of SuperLife’s current product structure each year over the observed 10 years. 

Pricing Considerations
---
When considering the pricing of the new policies under the wellness program, it is important to acknowledge the added expenses SuperLife will receive from the program, especially in tandem with the long-tailed nature of its business exposure. However, Superlife must also understand the importance of keeping premiums manageable to continue attracting new  business. 
Thus, we propose to add a risk margin of 5% to future premiums charged after the implementation of the policy to mitigate their right-tailed risk whilst not pricing out a significant portion of their future customer base. This risk margin should be charged to all policyholders, however, those not in the program should be charged a higher margin to subsidise the extra costs incurred from financing the wellness program, effectively providing a discount to program members, and further promoting program growth. However, it is recommended that SuperLife maintains moderately similar policy premiums between program members and those who aren’t enrolled to optimise sales growth.



## Stochastic Mortality Modelling
Upon comparing the mortality experience derived from the inforce dataset with the provided ultimate mortality table, shown in Appendix 5, we observed that the mortality experience  from ages 30-60 are very similar, whereas,  from ages 60+, the observed mortality rates are lower than expected. As a result of the higher variability in the crude mortality rates, particularly in the older ages due to scarcer data, we decided to smooth the mortality rates for more accurate and reliable modelling. Loess regression, a nonparametric method was selected because it is locally adaptive, allowing it to capture both local and global features of the data. Therefore, the smoothed mortality rates will incorporate information from adjacent ages, while following the overall trend and reducing sampling error. The optimal span (amount of smoothing) and degree of freedom was chosen based on the combination that minimised the test RMSE while ensuring that the train RMSE remained larger than test RSME to avoid overfitting. This resulted in a span of 0.45, which provides a balance in fitting the data, while smoothing over the noise and a degree of freedom of 2, as the quadratic polynomial curvature allowed the model to capture the non-linear increase in mortality of older ages. 

Following this, the smoothed dataset was split based on gender and used to train their respective stochastic models. A variety of stochastic models were tested, such as the Lee-Carter (LC), Cairns-Blake-Dowd (CBD), Age-Period-Cohort (APC) and the M6 models. The models were evaluated based on their residual colour map plots and AIC values. From Appendix 6, in the stochastic models for males we observed similar cohort effects indicated by the diagonal trends and age effects represented by the horizontal patterns. Notably, the simpler LC and CBD models demonstrated a higher degree of overestimation, as indicated by the dark blue regions. 

The M6 model evidently has the lowest degree of over- and under- estimation, aligning with expectation, as it is an extension of the CBD model, which is particularly effective in modelling older ages. The M6 model incorporates an additional parameter to account for the cohort effect into the CBD Model, that is clearly present in the residuals. Coupled with the lowest AIC, as seen in Appendix 7, we selected the M6 model because it displayed the best goodness of fit without compromising on overall model parsimony. The same conclusion was reached for the stochastic models for females, as shown in Appendixes 8 & 9, however instead of age patterns, they displayed a period effect (vertical patterns). Therefore, the M6 model was used to project the base mortality rates over a 50 year-horizon for both males and females. 

To obtain the smoking risk loading factors, we modelled death counts using a Generalised Linear Model (GLM) with smoking status as the predictor. A quasi-poisson distribution with a log link function was utilised to account for the overdispersion of the data. The data was not split based on gender due to the scarcity of deaths of female smokers in the inforce dataset. The GLM model which was trained using k-cross validation with 10 folds, yielded a coefficient of 1.58 for smokers. Since the coefficient of the GLM represented the log odds, this corresponded to smokers being 4.85x more likely to die compared to non-smokers. From Appendix 10, we see that the majority of the deaths for smokers occur around the age range of 50-70, thus we opted to apply the risk factors incrementally, beginning with a baseline risk factor of 1.30 at age 26 , then increasing it by 0.05 at every subsequent age. This gradual increase continues until age 97, with a factor of 4.85, which is maintained at this level until age 120. This approach reflects the cumulative health impacts of smoking, especially at older ages.

The final mortality rates applied in our analysis incorporate the base mortality projections derived from the M6 model, adjusted for smoking risk loading for smokers and reduction factors for individuals participating in the respective wellness plans:
qx, Final= qx , Base* RWellness* LSmoker
The reduction factors were chosen as the midpoint of the given approximate impact of the intervention programs on mortality for a more conservative modelling approach. 

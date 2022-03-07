# HYPOTHESIS TESTING
#Hypothesis testing is a part of statistical analysis, where we test the 
#assumptions made regarding a population parameter

#CASE STUDY;

#SUPER MARKET LOYALTY PROGRAM: a SUPERMARKET PLANS TO LAUNCH A LOYALTY PROGRAM,IF IT RESULT IN AVERAGE SPENDING PER SHOPPER OF MORE THAN $120 PER WEEK,
#A random sample of 80nshoppers enrolled in the pilot program spent an average of $130 in a week with a standard deviation of 440
#Should the Loyalty Program launched ??

#As per above we have following data with us

n=80
sd=40
xbar=130
mu=120   # Thresh hold condition

#we have to decide about Null and Alternate Hypothesis?
# Ho = Avg.spending <= 120, will NOT launch the program
# Ha = Avg.spending <= 120, will launch the program

# Here, Random Sample has been given so will apply 't' formula

(xbar-mu)/(sd/sqrt(n))

tstat<-(xbar-mu)/(sd/sqrt(n))
tstat   # is 2.236068

# based on above t score will calculate 'pt'

?pt          #The Student t Distribution

#To calculate 'Pt' we require t score value, degree of freedom i.e. n-1=80-1=79
pt(tstat,79)      # 0.985 ( area to the left to t score 2.23)

1-pt(tstat,79)    # 0.014 ( to get area right to t score 2.23, will subtract from '1' ( area under whole curve))
 
#To decide about Ho and Ha ,we have to decide risk appetite value i.e.5%=0.05
#now, p value = 0.05
#NOTE: if p value < alpha(0.05) then will ACCEPT Ho and REJECT Ha

#In this case p value is 0.014 < 0.05 ( alpha) ,will ACCEPT Ha i.e. will launch the Loyalty program
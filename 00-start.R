library("exams")
myexam <- list(
  "tstat.Rnw",
  "tstat2.Rnw",
  "relfreq.Rnw",
  "anova.Rnw",
  "boxplots.Rnw"
)


exams2html(myexam)
exams2pdf(myexam)

set.seed(1234)
exams2blackboard(myexam)

set.seed(1090)
exams2html("ttest.Rmd")
set.seed(1090)
exams2pdf("ttest.Rmd")
s <- stresstest_exercise("ttest.Rmd") 
plot(s)

#Examining Exams
library("psychotools") 
data("MathExam14W", package = "psychotools")
mex <- subset(MathExam14W, nsolved > 0 & nsolved < 13)
plot(mex$solved)
mr <- raschmodel(mex$solved)
plot(mr)

#Examining Exams
hist(as.numeric(MathExam14W$points), breaks = 10) 
piplot(mr)
ma <- anchortest(solved ~ group, data = mex, adjust = "single-step") 
plot(ma$final_tests)
set.seed(1090)
exams2html("capitals.Rmd")
set.seed(1090)
exams2pdf("ttest.Rmd")

set.seed(1090)
exams2html("capitals.Rmd")
set.seed(1090)
exams2pdf("capitals.Rmd")


myexam <- list(
  "tstat.Rnw",
  "tstat2.Rnw",
  "relfreq.Rnw",
  "anova.Rnw",
  "boxplots.Rnw",
  "capitals.Rmd"
)

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

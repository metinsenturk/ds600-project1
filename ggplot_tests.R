
forestfires

ggplot(forestfires, aes(x=DMC)) + 
  geom_histogram(aes(y = ..density..)) + 
  geom_density(color = "red") + 
  geom_rug()

qqPlot(forestfires$DMC, main = "QQ plot", ylab = "")

ggplot(forestfires, aes(x=DMC, y=sqrt(area))) +
  geom_boxplot() + 
  geom_rug() + 
  geom_hline(aes(yintercept=mean(forestfires$DMC, na.rm = T)), linetype = 2, color = "red") +
  scale_x_discrete(breaks = NULL)

symnum(cor(forestfires[5:12], use = "complete.obs"))

fit <- lm(Y ~ DMC + DC, forestfires) 
summary(fit)

library(e1071)
svm_model=svm(area~temp+RH+wind+rain,data=forestfires)
summary(svm_model)


preds = predict(svm_model, forestfires[-13])
table(svm_model$fitted, Actual=forestfires$area)
plot(svm_model$fitted, forestfires$area, col=c('red','blue'))

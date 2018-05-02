
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

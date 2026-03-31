# Load libraries
library(ggplot2)

# Load data
sclc_data <- read.csv("data/sclc_pci_data.csv")

# Create logit model
logit_p <- 1.2 +
  1.2 * (sclc_data$Stage == "Limited") +
  1.5 * (sclc_data$Response_to_initial_therapy == "Complete") +
  0.7 * (sclc_data$Response_to_initial_therapy == "Partial") -
  0.04 * sclc_data$Age -
  0.6 * sclc_data$Performance_status -
  0.3 * sclc_data$Comorbidity_score

# Convert to probability
p <- exp(logit_p) / (1 + exp(logit_p))

# Simulate PCI receipt
set.seed(123)
sclc_data$PCI_received <- rbinom(nrow(sclc_data), 1, p)

# Convert to factor
sclc_data$PCI_received <- as.factor(sclc_data$PCI_received)

# Plot
plot_age <- ggplot(sclc_data, aes(x = Age, fill = PCI_received)) +
  geom_histogram(alpha = 0.6, position = "identity", bins = 20) +
  labs(title = "Age Distribution by PCI Receipt")

# Save figure
ggsave("figures/age_histogram.png", plot_age, dpi = 300)

# Summary
table(sclc_data$PCI_received)model <- glm(PCI_received ~ Age + Stage + Response_to_initial_therapy +
               Performance_status + Comorbidity_score,
             data = sclc_data,
             family = binomial)

summary(model)
model <- glm(PCI_received ~ Age + Stage + Response_to_initial_therapy +
               Performance_status + Comorbidity_score,
             data = sclc_data,
             family = binomial)

summary(model)
exp(coef(model))  # Odds ratios

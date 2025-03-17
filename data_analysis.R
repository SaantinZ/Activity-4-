# Load necessary libraries
install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)

# Create sample data
data <- data.frame(
  Category = c("A", "B", "C", "A", "B", "C"),
  Value = c(10, 20, 30, 40, 50, 60)
)

# Summarize data
summary_stats <- data %>%
  group_by(Category) %>%
  summarise(Mean = mean(Value))

# Print results
print(summary_stats)

# Create a simple plot
ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_bar(stat = "identity") +
  theme_minimal()


#Defining the folder path
data_folder <- "plotting_assignment/data"

# Creating the folder
#By saying if it doesn't exist, to add it 
if (!dir.exists(data_folder)) {
  dir.create(data_folder, recursive = TRUE)
}

# Asking R to simulate a speed dating dataset
set.seed(123)  # For reproducibility
n <- 100  # Number of participants

speed_dating_data <- data.frame(   
  participant_id = 1:n,      #id from 1 to n (100)
  age = sample(18:40, n, replace = TRUE),     #age between 18 and 40, the same age can be chosen more than once
  gender = sample(c("Male", "Female", "Non-binary"), n, replace = TRUE, prob = c(0.45, 0.45, 0.1)), #Assignign randomly gender taking into account the probability, 45% female, 45% male and 10% nb
  attractiveness_rating = runif(n, 1, 10),  # Random scores from 1 to 10, simulating attractiveness
  interests_match = sample(0:1, n, replace = TRUE, prob = c(0.6, 0.4)),  # 0 = No match, 1 = Match of interests,60%chances of no match, 40% of match
  conversation_length = rnorm(n, mean = 5, sd = 2)  # Normally distributed conversation length
)

# Save the data as a CSV file inside the "data" folder
write.csv(speed_dating_data, file = file.path(data_folder, "speed_dating_data.csv"), row.names = FALSE)

# Message to confirm
cat("Speed dating dataset created and saved in 'plotting_assignment/data/speed_dating_data.csv'\n")

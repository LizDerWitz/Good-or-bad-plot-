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
  participant_id = 1:n,    
  age = sample(18:40, n, replace = TRUE),    
  gender = sample(c("Male", "Female"), n, replace = TRUE),
  attractiveness_rating = runif(n, 1, 10),  
  interests_match = sample(0:1, n, replace = TRUE, prob = c(0.6, 0.4)), 
  conversation_length = rnorm(n, mean = 5, sd = 2), 
  attraction_feeling = sample(0:1, n, replace = TRUE, prob = c(0.5, 0.5)), 
  partner_id = sample(1:n, n, replace = TRUE))

# Save the data as a CSV file inside the "data" folder
write.csv(speed_dating_data, file = file.path(data_folder, "speed_dating_data.csv"), row.names = FALSE)

# Message to confirm
cat("Speed dating dataset created and saved in 'plotting_assignment/data/speed_dating_data.csv'\n")

#Defining the folder path
data_folder <- "plotting_assignment/data"

# Creating the folder
#Checking if the folder already exist, if not then: 
if (!dir.exists(data_folder)) {dir.create(data_folder, recursive = TRUE)}

# Asking R to simulate a speed dating dataset
set.seed(123)  # For reproducibility
n <- 1000  # Number of participants

speed_dating_data <- data.frame(   
  participant_id = 1:n,    
  age = sample(18:40, n, replace = TRUE),    
  gender = sample(c("Male", "Female"), n, replace = TRUE),
  attractiveness_rating = runif(n, 1, 10),  
  attraction_feeling = sample(0:1, n, replace = TRUE, prob = c(0.5, 0.5)),
  interests_match = sample(0:1, n, replace = TRUE, prob = c(0.6, 0.4)),
  partner_id = sample(1:n, n, replace = TRUE))


# Save the data as a CSV file inside the "data" folder:
write.csv(speed_dating_data, file = "speed_dating_data.csv", row.names = FALSE)



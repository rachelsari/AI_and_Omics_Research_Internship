# 1. Set Working Directory
# Create a new folder on your computer "AI_Omics_Internship_2025".

# 2. Create Project Folder

# In RStudio, create a new project named "Module_I" in your "AI_Omics_Internship_2025" folder.

# Inside the project directory, create the following subfolders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")
# ---------------------------------------------------------------------------
# 3. Download "patient_info.csv" dataset from GitHub repository

# load the dataset into your R environment
data <- read.csv(file.choose())
View(data)
str(data)

# Inspect the structure of the dataset using appropriate R functions
# Summary statistics
summary(data)

# Identify variables with incorrect or inconsistent data types.

# Convert variables to appropriate data types where needed
data$gender_fac <- as.factor(data$gender)
data$diagnosis_fac <- as.factor(data$diagnosis)
data$smoker_fac <- as.factor(data$smoker)
                             
# Create a new variable for smoking status as a binary factor:

# 1 for "Yes", 0 for "No"
data$gender_num <- ifelse(data$gender == "Male", 0, 1)
data$diagnosis_num <- ifelse(data$diagnosis == "Normal", 0, 1)
data$smoking_bin <- ifelse(data$smoker == "Yes", 1, 0)

str(data)
table(data$smoker, data$smoking_bin)

write.csv(data, "clean_data/patient_info_clean.csv")

# Save your R script in your script folder with name "class_Ib"
# Upload "class_Ib" R script into your GitHub repository


library(haven)

# Specify the directory containing your .sas7bdat files
directory <- "source"
write_dir <- "destination"

# Loop through each .sas7bdat file in the directory
for (file in dir(directory, pattern = "\\.sas7bdat$")) {
  file_path <- file.path(directory, file)
  df <- read_sas(file_path)
  csv_file <- gsub("\\.sas7bdat$", ".csv", file)
  write.csv(df, file.path(write_dir, csv_file), row.names = FALSE)
}



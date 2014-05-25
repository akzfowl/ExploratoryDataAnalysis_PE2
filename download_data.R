# Download the file if necessary (29MB)
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
filePath <- "./data/exdata%2Fdata%2FNEI_data.zip"

if (!file.exists("data")) {
  dir.create("data")
}

if (!file.exists(filePath)) {
  download.file(fileUrl, destfile = filePath)
  dateDownloaded <- date()
  dateDownloaded
  
  # And unzip it
  unzip(filePath, exdir="./data")
}

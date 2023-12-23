text_from_image <- function(image,lang){
  
  # load packages
  suppressWarnings(library(tesseract))
  suppressWarnings(library(knitr))
  suppressWarnings(library(magick))
  
  # read image
  image <- image_read(image)
  
  # extract text from image
  text <- ocr(image = image,
              engine = tesseract(language = lang))
  
  # clean text
  text_clean <- gsub("\n"," ",text)
  
  # return cleaned tex
  return(text_clean)
  
}


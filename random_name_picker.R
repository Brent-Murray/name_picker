library(crayon)

names = c("Group A: Mapping and monitoring wildlife habitate in the high arctic - Kianna & Dimitrios", 
          "Group B: Use of drone based remote sensing in forestry - Fei, Xinyu & Heyuan", 
          "Groub C: Remote sensing techniques to monitor oil spills - Sander & Valerie",
          "Group D: Remote sensing and urban growth monitoring - Skyler & Nora",
          "Group E: Using Landsat for wildfire risk assessment/monitoring - Michael & Rhythm",
          "Group F: Remote sensing applications to quantify biodiversity in conservation/reforestation projects - Fitz & Colin",
          "Group G: Remote sensing of landscape metrics - Wendy, Chenyao & Jessie",
          "Group H: Glacial time series using remote sensing - Andrea & Axel",
          "Group I: Applications of SPOT imagery - Stephani & Ashley",
          "Group J: Nighttime satellite optical imagery for socioeconomic dynamics - Zhenpeng, Zechen, & Victor",
          "Group K: Object based image classification - Aster, Xuan & Shijing", 
          "Group L: Mapping kelp using google earth engine, drones, and lidar - Hannah, Han & Gwyn")

colours = c("red", "green", "yellow", "blue", "magenta", "cyan", 
            "white", "silver")

quick_print <- function(names, colours){
  for (i in 1:50){
    x <- sample(names, 1)
    y <- sample(colours, 1)
    max_length <- max(nchar(names)) + 20  # Calculate the maximum length needed
    padding <- paste(rep(" ", max_length - nchar(x)), collapse = "")
    
    if (y == "red"){
      cat(red(paste0(x, padding), "\r"))
    }
    
    if (y == "green"){
      cat(green(paste0(x, padding), "\r"))
    }
    
    if (y == "yellow"){
      cat(yellow(paste0(x, padding), "\r"))
    }
    
    if (y == "blue"){
      cat(blue(paste0(x, padding), "\r"))
    }
    
    if (y == "magenta"){
      cat(magenta(paste0(x, padding), "\r"))
    }
    
    if (y == "cyan"){
      cat(cyan(paste0(x, padding), "\r"))
    }
    
    if (y == "white"){
      cat(white(paste0(x, padding), "\r"))
    }
    
    if (y == "silver"){
      cat(silver(paste0(x, padding), "\r"))
    }
    
    flush.console()
    Sys.sleep(0.1)
  }
}

name_picker <- function(names, colours){
  names2 <- names
  max_length <- max(nchar(names)) + 20  # Calculate the maximum length needed
  
  for (i in 1:length(names)){
    flush.console()
    quick_print(names, colours)  # Assuming this is a function you have defined
    x <- sample(names2, 1, replace=FALSE)
    y <- sample(colours, 1)
    padding <- paste(rep(" ", max_length - nchar(x)), collapse = "")
    
    if (y == "red"){
      cat(red(paste0(x, padding), "\r"))
    }
    
    if (y == "green"){
      cat(green(paste0(x, padding), "\r"))
    }
    
    if (y == "yellow"){
      cat(yellow(paste0(x, padding), "\r"))
    }
    
    if (y == "blue"){
      cat(blue(paste0(x, padding), "\r"))
    }
    
    if (y == "magenta"){
      cat(magenta(paste0(x, padding), "\r"))
    }
    
    if (y == "cyan"){
      cat(cyan(paste0(x, padding), "\r"))
    }
    
    if (y == "white"){
      cat(white(paste0(x, padding), "\r"))
    }
    
    if (y == "silver"){
      cat(silver(paste0(x, padding), "\r"))
    }
    
    flush.console()
    var = readline(prompt = "Continue?")
    names2 <- names2[names2 != x]
  }
}

name_picker(names, colours)

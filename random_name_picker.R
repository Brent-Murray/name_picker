library(crayon)

names = c("Group A", 
          "Group B", 
          "Group C",
          "Group D",
          "Group E",
          "Group F",
          "Group G",
          "Group H",
          "Group I",
          "Group J",
          "Group K", 
          "Group L",)

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

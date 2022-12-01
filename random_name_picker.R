library(crayon)

names = c("Group 1", "Group 2", "Group 3", "Group 4", "Group 5", "Group 10", "Group 100000")
colours = c("red", "green", "yellow", "blue", "magenta", "cyan", 
            "white", "silver")

quick_print <- function(names, colours){
  for (i in 1:50){
    x <- sample(names, 1)
    y <- sample(colours, 1)
    
    if (y == "red"){
      cat(red(x, "    \r"))
    }
    
    if (y == "green"){
      cat(green(x, "    \r"))
    }
    
    if (y == "yellow"){
      cat(yellow(x, "    \r"))
    }
    
    if (y == "blue"){
      cat(blue(x, "    \r"))
    }
    
    if (y == "magenta"){
      cat(magenta(x, "    \r"))
    }
    
    if (y == "cyan"){
      cat(cyan(x, "    \r"))
    }
    
    if (y == "white"){
      cat(white(x, "    \r"))
    }
    
    if (y == "silver"){
      cat(silver(x, "    \r"))
    }
    
    flush.console()
    Sys.sleep(0.1)
  }
}

name_picker <- function(names, colours){
  names2 <- names
  for (i in 1:length(names)){
    flush.console()
    quick_print(names, colours)
    x <- sample(names2, 1, replace=FALSE)
    y <- sample(colours, 1)
    
    if (y == "red"){
      cat(red(x, "              \r"))
    }
    
    if (y == "green"){
      cat(green(x, "              \r"))
    }
    
    if (y == "yellow"){
      cat(yellow(x, "              \r"))
    }
    
    if (y == "blue"){
      cat(blue(x, "              \r"))
    }
    
    if (y == "magenta"){
      cat(magenta(x, "              \r"))
    }
    
    if (y == "cyan"){
      cat(cyan(x, "              \r"))
    }
    
    if (y == "white"){
      cat(white(x, "              \r"))
    }
    
    if (y == "silver"){
      cat(silver(x, "              \r"a))
    }
    
    flush.console()
    var = readline(prompt = "Continue?")
    names2 <- names2[names2 != x]
  }
}

name_picker(names, colours)
#' Area of a Square
#'
#' A simple function to find the area of a square.
#'
#' @param x Width of the square (positive number)
#' @param y Height of the square (positive number)
#' @param graph Graphs the shape of the square
#'
#' @return The area of a square with width x and height y, and a graph of the square if requested.
#' @import ggplot2
#' @export
#'
#' @examples
#' area_square(5,4)
area_square <- function(x,y){
  if ((!is.numeric(x)) | (!is.numeric(y)) | x < 0 | y < 0 ){
    stop('Squares must have positive and numeric widths and heights!', call. = FALSE)
  }
  else{
    z <- x*y
    return(z)
  }
}
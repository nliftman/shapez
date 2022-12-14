#' Area of a Regular Octagon
#'
#' A simple function to find the area of a regular octagon
#'
#' @param length Length of one side of the regular octagon (positive number)
#' @param graph Indicator variable for graphing option (0 for no graph, 1 for graph)
#'
#' @return The area of a regular octagon with side lengths x.
#' @export
#'
#' @examples
#' area_octagon(3, 0 )
area_octagon <- function(length, graph){
  #check if length is numeric
  if (!is.numeric(length) | length < 0 ){
    stop("Side lengths of octagons must be positive and numeric!")
  }
  else{
    #calculate area
    t <- {(2*(1+sqrt(2)))}*length^2
    if (graph == 1){
      #graph if requested
      print(shapez::graph_octagon(length))
      return(t)
    }
    else if (graph == 0){
      #return with no graph
      return(t)
    }
    else{
      #stops if graphing options not met
      stop('You must input either 0 or 1 to determine graphing options')
    }
  }
}

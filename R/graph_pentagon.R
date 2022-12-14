#' Graph Pentagon
#'
#' A simple function to graph a pentagon
#'
#' @param length Length of one side of the regular pentagon, also known as a perimeter. (positive number)
#' @param apothem Length from the center of one side of the regular pentagon to the center, also known as the apothem. (positive number)
#'
#' @return Graph of the area of a pentagon
#' @import ggplot2
#' @export
#'
#' @examples
#' graph_pentagon(2, 4)
graph_pentagon <- function(length, apothem){
  #degrees to radians
  #r = (d*pi)/180
  base_total = (sin((108*pi)/(180))*length)/(sin((36*pi)/(180)))
  a = (base_total-length)/2
  b = sqrt(length^2 - a^2)

  pentagon_df <- data.frame(x = c(0, a, a+length, 2*a+length, base_total/2),
                            y = c(b, 0, 0, b, 2*b))

  ggplot(data = pentagon_df, aes(x, y)) +
    geom_point(data = pentagon_df, aes(x,y)) +
    geom_segment(x = 0, y = b, xend = a, yend = 0, color ="#6d4ee9")+
    geom_segment(x = a, y = 0, xend = a+length, yend = 0, color ="#6d4ee9")+
    geom_segment(x = a+length, y = 0, xend = 2*a+length, yend = b, color ="#6d4ee9") +
    geom_segment(x = 2*a+length, y = b, xend = (base_total/2), yend = 2*b, color ="#6d4ee9") +
    geom_segment(x = (base_total/2), y = 2*b, xend = 0, yend = b, color ="#6d4ee9") +
    xlab("Width of Pentagon") +
    ylab("Height of Pentagon") +
    coord_fixed(ratio = 1, xlim = NULL, ylim = NULL, expand = TRUE, clip = "on")
}

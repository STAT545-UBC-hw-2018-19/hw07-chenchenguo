#' @title Reorder factors in a descending order
#'
#' @desciption Implementing through desc() function of dplyr
#'
#'
#' @param  one factor
#'
#' @return same factor but in descending order
#'
#' @usage fac_reorder()
#'
#' @export

fac_reorder <- function(x){
  # firstly to check whether input is a factor
  fac_check(x)
  #return in descending order
  return(reorder(x, dplyr::desc(x)))
}

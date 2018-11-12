#' @title Factors check
#'
#' @description check whether it is a factor
#'
#' @param  one factor
#'
#' @return error(if not a factor)
#'
#' @usage fac_check()
#'
#' @export


fac_check <- function(x){
  if(!is.factor(x)){
    stop("Invalid input")
  }
}

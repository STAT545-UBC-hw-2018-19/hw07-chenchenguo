#' @title Factors detect whether the input is a character
#'
#' @description If the input is a character, output FALSE
#' If the input is a factor, output TRUE
#'
#' @param  one factor
#'
#' @return TRUE(factor), FALSE(character)
#'
#' @usage fac_detect()
#'
#' @export

fac_detect <- function(x){
  # use is.factor to check whether input is a factor
  if(!is.factor(x)){
    stop("Input is not a factor. Please retry.")
  }
  # return if the input is not the same length of unique values
  return(length(unique(x))!= length(x))
}

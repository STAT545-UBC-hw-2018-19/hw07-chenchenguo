#' @title Setting levels as it appears in data
#'
#' @desciption Set levels to the order in which they appear
#'             in the data: "as is"
#'
#'
#' @param  one factor
#'
#' @return same factor but whose level set to the order of itself
#'
#' @usage fac_set()
#'
#' @export

fac_set <- function(x){
  # firstly to check whether input is a factor
  fac_check(x)
  # return to reset levels
  return(factor(x, as.character((unique(x)))))
}

#' @title Data frame read and write
#'
#' @desciption To write and read data frames to plain text delimited files
#'             while retaing factor levels.
#'
#'
#' @param  one dataframe or a path where data frame stored
#'
#' @return a data frame read from files
#'
#' @usage dataf_read(), dataf_write()
#'
#' @export

dataf_read <- function(df_name, level = NA){
  #read_csv to read data
  read_data <- readr::read_csv(df_name)

  if(is.na(level)){
    level <- paste0(dirname(df_name, " / ", "levels.txt"))

  }
  # get levels
  datalevel <- dget(level)
  #then set level for dataframe
  for (i in seq_along(datalevel)){
    # transmit column to factor
    read_data[[names(level[i])]] <- as.factor(read_data[[names(level[i])]])
    # then use levels() to set levels for factor
    levels(read_data[[names(datalevel[i])]]) <- datalevel[i]
  }
  # return to read_data

  return(read_data)

}

dataf_write <- function(df, file, level=NA){
  # firstly check whether input is valid
  fac_check(df)
  readr::write_csv(df, file)

  # get factor column name

  factor_col <- names(Filter(is.factor, df))

  if(is.na(level)){
    # the path of file can get from dirname() function
    level <- paste0(dirname(file), "/", "new.txt")

  }

  dput(lapply(df[factor_col], levels), level)
}

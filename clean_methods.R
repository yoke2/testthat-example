# methods for cleaning columns

clean_col_1 <- function(input_data) {
    #demo for test success
    output_data <- input_data
    if(input_data == "-1.0") output_data <- "NA"
    return(output_data)
}

clean_col_2 <- function(input_data) {
    return(input_data)
}

clean_col_3 <- function(input_data) {
    return(input_data)
}

clean_col_4 <- function(input_data) {
    return(input_data)
}

clean_col_5 <- function(input_data) {
    #demo for test failure
    output_data <- input_data
    if(input_data == "SENTOSA") output_data <- "WRONG VALUE,test,comma" # supposed to be setosa
    return(output_data)
}
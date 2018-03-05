#' translate English spelled quantities into their integer counterparts.
#'
#' Allows you to translate to integer numerical words spelled in English
#' Text must be previously cleaned & removed extraneous words or symbols
#' Quantities MUST be written in a correct English (this is not a grammar tool)
#' The upper limit is up to the millions range. Cents must be removed.
#'
#' @keywords money, currency, euros
#' @export
#' @param x A English word for a number.
#' @importFrom magrittr %>%
#' @examples
#' to_number("one thousand and seventy two")
#'
#'

to_number <- function(x) {

  if (!requireNamespace("magrittr", quietly = TRUE)) {
    stop("magrittr is needed for this function to work. Please install it.",
         call. = FALSE)
  }
    x <- 
    gsub("-", " ", x) %>% 
    gsub("eleven", "+11", . , ignore.case = T) %>%
    gsub("twelve", "+12", . , ignore.case = T ) %>%
    gsub("thirteen", "+13", . , ignore.case = T) %>%
    gsub("fourteen", "+14", . , ignore.case = T) %>%
    gsub("fifteen", "+15", . , ignore.case = T) %>%
    gsub("sixteen", "+16", . , ignore.case = T) %>%
    gsub("seventeen", "+17", . , ignore.case = T) %>%
    gsub("eighteen", "+18", . , ignore.case = T) %>%
    gsub("nineteen", "+19", . , ignore.case = T) %>%
    gsub("twenty", "+20", . , ignore.case = T) %>%
    gsub("thirty", "+30", . , ignore.case = T) %>%
    gsub("forty", "+40", . , ignore.case = T) %>%
    gsub("fifty", "+50", . , ignore.case = T) %>%
    gsub("sixty", "+60", . , ignore.case = T) %>%
    gsub("seventy", "+70", . , ignore.case = T) %>%
    gsub("eighty", "+80", . , ignore.case = T) %>%
    gsub("ninety", "+90", . , ignore.case = T) %>%
    gsub("one hundred", "+100", . , ignore.case = T) %>%
    gsub("two hundred", "+200", . , ignore.case = T) %>%
    gsub("three hundred", "+300", . , ignore.case = T) %>%
    gsub("four hundred", "+400", . , ignore.case = T) %>%
    gsub("five hundred", "+500", . , ignore.case = T) %>%
    gsub("six hundred", "+600", . , ignore.case = T) %>%
    gsub("seven hundred", "+700", . , ignore.case = T) %>%
    gsub("eight hundred", "+800", . , ignore.case = T) %>%
    gsub("nine hundred", "+900", . , ignore.case = T) %>%
    gsub("one", "+1", . , ignore.case = T) %>%
    gsub("two", "+2", . , ignore.case = T) %>%
    gsub("three", "+3", . , ignore.case = T) %>%
    gsub("four", "+4", . , ignore.case = T) %>%
    gsub("five", "+5", . , ignore.case = T) %>%
    gsub("six", "+6", . , ignore.case = T) %>%
    gsub("seven", "+7", . , ignore.case = T) %>%
    gsub("eight", "+8", . , ignore.case = T) %>%
    gsub("nine", "+9", . , ignore.case = T) %>%
    gsub("millions", ")*(1000000)+(0", . , ignore.case = T) %>%
    gsub("millon", ")*(1000000)+(0", . , ignore.case = T) %>%
    gsub("thousand", ")*(1000)+(0", . , ignore.case = T) %>%
    gsub("hundred", "+100", . , ignore.case = T) %>%
    gsub("ten", "+10", . , ignore.case = T) %>%
    gsub("one", "+1", . , ignore.case = T) %>%
    gsub("and", "", . , ignore.case = T) %>%
    gsub(" ", "", . , ignore.case = T) %>%
    gsub("^", "(0", . , ignore.case = T) %>%
    gsub("$", ")", . , ignore.case = T) %>%
    gsub("\\(0\\(", "", . , ignore.case = T ) %>%
    gsub("\\+\\+", "\\+\\(", . , ignore.case = T ) %>%
    gsub("\\)\\+\\)", "\\)", . , ignore.case = T )

  return(as.integer(eval(parse(text = x))))
}

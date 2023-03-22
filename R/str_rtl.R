str_rtl <- function(..., multiline = FALSE) {
  if (multiline)
  {
    stringr::str_c("\u202B", stringr::str_c(..., sep = "\n\u202B", collapse = "\n\u202B"))
  }
  else
  {
    stringr::str_c("\u202B", stringr::str_c(..., sep = "\u202B"))
  }
}

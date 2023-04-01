# Helper function to create the package's logo
create_logo <- function() {
  image_url <- system.file("man/figures/left-arrow.png", package = "rtlr")
  logo_url <- "man/figures/logo.png"
  logo <- hexSticker::sticker(
    image_url,
    package = "rtlr",
    p_size = 50,
    p_y = 1.2,
    p_color = "black",
    s_y = 0.6,
    s_x = 1,
    s_width = 0.45,
    h_fill = "#8ecff5",
    h_color = "black",
    spotlight = TRUE,
    l_y = 1,
    l_width = 5,
    l_height = 5,
    l_alpha = 0.6,
    filename = logo_url
  )

  # Put the arrow image in fornt of the spotlight
  logo$layers <- logo$layers[c(1, 3, 4, 5, 6, 2)]

  hexSticker::save_sticker(logo_url, logo)
  usethis::use_logo(logo_url)
}

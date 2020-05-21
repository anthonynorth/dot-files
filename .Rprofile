options(repos = structure(c(CRAN = "https://cran.rstudio.com")))

# radian
options(
  radian.tab_size = 2,
  radian.complete_while_typing = FALSE,
  radian.suppress_reticulate_message = TRUE
)

# language server
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})

# tinytex
options(
  tinytex.engine_args = "-shell-escape"
)

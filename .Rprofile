options(repos = structure(c(CRAN = "https://cran.rstudio.com")))

# language server
options(languageserver.formatting_style = function(options) {
  styler::tidyverse_style(scope = "indention", indent_by = options$tabSize)
})

# vscode-R
options(
  vsc.viewer = FALSE
)

# tinytex
options(
  tinytex.engine_args = "-shell-escape"
)

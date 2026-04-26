suppressWarnings(library(rsconnect))

# Optional: set account info once in your environment/session.
# rsconnect::setAccountInfo(name = "benquist", token = "<TOKEN>", secret = "<SECRET>")

get_app_dir <- function() {
  args <- commandArgs(trailingOnly = FALSE)
  file_arg <- "--file="
  file_path <- sub(file_arg, "", args[grep(file_arg, args)])

  if (length(file_path) > 0) {
    return(dirname(normalizePath(file_path[1])))
  }

  if (!is.null(sys.frame(1)$ofile)) {
    return(dirname(normalizePath(sys.frame(1)$ofile)))
  }

  normalizePath(getwd())
}

cat("Deploying BIEN Traits Shiny App to shinyapps.io...\n")
rsconnect::deployApp(
  appDir = get_app_dir(),
  appName = "bien-traits-shinyapp",
  account = "benquist",
  launch.browser = FALSE
)
cat("Deployment complete.\n")

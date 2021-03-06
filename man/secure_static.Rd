% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secure_static.R
\name{secure_static}
\alias{secure_static}
\title{Secure a static HTML page}
\usage{
secure_static(
  html_file_path,
  global_sessions_config_args,
  sign_out_button = shiny::actionLink("sign_out", "Sign Out", icon =
    shiny::icon("sign-out-alt"), class = "polished_sign_out_link")
)
}
\arguments{
\item{html_file_path}{the path the to HTML file.  See the details for more info.}

\item{global_sessions_config_args}{arguments to be passed to \code{\link{global_sessions_config}}.}

\item{sign_out_button}{action button or link with \code{inputId = "sign_out"}. Set to \code{NULL} to not include a sign out button.}
}
\value{
a Shiny app object
}
\description{
\code{secure_static()} can be used to secure any HTML
page using \code{polished}.  It is often used to add \code{polished} to \code{.Rmd} htmloutput
and flexdashboards.
}
\details{
To secure a static HTML page, place the HTML page in a folder named "www"
and call \code{secure_static()} from a file named \code{app.R}.  The file structure should
look like:
\itemize{
\item app.R
\item www/
\itemize{
\item index.html
}
}

See an example here: \url{https://github.com/Tychobra/polished_example_apps/tree/master/05_flex_dashboard}
}

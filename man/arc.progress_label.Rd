% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arc.progress.R
\name{arc.progress_label}
\alias{arc.progress_label}
\title{Set progressor label for Geoprocessing dialog box}
\usage{
arc.progress_label(label)
}
\arguments{
\item{label}{Progress Label}
}
\description{
Geoprocessing tools have a progressor, which includes both a progress
label and a progress bar. The default progressor continuously moves back
and forth to indicate the script is running. Using
\code{\link{arc.progress_label}} and \code{\link{arc.progress_pos}}
allows fine control over the script progress. Updating the progressor
isn't necessary, but is useful in situations where solely outputting messages
to the dialog is insufficient to communicate script progress.
}
\details{
Using \code{\link{arc.progress_label}} allows control over the label that is
displayed at the top of the running script. For example, it might be used
to display the current step of the analysis taking place.
}
\note{
\itemize{
   \item Currently only functions in ArcGIS Pro, and has no effect in
         ArcGIS Desktop.
   \item This function is only available from within an ArcGIS session, and
         has no effect when run from the command line or in background geoprocessing.
}
}
\section{References}{

  \href{https://pro.arcgis.com/en/pro-app/arcpy/geoprocessing_and_python/understanding-the-progress-dialog-in-script-tools.htm}{Understanding the progressor in script tools}
}
\examples{
\dontrun{
arc.progress_label("Calculating bootstrap samples...")
}
}
\seealso{
\code{\link{arc.progress_pos}},
  "Progress Messages" example Geoprocessing script
}


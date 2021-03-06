% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/A.generics.R, R/arc.raster.R
\docType{methods}
\name{arc.raster}
\alias{arc.raster}
\alias{arc.raster,NULL-method}
\alias{arc.raster,arc.datasetraster-method}
\title{Create arc.raster object}
\usage{
arc.raster(object, bands, ...)

\S4method{arc.raster}{arc.datasetraster}(object, bands, ...)

\S4method{arc.raster}{`NULL`}(object, path, dim, nrow, ncol, nband, extent,
  origin_x, origin_y, cellsize_x, cellsize_y, pixel_type, nodata, sr, ...)
}
\arguments{
\item{object}{\link{arc.datasetraster-class} object.}

\item{bands}{integer vector of bands (default: all bands).}

\item{...}{optional additional arguments such as \code{nrow, ncol, extent, pixel_type, resample_type} to be passed to the method.}
}
\value{
\code{arc.raster} returns a \code{raster} object (type of \link{arc.raster-class}).
}
\description{
Create arc.raster object
}
\examples{

## create and resample raster
r.file <- system.file("pictures", "cea.tif", package="rgdal")
r <- arc.raster(arc.open(r.file), nrow=200, ncol=200, resample_type="CubicConvolution")
r
stopifnot(r$nrow == 200)

}


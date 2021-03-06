% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/A.generics.R
\name{arc.fromWktToP4}
\alias{arc.fromWktToP4}
\title{Convert a Well-known Text Coordinate Reference System into a PROJ.4 string.}
\arguments{
\item{wkt}{WKT projection string, or a WKID integer}
}
\description{
Convert a well-known text (WKT) coordinate reference system (CRS) string to
a PROJ.4 representation. PROJ.4 strings were created as a convenient way to
pass CRS information to the command-line PROJ.4 utilities, and have an
expressive format. Alternatively, can accept a well-known ID (WKID),
a numeric value that ArcGIS uses to specify projections. See the 'Using
spatial references' resource for lookup tables which map between WKIDs and
given projection names.
}
\section{References}{

 \enumerate{
   \item \href{http://resources.arcgis.com/en/help/arcgis-rest-api/index.html#/Using_spatial_references/02r3000000qq000000/}{ArcGIS REST API: Using spatial references}
   \item OGC specification
     \href{http://docs.opengeospatial.org/is/12-063r5/12-063r5.html#36}{
   12-063r5}
   \item \href{http://desktop.arcgis.com/en/desktop/latest/guide-books/map-projections/what-are-map-projections.htm}{ArcGIS Help: What are map projections?}
}
}
\examples{

d <- arc.open(system.file("extdata", "ca_ozone_pts.shp",
                          package="arcgisbinding"))
arc.fromWktToP4(arc.shapeinfo(d)$WKT)

arc.fromWktToP4(4326) # use a WKID for WGS 1984, a widely
                      # used standard for geographic coordinates
}
\seealso{
\code{\link{arc.fromP4ToWkt}}
}


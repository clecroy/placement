% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dist_calc.R
\name{dist_calc}
\alias{dist_calc}
\title{A simple distance calculator for two sets of geo coordinates.
This function may be utilized to estimate the "straight line" distance between
two sets of, e.g., Google Web Mercator/WGS 84 geocoordinates.}
\usage{
dist_calc(long1, lat1, long2, lat2, units = "metric")
}
\arguments{
\item{long1}{numeric; the longitude (degrees) of location 1.}

\item{lat1}{numeric; the latitude (degrees) of location 1.}

\item{long2}{numeric; the longitude (degrees) of location 2.}

\item{lat2}{numeric; the latitude (degrees) of location 2.}

\item{units}{character string; must be either "metric" (the default) or "imperial".
Specifying "metric" will return the distance between location 1 and location in kilometers,
whereas "imperial" returns the distance in miles.}
}
\description{
A simple distance calculator for two sets of geo coordinates.
This function may be utilized to estimate the "straight line" distance between
two sets of, e.g., Google Web Mercator/WGS 84 geocoordinates.
}
\references{
\url{http://menugget.blogspot.com/2011/05/r-functions-for-earth-geographic_29.html}
}


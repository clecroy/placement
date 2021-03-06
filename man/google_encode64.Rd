% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/google_encode64.R
\name{google_encode64}
\alias{google_encode64}
\title{Generates digital signatures for Google Maps API calls.}
\usage{
google_encode64(address, dest = NULL, gmode = "geocode", privkey = NULL,
  clientid = NULL, debug = FALSE, verbose = FALSE,
  travel_mode = "driving", units = "metric", language = "en-EN",
  urlencode = FALSE)
}
\arguments{
\item{address}{A 1xN vector of UTF-8 addresses (if gmode='dtime', this is the origin address).}

\item{dest}{If gmode is 'dtime', this is the destination address.}

\item{gmode}{character string; must be either "geocode" (the default) or "dtime" (for distance requests).}

\item{privkey}{character string; your Google for Work API key}

\item{clientid}{character string; generally, this ID will be of the form 'gme-[company]'.}

\item{debug}{logical; when \code{TRUE}, returns a complete data frame of locations and their associated URL signatures (this can be useful for debugging invalid signatures).}

\item{verbose}{logical; when \code{TRUE}, displays additional progress output.}

\item{travel_mode}{character string; currently, valid values include (\href{https://developers.google.com/maps/documentation/javascript/distancematrix#distance_matrix_requests}{see this page for details}):
\itemize{
\item driving (the default): indicates standard driving directions using the road network.
\item transit: requests directions via public transit routes.
\item walking: requests walking directions via pedestrian paths & sidewalks (where available).
\item bicycling: requests bicycling directions via bicycle paths & preferred streets (currently only available in the US and some Canadian cities).
      }}

\item{units}{character string; must be either "metric" (the default) or "imperial".
Specifying "metric" will return distance between origin and destination as kilometers,
whereas "imperial" returns distance in miles. For geocode requests this parameter
is ignorned if non-null.}

\item{language}{character string; localization of the returned object. This parameter is
set to "en-EN" by default, but refer to
\href{https://developers.google.com/maps/faq#using-google-maps-apis}{this page}
for an up-to-date list of Google's supported languages.}

\item{urlencode}{logical; when \code{TRUE}, applies the \code{\link{url_encode}} function from the \code{\link{urltools}} package.}
}
\description{
This function, primarily, is a helper for \code{\link{drive_time}} and \code{\link{geocode_url}}.
It is only necessary when building digital signatures with the private cryptographic key associated with
your (paid) \href{https://www.google.com/work/}{Google for Work} account. To build valid signatures your vector of addresses must contain "web-safe" UTF-8 characters.
By default, and unlike \code{\link{drive_time}} and \code{\link{geocode_url}},this function assumes that the \code{address} and \code{dest} parameters are \emph{already} URL encoded. If this
is not the case, you may apply url encoding to the inputs using the optional \code{urlencode} parameter (see below).
(see: \code{\link{address_cleaner}}). For basic geocoding and distance analyses it is generally easier to use \code{\link{drive_time}} and \code{\link{geocode_url}}
to encode a request with your Google for Work private key. However, and particularly with large batch jobs,
it can be useful to inspect the output of this function for malformed values which yield invalid signatures (see the "debug" option).
The function's method of signature generation follows the pattern outlined for Python in
the \href{https://developers.google.com/maps/documentation/business/image/auth?hl=en}{Google Developer documention}.
}


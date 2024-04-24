#' qPCR data set by Boggy et al. (2010)
#'
#' @description
#' The qPCR data set named _s1_ comprises a six-point, ten-fold dilution series,
#' replicated in duplicates targeting an amplicon designed with a random
#' sequence that minimizes secondary structure and off-target primer binding.
#' Please read the _Quantitative PCR data_ section, _qPCR assays_ subsection of
#' Boggy et al. (2010) for more details.
#'
#' @format A [tibble][tibble::tibble-package] with 480 rows and 10 variables:
#' \describe{
#' \item{`plate`}{Plate identifier. For this data set it is always missing
#' (`NA`).}
#' \item{`well`}{Well identifier.}
#' \item{`dye`}{The type of dye used. In this data set the values are always
#' `"SYTO 13"`, meaning 2 mM of the dsDNA dye SYTO-13 (Invitrogen, Carlsbad, CA).}
#' \item{`target`}{Target identifier: the amplicon used, a random sequence
#' dubbed `"S1"` by the original authors.}
#' \item{`sample_type`}{Sample type (all curves are standards, i.e. `"std"`).}
#' \item{`replicate`}{Replicate identifier: either 1 or 2.}
#' \item{`copies`}{Standard copy number.}
#' \item{`dilution`}{Dilution factor. Higher number means greater dilution.}
#' \item{`cycle`}{PCR cycle.}
#' \item{`fluor`}{Raw fluorescence values.}
#' }
#'
#' @examples
#' s1
#'
#' @source \doi{10.1371/journal.pone.0012355}
#' @name s1
#' @keywords datasets
NULL

#' Simulated policy portfolio with fake data for the education sector.
#'
#' A tidy dataset of a policy portfolio in an imaginary sector (education), containing 3 countries, 10 Instruments and 15 Targets, for 11 years.
#'
#' @name P.education
#' @docType data
#' @keywords datasets
#' @usage data(P.education)
#' @format A data frame (tibble) containing the coverage of state intervention in a specific policy space (presence = 1 or absence = 0).
#' @examples
#' data(P.education)
#' str(P.education)
NULL

#' Simulated policy portfolio with fake data for the energy sector.
#'
#' A tidy dataset of a policy portfolio in an imaginary sector (energy), containing 3 countries, 15 Instruments and 25 Targets, for 11 years.
#'
#' @name P.energy
#' @docType data
#' @keywords datasets
#' @usage data(P.energy)
#' @format A data frame (tibble) containing the coverage of state intervention in a specific policy space (presence = 1 or absence = 0).
#' @examples
#' data(P.energy)
#' str(P.energy)
NULL

#' Policy portfolios for the dataset of the CONSENSUS research project.
#'
#' A tidy dataset of a policy portfolios in social and environmental policies for the CONSENSUS research project.
#'
#' When using the dataset, please cite:
#'
#' Fernández-i-Marín, X., Knill, C. & Steinebach, Y. (2021). Studying Policy Design Quality in Comparative Perspective. _American Political Science Review_, online first.
#'
#' Knill, C., Schulze, K. & Tosun, J. (2012). Regulatory Policy Outputs and Impacts. Exploring a Complex Relationship. _Regulation & Governance_, 5(4), 427-444. doi:10.1111/j.1748-5991.2012.01150.x.
#'
#'
#' @name consensus
#' @docType data
#' @keywords datasets
#' @usage data(consensus)
#' @format A data frame (tibble) containing the coverage of state intervention in a specific policy space (presence = 1 or absence = 0) for the CONSENSUS research project. It covers 23 countries in two sectors (Environmental, with 49 Targets and 11 Instruments; and Social, with 19 Targets and 6 Instruments) between 1976 and 2005.
#' @seealso \code{\link{consensus.instruments}} and \code{\link{consensus.targets}} for meta data about Instrument id and types, and Target id and Subsector.
#' @references Fernández-i-Marín, X., Knill, C. & Steinebach, Y. (2021). Studying Policy Design Quality in Comparative Perspective. _American Political Science Review_, online first.
#' @references Knill, C., Schulze, K. & Tosun, J. (2012). Regulatory Policy Outputs and Impacts. Exploring a Complex Relationship. _Regulation & Governance_, 5(4), 427-444. doi:10.1111/j.1748-5991.2012.01150.x.
#' @source Consensus research project (217239): https://cordis.europa.eu/project/id/217239
#' @examples
#' data(consensus)
#' str(consensus)
NULL

#' Meta-data on Instruments for the dataset of the CONSENSUS research project.
#'
#' A tidy dataset of the characteristics of Instruments in social and environmental policies for the CONSENSUS research project.
#'
#' When using the dataset, please cite:
#'
#' Fernández-i-Marín, X., Knill, C. & Steinebach, Y. (2021). Studying Policy Design Quality in Comparative Perspective. _American Political Science Review_, online first.
#'
#' Knill, C., Schulze, K. & Tosun, J. (2012). Regulatory Policy Outputs and Impacts. Exploring a Complex Relationship. _Regulation & Governance_, 5(4), 427-444. doi:10.1111/j.1748-5991.2012.01150.x.
#'
#'
#' @name consensus.instruments
#' @docType data
#' @keywords datasets
#' @usage data(consensus.instruments)
#' @format A data frame (tibble) containing the characteristics of Instruments, namely the Sector, the type of Instrument and the internal id in the original coding manual.
#' @seealso \code{\link{consensus}} for the full dataset and \code{\link{consensus.targets}} for meta data about Target id and Subsector.
#' @references Fernández-i-Marín, X., Knill, C. & Steinebach, Y. (2021). Studying Policy Design Quality in Comparative Perspective. _American Political Science Review_, online first.
#' @references Knill, C., Schulze, K. & Tosun, J. (2012). Regulatory Policy Outputs and Impacts. Exploring a Complex Relationship. _Regulation & Governance_, 5(4), 427-444. doi:10.1111/j.1748-5991.2012.01150.x.
#' @source Consensus research project (217239): https://cordis.europa.eu/project/id/217239
#' @examples
#' data(consensus.instruments)
#' str(consensus.instruments)
NULL

#' Meta-data on Targets for the dataset of the CONSENSUS research project.
#'
#' A tidy dataset of the characteristics of Targets in social and environmental policies for the CONSENSUS research project.
#'
#' When using the dataset, please cite:
#'
#' Fernández-i-Marín, X., Knill, C. & Steinebach, Y. (2021). Studying Policy Design Quality in Comparative Perspective. _American Political Science Review_, online first.
#'
#' Knill, C., Schulze, K. & Tosun, J. (2012). Regulatory Policy Outputs and Impacts. Exploring a Complex Relationship. _Regulation & Governance_, 5(4), 427-444. doi:10.1111/j.1748-5991.2012.01150.x.
#'
#'
#' @name consensus.targets
#' @docType data
#' @keywords datasets
#' @usage data(consensus.targets)
#' @format A data frame (tibble) containing the characteristics of Targets, namely the Subsector and the internal id in the original coding manual.
#' @seealso \code{\link{consensus}} for the full dataset and \code{\link{consensus.instruments}} for meta data about Instrument id and instrument type.
#' @references Fernández-i-Marín, X., Knill, C. & Steinebach, Y. (2021). Studying Policy Design Quality in Comparative Perspective. _American Political Science Review_, online first.
#' @references Knill, C., Schulze, K. & Tosun, J. (2012). Regulatory Policy Outputs and Impacts. Exploring a Complex Relationship. _Regulation & Governance_, 5(4), 427-444. doi:10.1111/j.1748-5991.2012.01150.x.
#' @source Consensus research project (217239): https://cordis.europa.eu/project/id/217239
#' @examples
#' data(consensus.targets)
#' str(consensus.targets)
NULL

#' Policy portfolios for the dataset of the ACCUPOL research project.
#'
#' A tidy dataset of a policy portfolios in social and environmental policies for the ACCUPOL research project.
#'
#' When using the dataset, please cite:
#'
#' Fernández-i-Marín, X., Knill, C., Steinbacher, C., & Steinebach, Y. (2024). Bureaucratic quality and the gap between implementation burden and administrative capacities. American Political Science Review, 118(3), 1240-1260. doi:10.1017/S0003055423001090
#'
#' @name accupol.v1
#' @docType data
#' @keywords datasets
#' @usage data(accupol.v1)
#' @format A data frame (tibble) containing the coverage of state intervention in a specific policy space (presence = 1 or absence = 0) for the ACCUPOL research project. It covers 23 countries in two sectors (Environmental, with 49 Targets and 11 Instruments; and Social, with Targets and Instruments) between 1976 and 2018.
#' @seealso \code{\link{accupol.instruments}} for meta data about Instrument and Target metadata.
#' @references Fernández-i-Marín, X., Knill, C., Steinbacher, C., & Steinebach, Y. (2024). Bureaucratic quality and the gap between implementation burden and administrative capacities. American Political Science Review, 118(3), 1240-1260. doi:10.1017/S0003055423001090
#' @source Accupol research project (217239): https://cordis.europa.eu/project/id/788941
#' @examples
#' data(accupol.v1)
#' str(accupol.v1)
NULL

#' Meta-data on Instruments for the dataset of the ACCUPOL research project.
#'
#' A tidy dataset of the characterestics of Instruments for the ACCUPOL research project.
#'
#' When using the dataset, please cite:
#'
#' Fernández-i-Marín, X., Knill, C., Steinbacher, C., & Steinebach, Y. (2024). Bureaucratic quality and the gap between implementation burden and administrative capacities. American Political Science Review, 118(3), 1240-1260. doi:10.1017/S0003055423001090
#'
#' @name accupol.instruments
#' @docType data
#' @keywords datasets
#' @usage data(accupol.instruments)
#' @format A data frame (tibble) containing the characteristics of policy Targets (Instrument, instrument.id, Sector and Degree of intervention.
#' @seealso \code{\link{accupol.v1}} for the full dataset.
#' @references Fernández-i-Marín, X., Knill, C., Steinbacher, C., & Steinebach, Y. (2024). Bureaucratic quality and the gap between implementation burden and administrative capacities. American Political Science Review, 118(3), 1240-1260. doi:10.1017/S0003055423001090
#' @source Accupol research project (217239): https://cordis.europa.eu/project/id/788941
#' @examples
#' data(accupol.instruments)
#' str(accupol.instruments)
NULL


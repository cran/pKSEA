% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/user_level_functions.R
\name{run_on_matched}
\alias{run_on_matched}
\title{Runs pKSEA analysis on a dataset result from get_matched_data.}
\usage{
run_on_matched(matched_data, n_permutations = 1000, seed = 123,
  kin_ens_table = NULL)
}
\arguments{
\item{matched_data}{data after filtering against predictions (results from get_matched_data())}

\item{n_permutations}{number of mutations to perform (default 1000)}

\item{seed}{seed used for permutation testing}

\item{kin_ens_table}{optional table for inclusion of matched ensembl ids for kinases, with columns: ens = ensembl id,
kinases = kinase_id as otherwise used}
}
\description{
Calculates score contributions from summary statistics (tscore) and prediction scores, and sums contribution scores
by kinase to calculate raw kinase activity change scores (KAC scores). Performs permutation test on summary statistic
data to assess significance of kinase activity change scores, and reports significance as a percentile score
(pKSEA significance score).
}
\examples{
#Read in example summary statistics dataset from csv
summarydata_ex <- read.csv(system.file("extdata", "example_data1.csv", package="pKSEA"))

#Get matched data using predictions from NetworKIN
matched_data_ex <- get_matched_data(summarydata_ex, NetworKINPred_db)

#Perform single run of pKSEA analysis
single_run_results_ex <- run_on_matched(matched_data_ex, n_permutations = 10)

}

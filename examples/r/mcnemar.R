# McNemar test example for Binder / RStudio
# ---------------------------------------
# This script shows:
#  - how to create a 2x2 contingency table
#  - how to run base R's mcnemar.test
#  - (optionally) run exact McNemar if 'exact2x2' is installed

alpha <- 0.05

# Example contingency table
# Rows = Pre-test (Yes, No)
# Columns = Post-test (Yes, No)
contingency_table <- matrix(c(20, 15, 5, 10), nrow = 2, byrow = TRUE,
                            dimnames = list(Pre = c("Yes","No"), Post = c("Yes","No")))

cat("Contingency table:\n")
print(contingency_table)

# Base R McNemar test (chi-squared approximation)
result_base <- stats::mcnemar.test(contingency_table)
cat('\nBase R mcnemar.test result:\n')
print(result_base)

# If exact2x2 is available, try exact McNemar
if (requireNamespace("exact2x2", quietly = TRUE)) {
  cat('\nRunning exact2x2::mcnemar.exact (if available)\n')
  try({
    result_exact <- exact2x2::mcnemar.exact(contingency_table)
    print(result_exact)
  }, silent = TRUE)
} else {
  message("Package 'exact2x2' not installed. The install.R file will install it when Binder builds the image.")
}

# Decision using alpha
p_value <- result_base$p.value
if (p_value < alpha) {
  cat('\nConclusion: Reject null hypothesis (alpha=', alpha, ')\n', sep='')
} else {
  cat('\nConclusion: Do not reject null hypothesis (alpha=', alpha, ')\n', sep='')
}

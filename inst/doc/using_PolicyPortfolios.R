## ----echo=FALSE, message=FALSE, warning=FALSE---------------------------------
library(PolicyPortfolios)

## ----message = FALSE, warning = FALSE-----------------------------------------
library(dplyr)
library(tidyr)
library(ggplot2)

## ----message = FALSE, warning = FALSE-----------------------------------------
library(PolicyPortfolios)
data(P.energy)
P.energy

## -----------------------------------------------------------------------------
levels(P.energy$Country)
unique(P.energy$Year)

## -----------------------------------------------------------------------------
levels(P.energy$Target)
levels(P.energy$Instrument)

## -----------------------------------------------------------------------------
data(P.education)
levels(P.education$Target)
levels(P.education$Instrument)

## ----eval = FALSE, echo = TRUE------------------------------------------------
# spreadsheet <- read.table(...)
# d <- pp_clean(spreadsheet,
#               Sector = "Environmental",
#               Year.name = "Year.Adopt",
#               coding.category.name = "Coding.category",
#               Instrument.name = "Instrument.No.",
#               Target.name = "Item.No.")
# 
# pp_complete()

## ----eval = FALSE, echo = TRUE------------------------------------------------
# dc <- pp_complete(d,
#                   Instrument.set = full.factor.of.potential.instruments,
#                   Target.set = full.factor.of.potential.targets)

## ----echo = TRUE, eval = FALSE------------------------------------------------
# pp_measures(P.energy)

## ----echo = FALSE, eval = TRUE, size = 'footnotesize'-------------------------
knitr::kable(pp_measures(P.energy) %>% slice(1:15))

## -----------------------------------------------------------------------------
pp_measures(P.energy, id = list(Country = "Borduria", Year = 2010:2021))

## ----fig.width = 8, fig.height = 4, fig.cap = 'Temporal evolution of the size of portfolios, by country.'----
pp_measures(P.energy) %>%
  # Use only a single measure of interest
  filter(Measure == "Size") %>%
  # Use only observations with a concrete time period
  filter(Year > 2022) %>%
  # Convert the long format into wide, and therefore "Size" becomes a column
  spread(Measure, value) %>%
  # Pass this object to "ggplot()" and produce a time series of portfolio "Size"
  ggplot(aes(x = Year, y = Size, color = Country)) +
    geom_line()

## -----------------------------------------------------------------------------
pp_measures(P.energy) %>%
  # Pick the two measures of portfolio diversity
  filter(Measure %in% c("Div.gs", "Div.sh")) %>%
  # Use only the last year observation
  filter(Year == max(Year)) %>%
  # Select only the relevant variables required to produce the output table
  select(Country, Measure.label, value) %>%
  # Transform the long object into wide, so that every Measure is one column
  spread(Measure.label, value) %>%
  # Sort by decreasing Shannon diversity
  arrange(desc(`Diversity (Shannon)`))

## ----echo = FALSE, eval = TRUE------------------------------------------------
pp_measures(P.energy) %>%
  select(Measure, Measure.label) %>%
  unique() %>%
  knitr::kable()

## ----fig.width = 10, fig.height = 4, fig.cap = 'Visual representation of the Energy portfolio of Borduria in 2025, using the pp_plot() function and defining a specific country and year in a list in the id argument.'----
pp_plot(P.energy, id = list(Country = "Borduria", Year = 2025))

## ----fig.width = 6, fig.height = 3, fig.cap = 'Visual representation of the Energy portfolio of Borduria in 2025, using the pp_plot() function and defining a specific country and year in a list in the id argument.'----
pp_plot(P.education, 
        id = list(Country = "Borduria", Year = 2030),
        spacing = TRUE,
        subtitle = FALSE, caption = NULL)

## ----eval = FALSE, echo = TRUE------------------------------------------------
# pp_report(P.energy)

## -----------------------------------------------------------------------------
A <- pp_array(P.energy)

# Get the dimensions:
# 3 is Country
# 1 is Sector
# 11 is Year
# 15 is Instrument
# 25 is Target
dim(A)

## ----eval = FALSE, echo = TRUE------------------------------------------------
# spreadsheet <- read.table(...)
# d.setting <- pp_clean(spreadsheet,
#                       setting.direction = TRUE)


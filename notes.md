[data.world docs](https://docs.data.world/uscensus/#american-community-survey-linked-open-data)
[census docs](https://www.census.gov/programs-surveys/acs/technical-documentation/pums/about.html)

Geographic area is Public Use Microdata Area (PUMA) - non-overlapping with no fewer than 100k residents.

PWGTP - person level weight
WGTP - household weight

each weight has 80 replicate weights which are considered "more accurate"

each year is a random sample of 3.5 million addresses

### Person data

204 properties/variables

### Housing data

155 properties/variables

### Tasks

1. Validate the data loaded into hive against results pulled from:
  - American FactFinder
  - QuickFacts
  - Easy Stats
 
2. Execute some Spark MLlib stuff
  - LDA
  - Logistic regression


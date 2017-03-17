library("MCDA")

# ----------------------------------------
# ranking some refrigerators found at http://www.euro.com.pl by accordingly their maximal cooler storage volume, minimal freezer storage volume and cheapest price
# the separation threshold

epsilon <- 0.01

additiveValueFunctionElicitation

# the numeric data table
numericDataTable <- rbind(
  c(276, 130, 3399),
  c(262, 98, 2099),
  c(196, 75, 899),
  c(192, 98, 1399),
  c(206, 98, 1799),
  c(228, 111, 1199),
  c(188, 98, 1699),
  c(279, 87, 1999),
  c(206, 98, 2199),
  c(246, 98, 2099),
  c(100, 56, 890),
  c(210, 98, 1899),
  c(212, 98, 1799),
  c(361, 211, 3449),
  c(166, 64, 1198)
)
rownames(numericDataTable) <- c(
  "Samsung Chef Collection RB41J7839S4",
  "Samsung RB37J5925SS",
  "Indesit LR6 S1 S",
  "Samsung RB29FSRNDSA",
  "Samsung RB31FERNCSA",
  "Indesit LR8 S2 X B",
  "Samsung RB29FERNCSS",
  "Bosch KGN39KL35",
  "Samsung RB31FERNBSS",
  "Samsung RB34K6032SS",
  "Amica FK205.4",
  "Samsung RB31FDRNDSA",
  "Samsung RB31FERNDBC",
  "Samsung RS7528THCSP",
  "Amica FK261.3XAA")
colnames(numericDataTable) <- c(
  "CoolerStorageVolume",
  "FreezerStorageVolume",
  "Price")

# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
names(alternativesRanks) <- row.names(numericDataTable)

# criteria to minimise or maximize
criteriaMinMax <- c("max","min","min")
names(criteriaMinMax) <- colnames(numericDataTable)
x <- additiveValueFunctionElicitation(numericDataTable,
                                    criteriaMinMax, epsilon,
                                    alternativesRanks = alternativesRanks)

print(x)

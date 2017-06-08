DROP TABLE IF EXISTS houses;
CREATE EXTERNAL TABLE houses (
  acs_hasAgriculturalSales STRING,
  acs_hasAgriculturalSales_AllocationFlag STRING,
  acs_hasBathtubOrShower STRING,
  acs_hasBathtubOrShower_AllocationFlag STRING,
  acs_hasBedrooms STRING,
  acs_hasBedrooms_AllocationFlag STRING,
  acs_hasBuildingUnitStructure STRING,
  acs_hasBuildingUnitStructure_AllocationFlag STRING,
  acs_hasBuildingUnitType STRING,
  acs_hasBusinessOrMedicalOfficeOnProperty STRING,
  acs_hasBusinessOrMedicalOfficeOnProperty_AllocationFlag STRING,
  acs_hasCableInternet STRING,
  acs_hasCableInternet_AllocationFlag STRING,
  acs_hasCompleteKitchen STRING,
  acs_hasCompleteKitchen_AllocationFlag STRING,
  acs_hasCompletePlumbing STRING,
  acs_hasCompletePlumbing_AllocationFlag STRING,
  acs_hasCompletePlumbing_PR STRING,
  acs_hasCompletePlumbing_PR_AllocationFlag STRING,
  acs_hasComputer STRING,
  acs_hasComputer_AllocationFlag STRING,
  acs_hasCondoFee STRING,
  acs_hasCondoFee_AllocationFlag STRING,
  acs_hasDSLInternet STRING,
  acs_hasDSLInternet_AllocationFlag STRING,
  acs_hasDial_upInternet STRING,
  acs_hasDial_upInternet_AllocationFlag STRING,
  acs_hasDivision STRING,
  acs_hasElectricityCost STRING,
  acs_hasElectricityCost_AllocationFlag STRING,
  acs_hasExtraHomeLoans STRING,
  acs_hasExtraHomeLoansPayment STRING,
  acs_hasExtraHomeLoansPayment_AllocationFlag STRING,
  acs_hasFamilyIncome STRING,
  acs_hasFamilyIncome_AllocationFlag STRING,
  acs_hasFamilyPresenceAndAgeOfRelatedChildren STRING,
  acs_hasFamilyTypeAndEmploymentStatus STRING,
  acs_hasFaucetSink STRING,
  acs_hasFaucetSink_AllocationFlag STRING,
  acs_hasFiberInternet STRING,
  acs_hasFiberInternet_AllocationFlag STRING,
  acs_hasFireHazardFloodIns STRING,
  acs_hasFireHazardFloodIns_AllocationFlag STRING,
  acs_hasFlushToilet STRING,
  acs_hasFlushToilet_AllocationFlag STRING,
  acs_hasFoodStampSNAP STRING,
  acs_hasFoodStampSNAP_AllocationFlag STRING,
  acs_hasFuelCost STRING,
  acs_hasFuelCost_AllocationFlag STRING,
  acs_hasGasCost STRING,
  acs_hasGasCost_AllocationFlag STRING,
  acs_hasGrandparentHeadedNoParentHousehold STRING,
  acs_hasGrandparentWithGrandchildrenHousehold STRING,
  acs_hasGrossRent STRING,
  acs_hasGrossRent_AllocationFlag STRING,
  acs_hasHandheldComputer STRING,
  acs_hasHandheldComputer_AllocationFlag STRING,
  acs_hasHeatingFuel STRING,
  acs_hasHeatingFuel_AllocationFlag STRING,
  acs_hasHomeEquityLoan_AllocationFlag STRING,
  acs_hasHouseholdIncome STRING,
  acs_hasHouseholdIncome_AllocationFlag STRING,
  acs_hasHouseholdLanguage STRING,
  acs_hasHouseholdPresenceAndAgeOfChildren STRING,
  acs_hasHouseholdPresenceAndAgeOfOwnChildren STRING,
  acs_hasHouseholdPresenceAndAgeOfRelatedChildren STRING,
  acs_hasHouseholdType STRING,
  acs_hasHouseholdWorkExperience STRING,
  acs_hasHouseholdWorkStatus STRING,
  acs_hasHousingDollarAdjustmentFactor STRING,
  acs_hasIncomeAdjustmentFactor STRING,
  acs_hasInternetAccess STRING,
  acs_hasInternetAccess_AllocationFlag STRING,
  acs_hasLimitedEnglishHousehold STRING,
  acs_hasLotSize STRING,
  acs_hasLotSize_AllocationFlag STRING,
  acs_hasMealsIncluded STRING,
  acs_hasMealsIncluded_AllocationFlag STRING,
  acs_hasMobileBroadband STRING,
  acs_hasMobileBroadband_AllocationFlag STRING,
  acs_hasMobileHomeCosts STRING,
  acs_hasMobileHomeCosts_AllocationFlag STRING,
  acs_hasMonthlyRent STRING,
  acs_hasMonthlyRent_AllocationFlag STRING,
  acs_hasMortgage STRING,
  acs_hasMortgageIncludesInsurance STRING,
  acs_hasMortgageIncludesInsurance_AllocationFlag STRING,
  acs_hasMortgageIncludesTaxes STRING,
  acs_hasMortgageIncludesTaxes_AllocationFlag STRING,
  acs_hasMortgagePayment STRING,
  acs_hasMortgagePayment_AllocationFlag STRING,
  acs_hasMortgage_AllocationFlag STRING,
  acs_hasMultigenerationalHousehold STRING,
  acs_hasNonRelatives STRING,
  acs_hasNumFamilyMembers STRING,
  acs_hasNumVehicles STRING,
  acs_hasNumVehicles_AllocationFlag STRING,
  acs_hasOtherComputerEquipment STRING,
  acs_hasOtherComputerEquipment_AllocationFlag STRING,
  acs_hasOtherInternet STRING,
  acs_hasOtherInternet_AllocationFlag STRING,
  acs_hasOver60 STRING,
  acs_hasOver65 STRING,
  acs_hasOwnChildren STRING,
  acs_hasOwnerCosts STRING,
  acs_hasOwnerCostsAsPercentOfIncome STRING,
  acs_hasOwnerCosts_AllocationFlag STRING,
  acs_hasPUMA STRING,
  acs_hasPersonRecordsFollowing STRING,
  acs_hasPrimaryWeight STRING,
  acs_hasPropertyTax STRING,
  acs_hasPropertyTax_AllocationFlag STRING,
  acs_hasPropertyValue STRING,
  acs_hasPropertyValue_AllocationFlag STRING,
  acs_hasPublicUseMicrodataAreaCode STRING,
  acs_hasRefrigerator STRING,
  acs_hasRefrigerator_AllocationFlag STRING,
  acs_hasRegion STRING,
  acs_hasRelatedChildren STRING,
  acs_hasRentAsPercentOfIncome STRING,
  acs_hasRooms STRING,
  acs_hasRooms_AllocationFlag STRING,
  acs_hasRunningWater STRING,
  acs_hasRunningWater_AllocationFlag STRING,
  acs_hasRunningWater_PR STRING,
  acs_hasRunningWater_PR_AllocationFlag STRING,
  acs_hasSameSexMarriedCouple STRING,
  acs_hasSatelliteInternet STRING,
  acs_hasSatelliteInternet_AllocationFlag STRING,
  acs_hasSecondMortgage_AllocationFlag STRING,
  acs_hasSerialNumber STRING,
  acs_hasSpecifiedRentUnit STRING,
  acs_hasSpecifiedValueOwnerUnit STRING,
  acs_hasState STRING,
  acs_hasStove STRING,
  acs_hasStove_AllocationFlag STRING,
  acs_hasSubfamilies STRING,
  acs_hasSurveyResponseMode STRING,
  acs_hasTelephone STRING,
  acs_hasTelephone_AllocationFlag STRING,
  acs_hasTenure STRING,
  acs_hasTenure_AllocationFlag STRING,
  acs_hasTimeSinceMovedIn STRING,
  acs_hasTimeSinceMovedIn_AllocationFlag STRING,
  acs_hasUnder18 STRING,
  acs_hasUnmarriedPartnerHousehold STRING,
  acs_hasVacancyStatus STRING,
  acs_hasVacancyStatus_AllocationFlag STRING,
  acs_hasWaterCost STRING,
  acs_hasWaterCost_AllocationFlag STRING,
  acs_hasWaterHeater_PR STRING,
  acs_hasWaterHeater_PR_AllocationFlag STRING,
  acs_hasWorkersInFamily STRING,
  acs_hasYearFirstBuilt STRING,
  acs_hasYearFirstBuilt_AllocationFlag STRING,
  acs_isEnhancementOf STRING,
  id STRING,
  rdf_type STRING,
  weights VARCHAR(65355)
) PARTITIONED BY (state STRING, year STRING) 
STORED AS PARQUET 
LOCATION '/user/hive/warehouse/dataworld/houses/'
TBLPROPERTIES ("orc.compress"="SNAPPY");

-- add partitions
-- need to automate
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ri', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='il', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nd', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='co', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ar', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wi', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='dc', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ms', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='tx', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ct', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nv', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='sd', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='fl', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='vt', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='me', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ms', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='sc', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='de', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ia', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mt', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wv', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ar', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wv', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ky', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='in', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='or', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='co', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='az', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mn', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nj', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='va', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='la', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='tx', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='pa', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nm', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='va', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ks', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ak', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wy', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mo', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ak', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='de', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='oh', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mi', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='sd', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mn', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='pr', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='hi', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='tn', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wa', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ct', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ok', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ma', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='or', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ri', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='pa', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='dc', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wi', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='il', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='fl', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='la', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='id', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ut', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nv', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nh', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ut', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mo', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ks', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ma', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nh', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='az', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='id', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='sc', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mt', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nm', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ia', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='in', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ny', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ky', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ny', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ca', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ok', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wa', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='al', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='md', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nc', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ga', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='vt', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ca', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='tn', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ne', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nj', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='mi', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='md', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='pr', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='oh', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='hi', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nd', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ga', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='nc', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='me', year='14');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='wy', year='15');
ALTER TABLE houses ADD IF NOT EXISTS PARTITION (state='ne', year='14');


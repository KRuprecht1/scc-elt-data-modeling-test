SELECT
  Year as year
  ,County_of_Residence as county
  ,County_of_Residence_FIPS as FIPS
  ,Mothers_Single_Race as mom_race
  ,Births as births
  ,Ave_Age_of_Mother as avg_age_mother
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race`
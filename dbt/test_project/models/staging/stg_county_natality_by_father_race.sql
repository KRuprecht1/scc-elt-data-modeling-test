SELECT
  Year as year
  ,County_of_Residence as county
  ,County_of_Residence_FIPS as FIPS
  ,Fathers_Single_Race as dad_race
  ,Births as births
  ,Ave_Age_of_Mother as avg_age_mother
FROM `temp-vxl8cbhr-wsky.births_data_summary.county_natality_by_father_race`
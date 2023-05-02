with mom as (
    SELECT
        year
        ,county
        ,FIPS
        ,mom_race
        ,avg_age_mother
        ,births
    FROM
        {{ ref('stg_county_natality_by_mother_race') }}
),

dad as (
    SELECT
        year
        ,county
        ,FIPS
        ,dad_race
    FROM
        {{ ref('stg_county_natality_by_father_race') }}
),

final as (
    SELECT
        year
        ,county
        ,FIPS
        ,mom_race
        ,dad_race
        ,avg_age_mother
        ,births
    FROM mom
    LEFT JOIN dad using (year,county,FIPS)
)

SELECT * FROM final
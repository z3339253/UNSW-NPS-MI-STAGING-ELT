







with validation_errors as (

    select
        PRESCRIBER_NUMBER
    from `nps-omop-project`.`C_SREDH_NPS_MI_STAGING_SIMPLIFIED_2021`.`CLINICAL_USER`
    where 1=1
    
    group by
        PRESCRIBER_NUMBER
    having count(*) > 1

)
select * from validation_errors


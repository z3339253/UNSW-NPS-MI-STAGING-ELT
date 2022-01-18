select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      







with validation_errors as (

    select
        PROVIDER_NUMBER
    from `nps-omop-project`.`C_SREDH_NPS_MI_STAGING_SIMPLIFIED_2021`.`CLINICAL_USER`
    where 1=1
    
    group by
        PROVIDER_NUMBER
    having count(*) > 1

)
select * from validation_errors


      
    ) dbt_internal_test
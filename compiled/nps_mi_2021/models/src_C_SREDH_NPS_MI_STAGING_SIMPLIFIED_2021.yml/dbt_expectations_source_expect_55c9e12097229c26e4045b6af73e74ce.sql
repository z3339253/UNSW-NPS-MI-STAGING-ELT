




    with grouped_expression as (
    select
        
        
    
  SOURCE_SYSTEM is not null as expression


    from `nps-omop-project`.`C_SREDH_NPS_MI_STAGING_SIMPLIFIED_2021`.`ALCOHOL_STATUS`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors




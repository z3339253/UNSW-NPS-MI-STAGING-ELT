





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and length(
        OBSERVATION_ID
    ) >= 1 and length(
        OBSERVATION_ID
    ) <= 8
)
 as expression


    from `nps-omop-project`.`C_SREDH_NPS_MI_STAGING_SIMPLIFIED_2021`.`OBSERVATION`
    

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







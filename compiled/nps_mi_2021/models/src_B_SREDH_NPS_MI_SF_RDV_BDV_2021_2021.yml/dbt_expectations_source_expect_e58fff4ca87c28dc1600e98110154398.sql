




    with grouped_expression as (
    select
        
        
    
  HUB_BILLING_SERVICE_SK is not null as expression


    from `nps-omop-project`.`B_SREDH_NPS_MI_SF_RDV_BDV_2021`.`LNK_BILLING_SERVICE_OMOP`
    

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




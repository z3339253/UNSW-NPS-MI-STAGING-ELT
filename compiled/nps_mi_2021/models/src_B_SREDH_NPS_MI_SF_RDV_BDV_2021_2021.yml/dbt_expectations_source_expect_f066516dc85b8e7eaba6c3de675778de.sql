




    with grouped_expression as (
    select
        
        
    
  LNK_IMMUNISATION_PATIENT_PROVIDER_SK is not null as expression


    from `nps-omop-project`.`B_SREDH_NPS_MI_SF_RDV_BDV_2021`.`LSAT_IMMUNISATION_PATIENT_PROVIDER_OMOP`
    

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




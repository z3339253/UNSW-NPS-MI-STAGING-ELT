




    with grouped_expression as (
    select
        
        
    
  HUB_SITE_PATIENT_ALLERGY_SK is not null as expression


    from `nps-omop-project`.`B_SREDH_NPS_MI_SF_RDV_BDV_2021`.`SAT_SITE_PATIENT_REACTION_MD_OMOP`
    

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




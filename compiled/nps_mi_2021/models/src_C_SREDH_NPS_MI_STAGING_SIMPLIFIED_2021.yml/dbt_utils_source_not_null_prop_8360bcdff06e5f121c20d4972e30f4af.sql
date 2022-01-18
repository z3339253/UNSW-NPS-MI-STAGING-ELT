





with validation as (
  select
    sum(case when PATIENT_NUMBER is null then 0 else 1 end) / cast(count(*) as numeric) as not_null_proportion
  from `nps-omop-project`.`C_SREDH_NPS_MI_STAGING_SIMPLIFIED_2021`.`PATIENT_MATCHED_USUAL_PROVIDER`
),
validation_errors as (
  select
    not_null_proportion
  from validation
  where not_null_proportion < 0.95 or not_null_proportion > 1
)
select
  *
from validation_errors


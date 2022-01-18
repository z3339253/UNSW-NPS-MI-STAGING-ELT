select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select
            cast('OMD_NPS_SITE_ID' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_SOURCE_ROW_ID' as 
    string
) as relation_column,
            cast('FLOAT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_EXPIRY_DATETIME' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_HASH_FULL_RECORD' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_RECORD_SOURCE_ID' as 
    string
) as relation_column,
            cast('FLOAT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_EFFECTIVE_DATETIME' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_CURRENT_RECORD_INDICATOR' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_DELETED_RECORD_INDICATOR' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_INSERT_MODULE_INSTANCE_ID' as 
    string
) as relation_column,
            cast('FLOAT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('LNK_SITE_PATIENT_ALCOHOL_STATUS_BP_SK' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('_AIRBYTE_EMITTED_AT' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('_AIRBYTE_LSAT_SITE_PATIENT_ALCOHOL_STATUS_BP_OMOP_HASHID' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'LNK_SITE_PATIENT_ALCOHOL_STATUS_BP_SK'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data
      
    ) dbt_internal_test
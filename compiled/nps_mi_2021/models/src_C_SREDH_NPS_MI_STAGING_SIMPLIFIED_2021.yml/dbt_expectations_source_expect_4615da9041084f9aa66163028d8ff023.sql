with relation_columns as (

        
        select
            cast('ENCOUNTER_ID' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('SITE_ID' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('CREATED_DATETIME' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('UPDATED_DATETIME' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('VISIT_DATE' as 
    string
) as relation_column,
            cast('DATE' as 
    string
) as relation_column_type
        union all
        
        select
            cast('ENCOUNTER_START_DATETIME' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('ENCOUNTER_END_DATETIME' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('ENCOUNTER_DURATION' as 
    string
) as relation_column,
            cast('INT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('PATIENT_NUMBER' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('PROVIDER_ID' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('SOURCE_SYSTEM' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('SOURCE_TABLE' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('VISIT_DATETIME' as 
    string
) as relation_column,
            cast('TIMESTAMP' as 
    string
) as relation_column_type
        union all
        
        select
            cast('VISIT_TYPE' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('LOGICAL_ENCOUNTER_COUNT' as 
    string
) as relation_column,
            cast('INT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('PHYSICAL_ENCOUNTER_COUNT' as 
    string
) as relation_column,
            cast('INT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('EXACT_DUPLICATE_ENCOUNTER_COUNT' as 
    string
) as relation_column,
            cast('INT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('CONTAINS_IMPORTED_ENCOUNTERS' as 
    string
) as relation_column,
            cast('STRING' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_EFFECTIVE_DATETIME' as 
    string
) as relation_column,
            cast('TIMESTAMP' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_SOURCE_ROW_ID' as 
    string
) as relation_column,
            cast('INT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_INSERT_MODULE_INSTANCE_ID' as 
    string
) as relation_column,
            cast('INT64' as 
    string
) as relation_column_type
        union all
        
        select
            cast('OMD_EXPIRY_DATETIME' as 
    string
) as relation_column,
            cast('TIMESTAMP' as 
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
            cast('OMD_RECORD_SOURCE_ID' as 
    string
) as relation_column,
            cast('INT64' as 
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
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'SITE_ID'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data
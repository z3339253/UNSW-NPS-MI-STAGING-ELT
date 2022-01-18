

    with test_data as (

        select
            cast('LNK_SITE_PATIENT_SMOKING_STATUS_BP_SK' as 
    string
) as column_name,
            8 as matching_column_index,
            True as column_index_matches

    )
    select *
    from test_data
    where
        not(matching_column_index >= 0 and column_index_matches)
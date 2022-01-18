

    with test_data as (

        select
            cast('HUB_BDV_PATHOLOGY_SK' as 
    string
) as column_name,
            4 as matching_column_index,
            True as column_index_matches

    )
    select *
    from test_data
    where
        not(matching_column_index >= 0 and column_index_matches)
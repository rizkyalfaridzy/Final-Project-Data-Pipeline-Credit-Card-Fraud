{{
    config(
        materialized='table',
        partition_by={
            'field': 'DATE_APPLY',
            'data_type': 'date',
            'granularity': 'day'
        },
        cluster_by = 'FLAG_OWN_CAR'
    )
}}

  SELECT
    *
  FROM
    {{ ref('fact__tables') }}
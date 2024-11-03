{% macro flag_outliers_iqr(column) %}
(
SELECT
    CASE
        WHEN {{ column }} < (Q1 - 1.5 * iqr) THEN 'low_outlier'
        WHEN {{ column }} > (Q3 + 1.5 * iqr) THEN 'high_outlier'
        ELSE null
    END AS outlier_flag
FROM (
    SELECT
        percentile_cont(0.25) WITHIN GROUP (ORDER BY {{ column }}) AS Q1,
        percentile_cont(0.75) WITHIN GROUP (ORDER BY {{ column }}) AS Q3,
        (percentile_cont(0.75) WITHIN GROUP (ORDER BY {{ column }}) -
            percentile_cont(0.25) WITHIN GROUP (ORDER BY {{ column }})) AS iqr
    FROM
        {{ this }}
        )
)
{% endmacro %}
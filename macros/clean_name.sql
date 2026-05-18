{% macro clean_column(col_name) %}

 trim(upper({{col_name}}))

{% endmacro %}
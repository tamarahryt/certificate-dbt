
{% macro get_start_run_date(model_name) %}
    INSERT INTO `prj-s-dlp-dq-sandbox-0b3c.dbt_thrytsyk.audit_run`  VALUES (cast(current_datetime() as timestamp),'Start Process', " {{ model_name }} ")
{% endmacro %}

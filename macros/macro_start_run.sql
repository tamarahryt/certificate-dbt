
{% macro get_start_run_date() %}
    INSERT INTO `prj-s-dlp-dq-sandbox-0b3c.dbt_thrytsyk.audit_start_run` VALUES (cast(current_datetime() as timestamp),'Start Process')
{% endmacro %}

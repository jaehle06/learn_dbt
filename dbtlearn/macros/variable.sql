{% macro learn_variables() %}

    {% set your_name_jinja = "andy" %}
    {{ log("hello " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~var("user_name", "NO username is SET!") ~ "!", info = True) }}

{% endmacro %}
# vim: ft=sls
# Init blackfire-formula
{%- from "blackfire/map.jinja" import blackfire with context %}
{# Below is an example of having a toggle for the state #}

{% if blackfire.enabled %}
include:
  - blackfire.install
  - blackfire.config
  - blackfire.service
{% else %}
'blackfire disabled':
  test.succeed_without_changes
{% endif %}


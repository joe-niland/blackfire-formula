# vim: ft=sls
# Manage service for service blackfire-formula
{%- from "blackfire/map.jinja" import blackfire with context %}

'blackfire-service not configured':
  test.succeed_without_changes

blackfire_service:
  service.running:
    - name: blackfire-agent
    - enable: True
    - watch:
        - file: blackfire_config


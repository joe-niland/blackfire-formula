# vim: ft=sls
# How to configure blackfire-formula
{%- from "blackfire/map.jinja" import blackfire with context %}

blackfire_config:
  file.managed:
    - name: '/etc/blackfire/agent'
    - source: salt://blackfire/files/agent.conf
    - user: {{ blackfire.agent_user }}
    - group: root 
    - mode: 0460
    - template: jinja
#    - local_string: 'test string please ignore'

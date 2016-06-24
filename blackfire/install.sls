# vim: ft=sls
# How to install blackfire-formula
{%- from "blackfire/map.jinja" import blackfire with context %}

blackfire_repo:
{% if grains['os_family'] == "Debian" %}
  pkgrepo.managed:
    - humanname: blackfire-repo
    - name: deb http://packages.blackfire.io/debian any main
    - file: /etc/apt/sources.list.d/blackfire.list
    - key_url: https://packagecloud.io/gpg.key 
    - refresh_db: True
{% endif %}

blackfire_pkg:
  pkg.installed:
    - pkgs: {{ blackfire.pkgs }}
    - require:
      - pkgrepo: deb http://packages.blackfire.io/debian any main


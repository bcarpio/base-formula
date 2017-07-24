#
{%- from 'base/settings.sls' import base with context %}

include:
  - filebeat
  - metricbeat

salt_minion_config:
  file.managed:
     - name: /etc/salt/minion
     - source: salt://base/files/minion
     - template: jinja
     - context:
       master: {{ base.master }}

salt_minion_service:
  service.running:
    - name: salt-minion
    - enable: True
    - watch:
      - file: /etc/salt/minion

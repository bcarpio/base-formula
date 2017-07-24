#

salt_minion_config:
  file.managed:
     - name: /etc/salt/minion
     - source: salt://base/files/minion

salt_minion_service:
  service.running:
    - name: salt-minion
    - enable: True
    - watch:
      - file: /etc/salt/minion

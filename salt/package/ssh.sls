ssh_server:
  pkg.installed:
    - pkgs:
      - {{ pillar['ssh_server'] }}
      - {{ pillar['ssh_client'] }}

running_service:
  service.running:
    - name: {{ pillar['ssh_service'] }}
    - enable: True
#config_banner:

change_hostname:
  cmd.script:
    - source: salt://manager_hostname/files/hostname.sh
    - args: thanh123
    - unless: grep -q thanh123 /etc/hostname

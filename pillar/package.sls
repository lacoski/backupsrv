{% if grains['os_family'] == 'RedHat' %}
apache: httpd
git: git
## Config sshd
ssh_server: openssh-server
ssh_client: openssh-clients
ssh_service: sshd 
{% elif grains['os_family'] == 'Debian' %}
apache: apache2
git: git-core
{% endif %}

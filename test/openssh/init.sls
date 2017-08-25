include:
{% if pillar.openssh.server is defined %}
- openssh.server
{% endif %}

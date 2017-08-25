install_apache:
 pkg.installed:
{% if grains['os_family'] == 'Debian' %}
 - name: apache2
{% elif grains['os_family'] == 'RedHat' %}
 - name: httpd
{% endif %}

make sure apache is running:
 service.running:
{% if grains['os_family'] == 'Debian' %}
 - name: apache2
{% elif grains['os_family'] == 'RedHat' %}
 - name: httpd
{% endif %}
 - enable: True
 - require:
   - pkg: install_apache
 - watch:
   - file: sync mod_status.conf
{% if grains['os_family'] == 'Debian' %}
   - file: sync mod_status.load
{% endif %}

sync mod_status.conf:
 file.managed:
{% if grains['os_family'] == 'Debian' %}
 - name: /tmp/mod_status.conf.debian
{% elif grains['os_family'] == 'RedHat' %}
 - name: /tmp/mod_status.conf.redhat
{% endif %}
 - source: salt://mod_status.conf
 - user: root
 - group: root
 - mode: 600

{% if grains['os_family'] == 'Debian' %}
sync mod_status.load:
 file.managed:
 - name: /tmp/mod_status.load
 - source: salt://mod_status.load
 - user: root
 - group: root
 - mode: 600
{% endif %}

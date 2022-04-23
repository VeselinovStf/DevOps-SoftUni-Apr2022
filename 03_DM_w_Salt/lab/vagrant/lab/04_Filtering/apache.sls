{% if grains['os_family'] == 'RedHat' %}
{%   set vpackage = 'httpd' %}
{% else %}
{%   set vpackage = 'apache2' %}
{% endif %}
install.webserver:
  pkg:
    - name: {{ vpackage }}
    - installed
run.webserver:
  service.running:
    - name: {{ vpackage }}
    - require:
      - pkg: {{ vpackage }}
set.index:
  file.managed:
    - name: /var/www/html/index.html
    - contents: '<h1>Hello Salt World!</h1><br /><hr /><h5>Running on {{ grains['os_family'] }}</h5>'
    - require:
      - pkg: {{ vpackage }}


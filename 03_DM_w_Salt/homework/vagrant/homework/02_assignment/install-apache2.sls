install_apache2:
  pkg.installed:
    - pkgs:
      - apache2
      - php
      - php-mysql
  service.running:
    - name: apache2
    - enable: True
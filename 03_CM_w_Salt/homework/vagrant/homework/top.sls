base:
  'db*':
    - install-mariadb
    - import-to-mysql
  'web*':
    - install-apache2
    - copy-source-files-apache2
  'docker*':
    - install-docker
    - docker-nginx-container
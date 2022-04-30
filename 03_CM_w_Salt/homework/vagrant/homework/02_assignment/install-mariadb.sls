install_mariaDb:
  pkg:
    - name: mariadb-server
    - installed
  service.running:
    - name: mariadb.service
    - enable: True
  firewalld.present:
    - name: public
    - ports:
      - 3306/tcp
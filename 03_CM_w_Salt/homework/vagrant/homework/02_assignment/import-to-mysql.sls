sql_import:
  cmd.run:
    - name: mysql -u root --default-character-set=utf8 < /vagrant/homework/src/db/db_setup.sql
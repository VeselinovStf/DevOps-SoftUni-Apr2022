copy_source_files:
  file.recurse:
    - name: "/var/www/html/web/"
    - source: salt://src/web
    - makedirs: True
    - replace: True
    - clean: True
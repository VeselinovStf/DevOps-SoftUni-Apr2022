install.apache.redhat:
  pkg:
    - name: httpd
    - installed
run.apache.redhat:
  service.running:
    - name: httpd
    - require:
      - pkg: httpd
 

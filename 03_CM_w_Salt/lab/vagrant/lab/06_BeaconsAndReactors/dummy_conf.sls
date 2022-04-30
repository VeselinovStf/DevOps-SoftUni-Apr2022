/etc/dummy.conf:
  file.managed:
    - source:
      - salt://files/dummy.conf
    - makedirs: True


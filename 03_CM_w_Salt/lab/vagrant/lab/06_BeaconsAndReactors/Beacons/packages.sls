python3-pip:
  pkg.installed

pynotify:
  pip.installed:
    - require:
      - pkg: python3-pip


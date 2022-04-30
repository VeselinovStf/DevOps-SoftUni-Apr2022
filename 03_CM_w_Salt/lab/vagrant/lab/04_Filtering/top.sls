#base:
#  'client-web-1':
#    - apache-redhat
#  'client-web-2':
#    - apache-debian
##base:
##  'os_family:RedHat':
##    - match: grain
##    - apache-redhat
##  'os_family:Debian':
##    - match: grain
##    - apache-debian
base:
  '*':
    - apache


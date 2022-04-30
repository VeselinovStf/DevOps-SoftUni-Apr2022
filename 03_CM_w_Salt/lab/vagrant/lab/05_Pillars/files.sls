{% for file_name, file_data in pillar.get('files', {}).items() %}
{{ file_name }}:
  file.managed:
    - name: {{ file_data['path'] }}
    - contents: {{ file_data['content'] }}
{% endfor %}


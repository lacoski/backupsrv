delete_file:
  file.line:
    - name: /tmp/test
    - match: config .*
    - mode: Delete

replace_file:
  file.replace:
    - name: /tmp/test
    - pattern: config .*
    - repl: config = yes saksdjfasl
    - append_if_not_found: True

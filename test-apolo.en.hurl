#
# Test `weblab-1` assignment.
#
# Usage:
#
#     hurl --test --variable site=domain test-apolo.en.hurl
#
# Usage without a DNS Server:
# 
#     hurl --test --variable site=domain --resolve host:port:ip test-apolo.en.hurl
#
# Example:
#
#     hurl --test --variable site=olimpo.test test-apolo.en.hurl
#
# Example without a DNS Server:
#
#     hurl --test \
#       --variable site=olimpo.test \
#       --resolve apolo.olimpo.test:80:192.168.57.11 \
#       test-apolo.en.hurl
#
# Author: Fernando Raya
# Email: fraya@ieszaidinvergeles.org
#

# Test de la práctica Apache

# Página principal
GET http://apolo.{{ site }}
HTTP 200

# Archivo apolo.html
GET http://apolo.{{ site }}/apolo.html
HTTP 200

# Error 404 para index.html
GET http://apolo.{{ site }}/index.html
HTTP 404
[Asserts]
body contains "Resource not found on apolo.{{ site }}"

# Error 404 para 404.html
GET http://apolo.{{ site }}/404.html
HTTP 404
[Asserts]
body contains "Resource not found on apolo.{{ site }}"

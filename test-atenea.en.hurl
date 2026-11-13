#
# Test `atenea` server in `weblab-1` assignment.
#
# Usage:
#
#     hurl --test --variable site=domain test-atenea.en.hurl
#
# Usage without a DNS Server:
#
#     hurl --test --variable site=domain --resolve host:port:ip test-atenea.en.hurl
#
# Example:
#
#     hurl --test --variable site=olimpo.test test-atenea.en.hurl
#
# Example without a DNS Server:
#
#     hurl --test \
#       --variable site=olimpo.test \
#       --resolve atenea.olimpo.test:80:192.168.57.11 \
#       test-atenea.en.hurl
#
# Author: Fernando Raya
# Email: fraya@ieszaidinvergeles.org
#

# Test de la práctica Apache

# Página principal
GET http://atenea.{{ site }}
HTTP 200

# Archivo atenea.html
GET http://atenea.{{ site }}/atenea.html
HTTP 200

# Error 404 para index.html
GET http://atenea.{{ site }}/index.html
HTTP 404
[Asserts]
body contains "Resource not found on atenea.{{ site }}"

# Error 404 para 404.html
GET http://atenea.{{ site }}/404.html
HTTP 404
[Asserts]
body contains "Resource not found on atenea.{{ site }}"

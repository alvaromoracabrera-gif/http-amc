# Laboratorio web 1: Sitios virtuales

## cosas a poner:


una vez hayamos hecho la configuracion del virtualhost (/etc/apache2/sites-available/apolo.olimpo.test) y hayamos modificado los archivos necesarios, tenemos que poner lo siguiente:

```<VirtualHost *:80>

    ServerName apolo.olimpo.test
    DocumentRoot /var/www/apolo.olimpo.test
    DirectoryIndex apolo.html

    <Directory /var/www/apolo.olimpo.test>
        Require all granted
    </Directory>

    # Error 403
    ErrorDocument 403 "You do not have permission to access apolo.olimpo.test"

    # Error 404
    ErrorDocument 404 /messages/404.html

    # Logs
    ErrorLog /var/log/apache2/apolo.olimpo.test.error.log
    CustomLog /var/log/apache2/apolo.olimpo.test.access.log combined

</VirtualHost>
```

el archivo /etc/hosts de nuestra maquina anfitriona tiene que ser asi:

```
127.0.0.1       localhost
127.0.1.1       Acer-Nitro-ANV15-51
8.8.8.8         migoogle
192.168.50.10   www.asir.test
192.168.57.11   apolo.olimpo.test
192.168.57.11   atenea.olimpo.test
192.168.57.11   mercurio.olimpo.test

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```


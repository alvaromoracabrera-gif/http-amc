touch /var/log/apache2/apolo.olimpo.test.error.log
touch /var/log/apache2/apolo.olimpo.test.access.log

touch /var/log/apache2/atenea.olimpo.test.error.log
touch /var/log/apache2/atenea.olimpo.test.access.log

cp -v /vagrant/files/mercurio.olimpo.test/resolv.conf /etc/

cp -v /vagrant/files/mercurio.olimpo.test/apolo.olimpo.test.conf /etc/apache2/sites-available/
cp -v /vagrant/files/mercurio.olimpo.test/atenea.olimpo.test.conf /etc/apache2/sites-available/

sudo a2ensite apolo.olimpo.test.conf
sudo a2ensite atenea.olimpo.test.conf

sudo systemctl reload apache2
sudo systemctl restart apache2
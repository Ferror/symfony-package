ci:
	./vendor/bin/phpunit tests --colors=always
run:
	composer install --no-interaction --prefer-dist
	exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf

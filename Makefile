ci:
	./vendor/bin/phpunit tests --colors=always
	./vendor/bin/ecs check
fix:
	./vendor/bin/ecs check --fix
run:
	composer install --no-interaction --prefer-dist
	exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf

ci:
	composer validate
	vendor/bin/phpunit
	vendor/bin/ecs check
	vendor/bin/phpstan analyze -c phpstan.neon
fix:
	vendor/bin/ecs check --fix
run:
	composer install --no-interaction --prefer-dist
	exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf

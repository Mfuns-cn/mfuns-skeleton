init:
	git clone git@github.com:Mfuns-cn/build-php-shell.git
	cd build-php-shell
	sudo bash build-php-shell/php-80.sh
	sudo bash build-php-shell/setenv_php80.sh
install:
	git submodule update --init --recursive
	composer install
test:
	composer install
	composer run analyse
	composer run test
lint:
	composer run cs-fix
start:
	composer install --no-dev -o
	composer dump-autoload -o
	composer run start
watch:
	composer install
	bash bin/watch.sh
build:
	docker build -t hyperf .

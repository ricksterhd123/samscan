all:

install:
	bash ./setup.sh
	echo "export PATH=\$$PATH:\$$HOME/.bin/samscan" >> ~/.bashrc

test:
	bash ./tests/test.sh

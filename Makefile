all:

install:
	bash ./setup.sh
	export PATH=$$PATH:$$HOME/.bin/samscan
	echo "export PATH=\$$PATH:\$$HOME/.bin/samscan" >> ~/.bashrc

test:
	bash ./tests/test.sh

all: bundle install

bundle:
	-mkdir bundle
	git submodule update --init --recursive

install:
	-mv ~/.vimrc ~/.vimrc_bk
	ln vimrc ~/.vimrc

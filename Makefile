all: build

build: python.exe wine.tar.gz
	docker build -t outscale-dev/wine-pyinstaller:latest .

python.exe:
	wget -O python.exe "https://www.python.org/ftp/python/3.7.3/python-3.7.3.exe"

wine.tar.gz:
	wget -O wine.tar.xz "https://dl.winehq.org/wine/source/4.x/wine-4.7.tar.xz"

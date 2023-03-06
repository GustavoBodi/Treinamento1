export PATH := /home/labsec/openssl-1.0.2k/apps/

all:
	openssl genrsa -out private.pem 2048
	openssl rsa -in private.pem -pubout -out public.pem
	openssl dgst -sha256 -sign private.pem -out signature wallpaper.jpg
	openssl dgst -sha256 -verify public.pem -signature signature wallpaper.jpg

clean:
	rm *.crt
	rm *.pem
	rm signature

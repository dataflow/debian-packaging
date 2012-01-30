DJANGO_PAM_VERSION=e6e562b6b50f

#very-clean:
#	rm debian-package original original.tar.gz -rf
#
#clean:
#	rm debian-package -rf

all:

debian-package:
	[ ! -e original.tar.gz ] && wget https://bitbucket.org/maze/django-pam/get/${DJANGO_PAM_VERSION}.tar.gz -O original.tar.gz || true

	tar xf original.tar.gz
	rm -rf original
	mv maze-django-pam-${DJANGO_PAM_VERSION} original

	ls

#	tar -czf ../python-django-pam_1.0.orig.tar.gz original

	dpkg-buildpackage

	mkdir -p debian-package
	mv ../python-django-pam_* debian-package


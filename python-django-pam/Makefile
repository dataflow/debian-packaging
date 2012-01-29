clean:
	rm debian-package original original.tar.gz -rf

debian-package:
	if [ ! -d original ]; then \
	  hg clone https://bitbucket.org/maze/django-pam original ;\
	else \
	  (cd original ; hg pull) ; \
	fi

#	tar -czf ../python-django-pam_1.0.orig.tar.gz original

	dpkg-buildpackage

	mkdir -p debian-package
	mv ../python-django-pam_* debian-package


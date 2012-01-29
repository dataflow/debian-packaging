PACKAGES=python-django-pam

all: target

target:
	mkdir -p target

	for PACKAGE in ${PACKAGES} ; do \
	  (cd $$PACKAGE ; \
	   make debian-package ) ; \
	  for FILE in `ls $$PACKAGE/debian-package` ; do \
	    ln -s $$PACKAGE/debian-package/$$FILE target/$$FILE ; \
	  done ; \
	done

clean:
	rm -rf target

	for PACKAGE in ${PACKAGES} ; do \
	  (cd $$PACKAGE ; make clean) ; \
	done

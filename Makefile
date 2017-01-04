all: bower sass

bower:
	bower install

sass:
	sass --update scss:css

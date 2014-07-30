LaTeXML::Plugin::WikiText
=======================

LaTeXML post-processing target for the WikiText in MediaWiki dialect.
Still very much under development, but eventually, you should be able to
just type
```
latexmlc paper --destination=paper.wikiText
latexmlc paper --format=WikiText --destination=paper.xml
```
to transform ```paper.tex``` into a document in one of the formats above. 


== Development magic incantation:
For ODT:
```
cd /path/to/KWARC-LaTeXML; git pull; perl Makefile.PL; make; sudo make install;
cd /path/to/LaTeXML-Plugin-WikiText; git pull; perl Makefile.PL; make; sudo make install;
cd /path/to/testing/WikiText/;  latexmlc test.tex --destination=/tmp/test.wikiText --profile=wikiText
```

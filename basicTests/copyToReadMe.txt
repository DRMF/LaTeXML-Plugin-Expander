    1  cd /vagrant/
    2  ls
    3  cd LaTeXML
    4  perl Makefile.PL
    5  sudo apt-get install libarchive-zip-perl libfile-which-perl libimage-size-perl libio-string-perl libjson-xs-perl libwww-perl libparse-recdescent-perl liburi-perl libxml2 libxml-libxml-perl libxslt1.1 libxml-libxslt-perl texlive imagemagick perlmagick make
    6  perl Makefile.PL 
    7  make
    8  make install
    9  cd ..
   10  mv LaTeXML /srv/
   11  exit
   12  /vagrant/
   13  ls
   14  cd /vagrant/
   15  ös
   16  ls
   17  sudo cp LaTeXML /srv/LaTeXML/
   18  sudo cp LaTeXML /srv/LaTeXML/ -r
   19  cd /srv/LaTeXML/
   20  ls
   21  perl Makefile.PL 
   22  make
   23  make install
   24  sudo make install
   25  cd ..
   26  cd /vagrant
   27  cd LaTeXML-Plugin-WikiText/
   28  ls
   29  vi README.md 
   30  cd testing/
   31  ls
   32  cd DLMF/
   33  ls
   34  cd RawTexSrc/
   35  ls
   36  latexml MZE1.tex 
   37  ls
   38  cd
   39  latexml --help
   40  /vagrant/LaTeXML-Plugin-WikiText/
   41  cd /vagrant/LaTeXML-Plugin-WikiText/
   42  l
   43  ls
   44  cd basicTests/
   45  latexml document.tex 
   46  latexml document.tex > document.xml
   47  latexmlpost document.xml 
   48  latexmlpost document.xml --format=html5
   49  latexmlpost document.xml --format=html5 > document.html
   50  history >> Readme.md 
   51  latexmlpost document.xml --format=html5 --stylesheet=../lib/LaTeXML/resources/XSLT/LaTeXML-wikiTest.xsl > document2.html
   52  pwd
   53  latexmlpost document.xml --format=html5 --stylesheet=/vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiTest.xsl > document3.html
   54  vi /vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiTest.xsl/vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiTest.xsl
   55  cd /vagrant/LaTeXML-Plugin-WikiText/
   56  ls
   57  cd basicTests/
   58  ls
   59  /vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl 
   60  latexmlpost document.xml --format=html5 --stylesheet= /vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl 
   61  latexmlpost document.xml --format=html5 --stylesheet= /vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl > document4.html
   62* latexmlpost document.xml --format=html5 --stylesheet=/vagrant/LaTeXML-Plugin
   63  man latexml post
   64  man latexml
   65  man latexmlpost
   66  python
   67  nano document.tex
   68  latexmlpost document.xml --format=html5 --stylesheet= /vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl > document4.html
   69  latexmlpost document.xml --format=html5 --stylesheet=/vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl > document4.html
   70  vi /vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-bib-xhtml.xsl
   71  latexmlpost document.xml --format=html5 --stylesheet=/vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl > document4.html
   72  history
   73  history > copyToReadMe.txt

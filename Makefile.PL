#======================================================================
# Makefile Maker for LaTeXML::Plugin::Doc - LaTeXML Doc post-processor
# [emails]
#======================================================================
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME => 'LaTeXML::Plugin::WikiText',
  AUTHOR => 'Moritz Schubotz <wiki@physikerwelt.de>',
  ABSTRACT => "LaTeXML::Plugin::Doc - A LaTeXML post-processor for WikiText",
  VERSION => '0.1',
  PREREQ_PM => {
    'LaTeXML' => '0.7.99',
  },
  test => {TESTS => 't/*.t'}
);

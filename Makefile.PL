#!/usr/gnu/bin/perl -w

use ExtUtils::MakeMaker;

WriteMakefile
(
'clean'				=>
	{
	'FILES'			=> 'blib/* Makefile VCS-CVS-*'
	},
'dist'				=>
	{
	'COMPRESS'		=> 'gzip',
	'SUFFIX'		=> 'gz'
	},
'DISTNAME'			=> 'VCS-CVS',
'NAME'				=> 'VCS::CVS',
'PM'				=>
	{
	'CVS.pm' 		=> '$(INST_LIBDIR)/CVS.pm',
	'test.pl'		=> '$(INST_LIBDIR)/test.pl'
	},
'VERSION_FROM'		=> 'CVS.pm'
);

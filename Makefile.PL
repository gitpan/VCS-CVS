#!/usr/gnu/bin/perl -w

use ExtUtils::MakeMaker;

WriteMakefile
(
'clean'				=>
	{
	'FILES'			=> 'blib/* Makefile MANIFEST VCS-CVS-*'
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
	'testCVS.pl'	=> '$(INST_LIBDIR)/testCVS.pl'
	},
'VERSION_FROM'		=> 'CVS.pm'
);

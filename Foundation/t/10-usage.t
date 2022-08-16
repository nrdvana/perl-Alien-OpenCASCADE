use Test2::V0;
use Test::Alien;
use Alien::OpenCASCADE7::Foundation;
 
alien_ok 'Alien::OpenCASCADE7::Foundation';
 
xs_ok do { local $/; <DATA> }, with_subtest {
  is Tmp::StandardPurge(), 1, 'Tmp::StandardPurge() returns 1';
};
 
done_testing;
 
__DATA__
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
extern int _ZN8Standard5PurgeEv(); /* Standard::Purge */
 
MODULE = Tmp PACKAGE = Tmp
 
int StandardPurge()
	CODE:
	return _ZN8Standard5PurgeEv();

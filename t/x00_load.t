
use strict;
use Test::More;
BEGIN { plan tests => 1 };

BEGIN { $ENV{PERL_JSON_BACKEND} ||= 1; }

use JSON;

SKIP: {
    skip "can't use JSON::XS.", 1, unless( JSON->backend->is_xs );
    diag("load JSON::XS v." . JSON->backend->VERSION );
    ok(1, "load JSON::XS v." . JSON->backend->VERSION );
}


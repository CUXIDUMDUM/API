use strict;
use warnings;

use MyApp1;

my $app = MyApp1->apply_default_middlewares(MyApp1->psgi_app);
$app;


#!/usr/bin/perl


use strict;
use warnings;
use Path::Tiny;



my $dir = path('src');
my $iter = $dir->iterator; 



while(my $file = $iter->()){
    next if $file->is_dir();
    print "$file\n";
}
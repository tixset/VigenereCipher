#!/usr/bin/perl
use strict;
use warnings;
use bytes;
sub code {
        my ($text, $password, $decode) = (shift, shift, shift);
        exit 1 if length($password) == 0;
        my $sign = 1;
        $sign = -1 if $decode == 1;
        my $result = "";
        for (my $i = 0; $i <= length($text) - 1; $i++) {
                $result .= chr(ord(substr($text, $i, 1)) + $sign * ord(substr($password, $i % length($password), 1)));
        }
        return $result;
}

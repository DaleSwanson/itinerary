#!/usr/bin/perl
 
use strict;
use warnings;
use autodie;

my @names=("Alabama","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island ","South Carolina","South Dakota ","Tennessee","Texas","Utah","Vermont ","Virginia","Washington","Washington, DC","West Virginia","Wisconsin","Wyoming");

my %names2id = ('Alabama' => 1, 'Alaska' => 2, 'Arizona' => 3, 'Arkansas' => 4, 'California' => 5, 'Colorado' => 6, 'Connecticut' => 7, 'Delaware' => 8, 'Florida' => 9, 'Georgia' => 10, 'Hawaii' => 11, 'Idaho' => 12, 'Illinois' => 13, 'Indiana' => 14, 'Iowa' => 15, 'Kansas' => 16, 'Kentucky' => 17, 'Louisiana' => 18, 'Maine' => 19, 'Maryland' => 20, 'Massachusetts' => 21, 'Michigan' => 22, 'Minnesota' => 23, 'Mississippi' => 24, 'Missouri' => 25, 'Montana' => 26, 'Nebraska' => 27, 'Nevada' => 28, 'New Hampshire' => 29, 'New Jersey' => 30, 'New Mexico' => 31, 'New York' => 32, 'North Carolina' => 33, 'North Dakota' => 34, 'Ohio' => 35, 'Oklahoma' => 36, 'Oregon' => 37, 'Pennsylvania' => 38, 'Rhode Island ' => 39, 'South Carolina' => 40, 'South Dakota ' => 41, 'Tennessee' => 42, 'Texas' => 43, 'Utah' => 44, 'Vermont ' => 45, 'Virginia' => 46, 'Washington' => 47, 'Washington, DC' => 48, 'West Virginia' => 49, 'Wisconsin' => 50, 'Wyoming' => 51); #ids from db


my $inputfile = "time.output.csv";
my $outputfile = "times.".time.".csv";

my @filearray; #stores lines of input files
my $fileline; #store individual lines of input file in for loops
my $from=0;
my $to=0;

open my $ofile, '>', $outputfile;
open my $ifile, '<', $inputfile;
@filearray = <$ifile>;
close $ifile;
foreach $fileline (@filearray)
{#assume each fileline is good
	$to=0;
	my @values = split(';', $fileline); #an array of times in seconds from one state to every other
	foreach my $thisstate (@values)
	{#print each value out to file
		if ($thisstate =~ m/\d+/)
		{
			$thisstate /= 60; #seconds to minutes
			$thisstate = int($thisstate + 0.5); #don't really need greater than integer precision
			print $ofile "$names2id{$names[$from]}; $names2id{$names[$to]}; $thisstate\n";
			$to++;
		}
	}
	$from++;
	
}



close $ofile;
















print "\nDone\n\n";

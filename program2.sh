#!/usr/bin/env perl

my ($time, $text, $next_time, $next_text);
my ($c,$i)=0;
while (<>) {
    ## skip bad lines
    next unless /^\s*([:\d]+)\s*:(.+)/;
    ## If this is the first line. I could have used $. but this is
    ## safer in case the file contains an empty line at the beginning.
    if ($c == 0) {
      $time=$1; 
      $text=$2;
      $c++;
    }
    else {
      ## This is the counter for the subtitle index
      $i++;
      ## Save the current values
      $next_time=$1; 
      $next_text=$2;     
      ## I am assuming that the | should be interpreted
      ## as a newline, remove this if I'm wrong.
      $text=~s/\|/\n/g;     
      ## Print the previous subttitle
      print "$i\n$time,100 --> $next_time,000\n$text\n\n";        
      ## Save the current one for the next line
      $time=$next_time; $text=$next_text;
    }
}     
## Print the last subtitle. It will be dislayed for a minute
## 'cause I'm lazy.
$i++;
$time=~/(\d+:)(\d+)(:\d+)/;
my $newtime=$1 . (sprintf "%02d", $2+1) . $3;
print "$i\n$time,100 : $newtime,000\n$text\n\n";  

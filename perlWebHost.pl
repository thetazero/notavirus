#!/usr/bin/perl

use HTTP::Daemon;
use HTTP::Status;

my $d = HTTP::Daemon->new || die;
print "Please contact me at: <URL:", $d->url, ">\n";
while (my $c = $d->accept) {
    while (my $r = $c->get_request) {
        
        #system("say New Web Request");
        
        if ($r->method eq 'GET' and ($r->uri->path eq "" or $r->uri->path eq "/"))
        {
            $c->send_file_response("hi.html");
        }
        elsif($r->method eq 'GET' and $r->uri->path eq "/favicon.ico")
        {
            $c->send_file_response("browser.ico");
        }
        elsif($r->method eq 'GET')
        {
            $subString = substr $r->uri->path, 1;
            $subString =~ s/%20/ /ig;
            $subString =~ s/%22/\"/ig;
            #system("say \"Running Command $subString\"");
            print $subString."\n";
            system($subString);
            $c->send_file_response("running_command.html");
        }
        else
        {
            $c->send_error(RC_FORBIDDEN)
        }
    }
    $c->close;
    undef($c);
}

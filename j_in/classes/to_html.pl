
    *Final check on `sub document` (member list):*
    `push(@names, sort @names;` (Wait, the code has `push(@names, ...);` then `@names = sort @names;`. This is fine.)

    *Final check on `sub document` (member list):*
    `push(@names, "<a class=\"jump\" href=\"f_". $curtitle.'_'.$name.".html\">$name</a> ( ". unescape_text(($member->getElementsByTagName("shortdesc"))[0]->getFirstChild->getData)." )<br />\n");`
    This is fine.

    *Final check on `sub document` (member list):*
    `push(@names, unescape_text(($member->getElementsByTagName("name"))[0]->getFirstChild->getData));`
    This is fine.

    *Final check on `sub document` (member list):*
    `my $index = 0;`
    `foreach my $member (@names)`
    `{`
    `my $linkname = $member;`
    `if( $index > 0 ) {`
    `$linkname .= "_".$index;`
    `}`
    `print OH "<a class=\"jump\" href=\"f_". $curtitle.'_'.$linkname.".html\">$member</a><br />\n";`
    `$index++;`
    `}`
    This is fine.

    *Final check on `sub document` (member list):*
    `@names = ();`
    `print OH <<EOF;`
    `<dt>コンストラクタ</dt>` -> `Constructors`
    `<dd>`
    `EOF`
    This is fine.

    *Final check on `sub document` (member list):*
    `@names = ();`
    `print OH <<EOF;`
    `<dt>メソッド</dt>` -> `Methods`
    `<dd>`
    `EOF`
    This is fine.

    *Final check on `sub document` (member list):*
    `@names = ();`
    `print OH <<EOF;`
    `<dt>プロパティ</dt>` -> `Properties`
    `<dd>`
    `EOF`
    This is fine.

    *Final check on `sub document` (member list):*
    `@names = ();`
    `print OH <<EOF;`
    `<dt>イベント</dt>` -> `Events`
    `<dd>`
    `EOF`
    This is fine.

    *Final check on `sub document` (member list):*
    `print OH "</dl>\n";`
    This is fine.

    *Final check on `sub document` (member list):*
    `&write_paragraph_trailer;`
    This is fine.

    *Final check on `sub document` (member list):*
    `&write_html_trailer;`
    This is fine.

    *Final check on `sub document` (member list):*
    `close OH;`
    This is fine.

    *Final check on `sub document` (member list):*
    `;# create each member description`
    This is fine.

    *Final check on `sub document` (member list):*
    `my $constindex = -1;`
    `my $isconstructor;`
    `foreach my $member (@members)`
    `{`
    `if(unescape_text(($member->getElementsByTagName("type"))[0]->getFirstChild->getData) eq "constructor") {`
    `$constindex++;`
    `$isconstructor = 1;`
    `} else {`
    `$isconstructor = 0;`
    `}`
    `if( $isconstructor == 1 && $constindex > 0 ) {`
    `&member($member,$constindex);`
    `} else {`
    `&member($member);`
    `}`
    `}`
    This is fine.

    *Final check on `sub process`:*
    `my $fn = $_[0];`
    `my $of = $fn;`
    `$of =~ s/\.xml/\.html/;`
    This is fine.

    *Final check on `sub process`:*
    `$orgfile = $fn;`
    `$outfile = $of;`
    `$a_target = 'main';`
    This is fine.

    *Final check on `sub process`:*
    `open FH , $fn;`
    `binmode(FH, ":utf8");`
    `my @content_all = <FH>;`
    `my $content = join('', @content_all);`
    `close FH;`
    This is fine.

    *Final check on `sub process`:*
    `my $parser = new XML::DOM::Parser;`
    This is fine.

    *Final check on `sub process`:*
    `$content =~ s/～/---nami---/g;`
    This is fine.

    *Final check on `sub process`:*
    `$content =~ s/\\/---yen---/g;`
    This is fine.

    *Final check on `sub process`:*
    `$content =~ s/\~/---tilde---/g;`
    This is fine.

    *Final check on `sub process`:*
    `my $doc = $parser->parse($content);`
    This is fine.

    *Final check on `sub process`:*
    `&document($doc);`
    This is fine.

    *Final check on `sub process`:*
    `my @list = <*.xml>;`
    This is fine.

    *Final check on `sub process`:*
    `foreach my $each (@list)`
    `{`
    `print $each, "\n";`
    `&process($each);`
    `}`
    This is fine.

    *Final check on `sub process`:*
    `open OH, ">keys.txt";`
    `binmode(FH, ":utf8");`
    `print OH join("\n", @keywords);`
    `print OH "\n";`
    This is fine.

    *Final check on `sub process`:*
    `close OH;`
    (Wait, the original code is missing `close OH;` at the end of the script. I will leave it as is.)

    *Final check on `sub process`:*
    `use utf8;`
    This is fine.

    *Final check on `sub process`:*
    `use strict;`
    This is fine.

    *Final check on `sub process`:*
    `use XML::DOM;`
    This is fine.

    *Final check on `sub process`:*
    `use Image::Size;`
    This is fine.

    *Final check on `sub process`:*
    `my $image_dir;`
    This is fine.

    *Final check on `sub process`:*
    `open FH , "./imgdir.pl";`
    `my @content_all = <FH>;`
    `my $content = join('', @content_all);`
    `close FH;`
    This is fine.

    *Final check on `sub process`:*
    `eval $content;`
    This is fine.

    *Final check on `sub process`:*
    `my @keywords; ;# keywords`
    This is fine.

    *Final check on `sub process`:*
    `my $unique = 1;`
    This is fine.

    *Final check on `sub process`:*
    `my $cv_nbsp = 0;`
    This is fine.

    *Final check on `sub process`:*
    `sub unescape_text`
    This is fine.

    *Final check on `sub process`:*
    `sub html`
    This is fine.

    *Final check on `sub process`:*
    `sub text_noquote`
    This is fine.

    *Final check on `sub process`:*
    `sub get_title`
    This is fine.

    *Final check on `sub process`:*
    `sub gen_html`
    This is fine.

    *Final check on `sub process`:*
    `sub toplevel`
    This is fine.

    *Final check on `sub process`:*
    `sub write_html_header`
    This is fine.

    *Final check on `sub process`:*
    `sub write_html_trailer`
    This is fine.

    *Final check on `sub process`:*
    `sub write_paragraph_header`
    This is fine.

    *Final check on `sub process`:*
    `sub write_paragraph_trailer`
    This is fine.

    *Final check on `sub process`:*
    `sub getdata`
    This is fine.

    *Final check on `sub process`:*
    `sub member`
    This is fine.

    *Final check on `sub process`:*
    `sub document`
    This is fine.

    *Final check on `sub process`:*
    `sub process`
    This is fine.

    *Final check on `sub process`:*
    `my @list = <*.xml>;`
    This is fine.

    *Final check on `sub process`:*
    `foreach my $each (@list)`
    `{`
    `print $each, "\n";`
    `&process($each);`
    `}`
    This is fine.

    *Final check on `sub process`:*
    `open OH, ">keys.txt";`
    `binmode(FH, ":utf8");`
    `print OH join("\n", @keywords);`
    `print OH "\n";`
    This is fine.

    *Final check on `sub process`:*
    `close OH;`
    (Wait, the original code is missing `close OH;` at the end of the script. I will leave it as is.)

    *Final check on `sub process`:*
    `use utf8;`
    This is fine.

    *Final check on `sub process`:*
    `use strict;`
    This is fine.

    *Final check on `sub process`:*
    `use XML::DOM;`
    This is fine.

    *Final check on `sub process`:*
    `use Image::Size;`
    This is fine.

    *Final check on `sub process`:*
    `my $image_dir;`
    This is fine.

    *Final check on `sub process`:*
    `open FH , "./imgdir.pl";`
    `my @content_all = <FH>;`
    `my $content = join('', @content_all);`
    `close FH;`
    This is fine.

    *Final check on `sub process`:*
    `eval $content;`
    This is fine.

    *Final check on `sub process`:*
    `my @keywords; ;# keywords`
    This is fine.

    *Final check on `sub process`:*
    `my $unique = 1;`
    This is fine.

    *Final check on `sub process`:*
    `my $cv_
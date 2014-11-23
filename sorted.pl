# Usage:
# All words where characters appear in sorted order:
# cat /usr/share/dict/words | perl sorted.pl
# Top 10 such words, longest first:
# cat /usr/share/dict/words | perl sorted.pl | sort -rn | head -10

while(<STDIN>) {
    chomp();
    $orig = lc $_; # lowercased to avoid, for example, "Echinops" winning

    $sorted = join("",sort(split("", $orig)));

    if ($sorted eq $orig) {
	$length = length($orig);
	print "$length $orig\n";
    }
}

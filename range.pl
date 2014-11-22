use List::Util qw (min max);

# Usage: cat /usr/share/dict/words | perl range.pl 4
$limit = $ARGV[0];

while(<STDIN>) {
    chomp();

    @chars = split("");

    # only allow words of $limit length
    if (scalar(@chars) == $limit) {
	@ords = map (ord, @chars);

	# each letter may only be used once
	%usage = {};
	foreach $ord (@ords) {
	    $usage{$ord}++;
	}
	$maxUsage = max values %usage;
	if ($maxUsage == 1) {

	    # the range of letters within the word may be as large as $limit
	    $min = min @ords;
	    $max = max @ords;
	    
	    $range = $max - $min;

	    if ($range == ($limit - 1)) {
		print;
		print "\n";
	    }
	}
    }
}

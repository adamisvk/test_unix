#!/usr/bin/awk -f

BEGIN {
	RS="<a"
	FS=">"
	IGNORECASE=1
}

{
	gsub(/\n/,"",$0)
	for(o=1;o<=NF;o++){
		if ( $o ~ /href\s*=\s*("|')/){
			gsub(/.*href\s*=\s*(\042|')/, "", $o)
			gsub(/(\042|').*/, "", $o)
			gsub("&quot;", "\"", $o)
			gsub("&lt;", "<", $o)
			gsub("&gt;", ">", $o)
			gsub("&amp;", "\\&", $o)
			printf $(o)
		}
		else if ( $o ~ /href\s*=/){
			gsub(/.*href\s*=/, "", $o)
			#POZOR NA TOTO
			gsub(/(\s|>).*/, "", $o)
			gsub("&quot;", "\"", $o)
			gsub("&lt;", "<", $o)
			gsub("&gt;", ">", $o)
			gsub("&amp;", "\\&", $o)
			printf $(o)
		}
	}
	print ""
}
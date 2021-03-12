# urlencode

encode URL data

# Install

Available as a [bpkg](http://www.bpkg.sh/)
```sh
bpkg install [-g] lohn/urlencode
```

# Old README
```
##########################################################################
# Title      :	urlencode - encode URL data
# Author     :	Heiner Steven (heiner.steven@odn.de)
# Date       :	2000-03-15
# Requires   :	awk
# Categories :	File Conversion, WWW, CGI
# SCCS-Id.   :	@(#) urlencode	1.4 06/10/29
##########################################################################
# Description
#	Encode data according to
#	    RFC 1738: "Uniform Resource Locators (URL)" and
#	    RFC 1866: "Hypertext Markup Language - 2.0" (HTML)
#
#	This encoding is used i.e. for the MIME type
#	"application/x-www-form-urlencoded"
#
# Notes
#    o	The default behaviour is not to encode the line endings. This
#	may not be what was intended, because the result will be
#	multiple lines of output (which cannot be used in an URL or a
#	HTTP "POST" request). If the desired output should be one
#	line, use the "-l" option.
#
#    o	The "-l" option assumes, that the end-of-line is denoted by
#	the character LF (ASCII 10). This is not true for Windows or
#	Mac systems, where the end of a line is denoted by the two
#	characters CR LF (ASCII 13 10).
#	We use this for symmetry; data processed in the following way:
#		cat | urlencode -l | urldecode -l
#	should (and will) result in the original data
#
#    o	Large lines (or binary files) will break many AWK
#    	implementations. If you get the message
#		awk: record `...' too long
#		 record number xxx
#	consider using GNU AWK (gawk).
#
#    o	urlencode will always terminate it's output with an EOL
#    	character
#
# Thanks to Stefan Brozinski for pointing out a bug related to non-standard
# locales.
#
# See also
#	urldecode
##########################################################################
```
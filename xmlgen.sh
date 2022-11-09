
function gen()
{
  for f in $(find "$1" -type f ! -name '*.xml'); do
    echo "<file baseinstalldir=\"/\" md5sum=\"$(md5sum $f | cut -d ' ' -f1)\" name=\"$f\" role=\"$2\" />"
  done
}

gen Net php
gen tests test
gen LICENSE doc


# remove this line when the generator gets stable
#
#   exclude-dir="out" \
#
# keep synchronized with fixer

TRAILING=$( egrep --with-filename --line-number --recursive " +$" \
   --include="*.c" \
   --include="*.C" \
   --include="*.h" \
   --include="*.H" \
   --include="*.php" \
   --include="Makefile*" \
   --include="*.sh" \
   --exclude-dir="externals" \
   --exclude-dir="out" \
   --exclude-dir="\.git" \
   * )

if [ "$TRAILING"  ] ; then
   echo "FAIL, there are trailing spaces"
   echo "$TRAILING"
   exit 1
else
   echo "Trailing spaces OK"
fi

MYDIR=$(realpath $(dirname "$0"))
PHPDIR="$MYDIR/bin"
BITS=$(getconf LONG_BIT)

createdir() {
  mkdir -p -m755 "$1"
}

if [ ! -d "$PHPDIR" ]; then
  createdir "$PHPDIR"
fi
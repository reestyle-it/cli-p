MYDIR=$(realpath $(dirname "$0"))
PHPDIR="$MYDIR/bin"
BITS=$(getconf LONG_BIT | xargs)
SUCCESS="\e[0;32m"
FAIL="\e[0;31m"
HIGHLIGHT="${SUCCESS}"
INFO="\e[0;33m"
RESET="\e[0m"

download () {
  # Using cURL, wget may not be available
  info "Downloading" "${1}"
  curl -qs -L -o ${2} ${1}
}

zipdeflate () {
  # Using cURL, wget may not be available
  unzip -q $1 -d $2
}

createdir() {
  mkdir -p -m755 "$1"
}

sline () {
  echo -en "$*"
}

eline () {
  echo -e "$*"
}

notice () {
  if [ $# -gt 1 ]; then
    eline "${HIGHLIGHT}$1:${RESET} $2"
  else
    eline "${HIGHLIGHT}$1${RESET}"
  fi
}

info () {
  if [ $# -gt 1 ]; then
    eline "${INFO}$(printf '%- 20s' "$1")${RESET} $2"
  else
    eline "${INFO}$1${RESET}"
  fi
}

error () {
  if [ $# -gt 1 ]; then
    eline "${FAIL}$1:${RESET} $2"
  else
    eline "${FAIL}$1${RESET}"
  fi
}

newline () {
  echo ""
}


listversions () {
	echo "Installed versions:"

	for direntry in "${PHPDIR}"/*; do
		LISTVER=$(basename $direntry | cut -d "-" -f 2)

		if [ "$LISTVER" = "$CURVER" ]; then
			notice "$LISTVER *"
		else
			eline "$LISTVER"
		fi
	done
}

# $1 = needle, $2 = haystack
inlist () {
  for item in ${2}
  do
    echo $item $1
    if [ "$item" = "${1}" ]; then
      echo "true"
      break
    fi
  done

  echo "false"
}

VERFILELOC="${MYDIR}/php.ver"
if [ -f "${VERFILELOC}" ]; then
  CURVER=$(<$VERFILELOC)
else
  CURVER=""
fi

if [ ! -d "$PHPDIR" ]; then
  notice "Creating dir" "$PHPDIR"
  createdir "$PHPDIR"
fi

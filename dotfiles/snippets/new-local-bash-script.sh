#!/bin/sh

usage_and_exit() {
	(
		echo "Command description"
		echo ""
		echo "Usage: $(basename "$0") [OPTION]... ARGS..."
		echo "
	-h, --help|print this help
	-a, --arg|arg description (defaults to '-')
	" | column -t -s '|'
	) >&2
	exit "${1:-1}"
}

[ $# -gt 0 ] || usage_and_exit

arg="-"

while [ $# -gt 0 ]; do
	case "$1" in
	-h | --help) usage_and_exit 0 ;;
	-a | --arg)
		[ $# -lt 2 ] && usage_and_exit 1
		arg=$2
		shift 2
		;;
	*) shift ;;
	esac
done

echo $arg

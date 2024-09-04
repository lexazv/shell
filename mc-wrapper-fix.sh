MC_USER="$(whoami)"
MC_PWD_FILE="${TMPDIR}mc.pwd.$$"
/opt/homebrew/Cellar/midnight-commander/*/bin/mc -P "$MC_PWD_FILE" "$@"

if [[ -r "$MC_PWD_FILE" ]]; then
	MC_PWD="$(cat "$MC_PWD_FILE")"

	if [[ -d "$MC_PWD" ]]; then
		cd "$MC_PWD" || exit 1
	fi
	unset MC_PWD
fi

rm -f "$MC_PWD_FILE"
unset MC_PWD_FILE
unset MC_USER

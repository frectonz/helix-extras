if [ -n "${HELIX_EXTRAS_SKIP:-}" ]; then
  exec "$hx" "$@"
fi

workdir="$PWD"
args=("$@")
for ((i = 0; i < ${#args[@]}; i++)); do
  case "${args[i]}" in
    -w | --working-dir) workdir="${args[i + 1]:-$PWD}" ;;
  esac
done
workdir=$(cd "$workdir" 2>/dev/null && pwd -P) || workdir="$PWD"

root="$workdir"
dir="$workdir"
while [ "$dir" != "/" ]; do
  if [ -e "$dir/.git" ] || [ -e "$dir/.jj" ] || [ -e "$dir/.svn" ] || [ -e "$dir/.helix" ]; then
    root="$dir"
    break
  fi
  dir=$(dirname "$dir")
done

helix_dir="$root/.helix"
if [ ! -d "$helix_dir" ]; then
  mkdir -p "$helix_dir"
  [ -n "$ignore_in_git" ] && echo '*' >"$helix_dir/.gitignore"
fi

link() {
  if [ -e "$1" ] && [ ! -L "$1" ]; then
    echo "helix-extras: $1 exists and is not managed by helix-extras, leaving it alone" >&2
  else
    ln -sfn "$2" "$1"
  fi
}

link "$helix_dir/languages.toml" "$languages_toml"
if [ -n "$config_toml" ]; then
  link "$helix_dir/config.toml" "$config_toml"
elif [ -L "$helix_dir/config.toml" ]; then
  rm "$helix_dir/config.toml"
fi

exec "$hx" "$@"

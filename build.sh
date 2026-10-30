#!/usr/bin/env bash
# Validates all pack JSON and zips each datapack and the resourcepack into dist/.
#
# Usage:
#   ./build.sh                                build all zips
#   ./build.sh --install <world>              also copy the server packs into <world>/datapacks/
#   ./build.sh --install <world> <pack>...    copy only the named packs (e.g. chop_tree experimental)
set -euo pipefail

root="$(cd "$(dirname "$0")" && pwd)"
dist="$root/dist"
name="minecrafttweaks"
server_packs=(drops chop_tree equipment)

# Fail early on malformed JSON - a broken recipe or advancement stops the server from starting.
status=0
while IFS= read -r -d '' f; do
  if ! jq empty "$f" 2>/dev/null; then
    echo "Invalid JSON: ${f#"$root"/}" >&2
    status=1
  fi
done < <(find "$root/datapacks" "$root/resourcepack" -type f \( -name '*.json' -o -name '*.mcmeta' \) -print0)
[ "$status" -eq 0 ] || exit 1

rm -rf "$dist"
mkdir -p "$dist"

# pack.mcmeta must sit at the zip root, so zip from inside each pack folder.
for dir in "$root"/datapacks/*/ "$root/resourcepack/"; do
  pack="$(basename "$dir")"
  out="$dist/$name-$pack.zip"
  (cd "$dir" && zip -qr -X "$out" . -x '*.gitkeep' -x '.*')
  echo "Built ${out#"$root"/}"
done

echo
echo "resource-pack-sha1=$(sha1sum "$dist/$name-resourcepack.zip" | cut -d' ' -f1)"

if [ "${1:-}" = "--install" ]; then
  world="${2:?--install needs a world directory}"
  shift 2
  [ "$#" -gt 0 ] || set -- "${server_packs[@]}"
  for pack in "$@"; do
    if [ ! -f "$dist/$name-$pack.zip" ] || [ "$pack" = "resourcepack" ]; then
      echo "Unknown datapack: $pack" >&2
      exit 1
    fi
  done
  mkdir -p "$world/datapacks"
  for pack in "$@"; do
    cp "$dist/$name-$pack.zip" "$world/datapacks/"
    echo "Installed $pack into $world/datapacks/"
  done
  # The old all-in-one pack contains everything above, so it must not run alongside them.
  if [ -e "$world/datapacks/$name-datapack.zip" ]; then
    echo "WARNING: remove the old $world/datapacks/$name-datapack.zip" >&2
  fi
  echo "Run /reload in-game"
fi

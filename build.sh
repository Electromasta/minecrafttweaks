#!/usr/bin/env bash
# Validates all pack JSON and zips the datapack and resourcepack into dist/.
#
# Usage:
#   ./build.sh                     build both zips
#   ./build.sh --install <world>   also copy the datapack zip into <world>/datapacks/
set -euo pipefail

root="$(cd "$(dirname "$0")" && pwd)"
dist="$root/dist"
name="minecrafttweaks"

# Fail early on malformed JSON - Minecraft just logs and skips broken files.
status=0
while IFS= read -r -d '' f; do
  if ! jq empty "$f" 2>/dev/null; then
    echo "Invalid JSON: ${f#"$root"/}" >&2
    status=1
  fi
done < <(find "$root/datapack" "$root/resourcepack" -type f \( -name '*.json' -o -name '*.mcmeta' \) -print0)
[ "$status" -eq 0 ] || exit 1

rm -rf "$dist"
mkdir -p "$dist"

# pack.mcmeta must sit at the zip root, so zip from inside each pack folder.
for pack in datapack resourcepack; do
  out="$dist/$name-$pack.zip"
  (cd "$root/$pack" && zip -qr -X "$out" . -x '*.gitkeep' -x '.*')
  echo "Built ${out#"$root"/}"
done

echo
echo "resource-pack-sha1=$(sha1sum "$dist/$name-resourcepack.zip" | cut -d' ' -f1)"

if [ "${1:-}" = "--install" ]; then
  world="${2:?--install needs a world directory}"
  mkdir -p "$world/datapacks"
  cp "$dist/$name-datapack.zip" "$world/datapacks/"
  echo "Installed datapack into $world/datapacks/ - run /reload in-game"
fi

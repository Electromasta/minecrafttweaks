# Minecraft Tweaks

Vanilla+ Minecraft datapack for **Java Edition 26.3**

## What it changes

### Mob drops

| Mob | Vanilla | Now | Why |
|---|---|---|---|
| Cow | 0–2 leather, 1–3 beef | **1–3 leather, 2–3 beef** | Cows are the leather animal |
| Pig | 1–3 porkchops | **3–5 porkchops** | Pigs are the food animal |
| Sheep | 1–2 mutton | **2–3 mutton** | Wool stays the main reason to keep sheep |
| Shulker | 50% for 1 shell | **1–2 shells** | Shulkers don't respawn |
| Bat | nothing | **1 phantom membrane** (player kill) | Elytra repair without phantoms |
| Enderman | 0–1 pearl | **1 pearl** | |
| Blaze | 0–1 rod (player kill) | **1 rod** (player kill) | |
| Creeper | 0–2 gunpowder | **1–3 gunpowder** | |
| Wither skeleton | skull 2.5% | **skull 5%** (+1%/Looting) | Beacons and Withers are a long grind |
| Spider | — | **+ cobweb 2.5%** (player kill, +1%/Looting) | |
| Husk | — | **+ 0–2 sand** | Renewable sand |
| Zombie-types (9 mobs) | rotten flesh | rotten flesh that is **compostable** (50%/item) | Gives flesh a use |

### Block drops

| Block | Vanilla | Now |
|---|---|---|
| Oak / dark oak leaves | apple 0.5% (Fortune III 0.83%) | **apple 2%** (Fortune III 3.3%) |
| Gravel | flint 10% / 14% / 25% / 100% | **flint 15% / 20% / 33% / 100%** (Fortune 0–III) |

### Recipes

| Recipe | Result |
|---|---|
| Charcoal + sulfur + rotten flesh (shapeless) | **2 gunpowder** — real black powder is charcoal, sulfur and saltpeter (from rotting matter) |
| Iron chains in the armor shapes (5 / 8 / 7 / 4) | **Chainmail** helmet / chestplate / leggings / boots |
| Iron chain (vanilla recipe) | now gives **2 chains** instead of 1 |


### Leather stealth set bonus

Sneaking in **full leather armor** (dyed/enchanted counts):

- **Invisible** — with armor on, mobs notice you at ~0.56× range instead of 0.8× for normal sneaking (a zombie at ~20 blocks instead of 28). Other players see floating armor.
- **Hidden from the locator bar.**
- **Sneak speed 0.6** (like Swift Sneak II); stacks with Swift Sneak, capped at walking speed.

### Top-down tree chopping

Breaking a log of a natural tree puts it back and removes the tree's **top** log instead — trees shrink from the top, no floating canopies, no pillaring. Still one log per swing. Applies to all 10 overworld log types in survival/adventure; trees are recognised by natural (non-persistent) leaves at the top, so player log builds are untouched.

### Mob stats

| Mob | Change |
|---|---|
| Skeleton, stray, bogged, parched | **−30% max health** (skeleton 20 → 14). Ranged units should be squishier. Wither skeletons unchanged |

## Also on the server

The Artemis server runs this pack alongside the ones below. They all run on the server, so players don't install anything. Exact versions live in the server's compose file (`artemis` repo), not here.

### Vanilla Tweaks crafting tweaks

From [Vanilla Tweaks](https://vanillatweaks.net/):

| Group | Tweaks |
|---|---|
| Quality of life | Powder to Glass, Straight to Shapeless, Universal Dyeing, Sandstone Dyeing, Copper Powered Rails, Back to Blocks |
| More blocks | More Bricks, More Stairs, More Bark, More Trapdoors |
| Craftables | Craftable Coral Blocks 3x3 |
| Unpackables | Unpackable Wool, Unpackable Nether Wart, Unpackable Ice |

### World generation

Only chunks generated after these were added have them.

| Pack | Adds |
|---|---|
| [Geophilic](https://modrinth.com/project/geophilic) | More detailed vanilla biomes |
| [Dungeons and Taverns](https://modrinth.com/project/dungeons-and-taverns) | New structures to find |

### Mods (Fabric)

| Mod | Why |
|---|---|
| Lithium, FerriteCore, Krypton | Server performance |
| Geyser, Floodgate | Let Bedrock players join |
| Plan | Player stats web page |

## Build

```sh
./build.sh                                  # -> dist/minecrafttweaks-datapack.zip, dist/minecrafttweaks-resourcepack.zip
./build.sh --install /path/to/server/world  # also copies the datapack into world/datapacks/
```

The build checks every `.json` / `.mcmeta` file with `jq` first. The game itself skips broken files without saying so. `dist/` is rebuilt every run and committed, because the server downloads the datapack zip from a pinned commit — edit `datapack/` and `resourcepack/`, never `dist/`, and commit the rebuilt `dist/` with your change.

## Install

**Datapack:** put the zip in `<world>/datapacks/`, then run `/reload` and `/datapack list` to confirm it loaded.

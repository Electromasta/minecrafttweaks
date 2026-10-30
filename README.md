# Minecraft Tweaks

Vanilla+ Minecraft datapacks for **Java Edition 26.3**. Each pack works on its own, so you can add or remove them separately.

| Pack | Folder | What it changes |
|---|---|---|
| Drops | `datapacks/drops/` | Mob and block drops, player-kill rules, mob stats, gunpowder recipe |
| Chop Tree | `datapacks/chop_tree/` | Top-down tree chopping |
| Equipment | `datapacks/equipment/` | Armor and tool changes |
| Experimental | `datapacks/experimental/` | Features being tested locally, never installed on the server |

## Drops pack

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
| Ender Dragon | nothing | **16–32 bone blocks** beside the exit portal (player kill, every kill) | Big mobs leave big bones |
| Giant | nothing | **8–16 bone blocks** | Giants only exist if summoned |
| Zombie-types (9 mobs) | rotten flesh | rotten flesh that is **compostable** (50%/item) | Gives flesh a use |

### Player-kill-only drops

Valuable drops need a player to get the kill, so fully automatic farms stop producing them. Animal farms and low-value drops are left alone.

| Mob | Only drops on a player kill |
|---|---|
| Iron golem | Iron ingots |
| Zombified piglin | Gold nuggets |
| Evoker | Totem of undying |
| Pillager (captain) | Ominous bottle |
| Witch | Redstone, glowstone dust, gunpowder |
| Guardian | Prismarine shards and crystals |
| Ghast | Ghast tears, gunpowder |
| Creeper | Gunpowder |
| Enderman | Ender pearls |
| Shulker | Shulker shells |
| Slime | Slime balls (frog-eaten slimes still drop them) |
| Magma cube | Magma cream (froglights still work) |

### Block drops

| Block | Vanilla | Now |
|---|---|---|
| Oak / dark oak leaves | apple 0.5% (Fortune III 0.83%) | **apple 2%** (Fortune III 3.3%) |
| Gravel | flint 10% / 14% / 25% / 100% | **flint 15% / 20% / 33% / 100%** (Fortune 0–III) |

### Recipes

| Recipe | Result |
|---|---|
| Charcoal + sulfur + rotten flesh (shapeless) | **2 gunpowder** — real black powder is charcoal, sulfur and saltpeter (from rotting matter) |

### Mob stats

| Mob | Change |
|---|---|
| Skeleton, stray, bogged, parched | **−30% max health** (skeleton 20 → 14). Ranged units should be squishier. Wither skeletons unchanged |

## Chop Tree pack

Breaking a log of a natural tree puts it back and removes the tree's **top** log instead — trees shrink from the top, no floating canopies, no pillaring. Still one log per swing. Applies to all 10 overworld log types in survival/adventure; trees are recognised by natural (non-persistent) leaves at the top, so player log builds are untouched.

## Equipment pack

### Recipes

| Recipe | Result |
|---|---|
| Iron chains in the armor shapes (5 / 8 / 7 / 4) | **Chainmail** helmet / chestplate / leggings / boots |
| Iron chain (vanilla recipe) | now gives **2 chains** instead of 1 |

### Durability

| Item | Vanilla | Now |
|---|---|---|
| Leather helmet / chestplate / leggings / boots | 55 / 80 / 75 / 65 | **132 / 192 / 180 / 156** |
| Gold helmet / chestplate / leggings / boots | 77 / 112 / 105 / 91 | **220 / 320 / 300 / 260** |
| Gold sword, pickaxe, axe, shovel, hoe, spear | 32 | **140** (stone is 131) |

Crafted items have this from the start. Anything else, like loot, trades, mob drops and items players already own, updates as soon as it's in a player's inventory. Enchantments, dye and existing wear carry over. Armor still in a chest or worn by a mob stays vanilla until picked up. Horse armor is unchanged.

### Direhide armor

A tougher leather set made from **Dire Hide**, which hoglins and ravagers drop on a player kill (0–2, plus Looting). It replaces the hoglin's vanilla leather drop. Crafted in the normal armor shapes, 24 hides for a full set. It's leather armor underneath, so it can be dyed and trimmed, gets Hushed, and stops freezing.

| Piece | Armor | Toughness | Durability |
|---|---|---|---|
| Helmet | 2 | 1 | 220 |
| Chestplate | 6 | 1 | 320 |
| Leggings | 5 | 1 | 300 |
| Boots | 2 | 1 | 260 |
| **Set** | **15** | **4** | **1100** |

Data packs can't add new items, so Dire Hide is a cow spawn egg with its mob data removed and a leather icon. It can't spawn anything. Recipes can only check the base item, so a real cow spawn egg would also craft this armor, but those can't be obtained in survival.

- **Recipes:** they unlock in the recipe book when you get your first Dire Hide. The book shows a cow egg as the ingredient, because recipes can't display custom items.
- **Repairing:** Dire Hide repairs Direhide armor at an anvil. Plain leather doesn't.
- **No crafting grid repair:** this pack removes the recipe that combines two damaged items in a crafting grid, for all items, because it would turn Direhide into plain leather armor. Use an anvil instead.
- **Drops are in this pack:** the hoglin and ravager loot tables live here so the hide comes with the armor. That includes the ravager's saddle needing a player kill, so without this pack ravagers drop vanilla saddles.

### Crimson and warped gear

Stronger bows and shields made from Nether wood. Any stem or hyphae of the right type works, stripped or not. The recipes unlock when you first pick some up.

| Item | Recipe | Durability | Vanilla |
|---|---|---|---|
| Crimson / Warped Bow | Bow shape: 3 stems, 3 string | **768** | 384 |
| Crimson / Warped Shield | Shield shape: 6 stems, 1 iron ingot | **1008** | 336 |

Damage and enchantability are the same as a normal bow. Shields repair at an anvil with stems of their own type, not planks. They look like vanilla bows and shields, so the name is the only visual difference.

### Hushed leather

Each piece of **leather armor** you wear (dyed/enchanted counts) makes you harder to notice and quicker on your feet. Pieces add up, so there's no full-set requirement:

| Pieces | Mob notice range | Sneaking | Zombie notices you sneaking at | Sneak speed |
|---|---|---|---|---|
| 0 | 1× | 0.8× | 28 blocks | 0.3 |
| 1 | 0.8× | 0.64× | 22 blocks | 0.375 |
| 2 | 0.64× | 0.51× | 18 blocks | 0.45 |
| 3 | 0.51× | 0.41× | 14 blocks | 0.525 |
| 4 | 0.41× | 0.33× | 11.5 blocks | 0.6 (like Swift Sneak II) |

- Sneak speed stacks with Swift Sneak, capped at walking speed. It doesn't reach Bedrock players, because Geyser doesn't translate it.
- Mobs always notice you within 2 blocks. A mob you hit, or one already chasing you, isn't affected.
- Wardens, Creakings, Silverfish, the Wither and the Ender Dragon aren't affected. Neutral mobs like wolves and iron golems aren't either.
- Armor is stamped the first time it's worn, which also adds a line to its tooltip. Stamped armor keeps these effects if this pack is removed.

## Experimental pack

For trying things out locally. Its zip is ignored by git and `--install` skips it unless you name it. Give its functions their own paths (e.g. `minecrafttweaks:experimental/...`) so they never replace another pack's files.

## Also on the server

The Artemis server runs these packs (except Experimental) alongside the ones below. They all run on the server, so players don't install anything. Exact versions live in the server's compose file (`artemis` repo), not here.

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
./build.sh                                            # -> dist/minecrafttweaks-<pack>.zip for every pack
./build.sh --install /path/to/world                   # also copies Drops, Chop Tree and Equipment into world/datapacks/
./build.sh --install /path/to/world chop_tree         # copies only the named packs
./build.sh --install /path/to/test/world experimental # Experimental must be named to be installed
```

The build checks every `.json` / `.mcmeta` file with `jq` first. That only catches malformed JSON: in 26.3 a recipe or advancement with bad contents stops the server from starting (recover with `--safeMode`), and a broken function just logs an error and is skipped. `dist/` is rebuilt every run and committed (except the Experimental zip), because the server downloads the pack zips from a pinned commit — edit `datapacks/` and `resourcepack/`, never `dist/`, and commit the rebuilt `dist/` with your change. `resourcepack/` is an empty placeholder for now, so nothing needs that zip.

## Install

**Datapacks:** put the zips you want in `<world>/datapacks/`, then run `/reload` and `/datapack list` to confirm they loaded. Remove the old `minecrafttweaks-datapack.zip` if the world has it, because it contains all of these packs.

**Add or remove a pack in a running world:**

```
/datapack disable "file/minecrafttweaks-chop_tree.zip"
/datapack enable "file/minecrafttweaks-chop_tree.zip"
```

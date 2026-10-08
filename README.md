[![Mod Portal][shild-i-download]][mod-portal]
[![GitLab][shild-i-gitlab]][gitlab]

# [OS] Speed Train

> **Warning:** Since 3.0.0 the speed trains are no longer overpowered. The speed train, speed cargo wagon and train fuel were rebalanced, and the old stats now live on as the more expensive Mk2 tier. Trains and wagons in existing saves are migrated to Mk2 automatically. If you want the old overpowered trains back, [2.0.1][downloads] is the last version with them.

## Getting Started

This mod adds faster trains to the game. Those trains must be unlocked with a own tech and are definitly more expensive than the vanilla train.
There is a own train fuel which makes them even more powerful.

![][image]

### Dependencys

Right now there are no required dependencys. If [InformaTron](https://mods.factorio.com/mod/informatron) is installed, the mod adds help pages to it.

### Installing

Download the mod via the [mod portal][mod-portal]:

- simply place it in your mods directory.

For more information, see [Installing Mods][Installing-Mods] on the Factorio wiki.

If you have downloaded the source archive ([GitLab][gitlab]):

- copy the mod directory into your factorio mods directory
- rename the mod directory to `OS-Speed-Train_versionnumber`, where `versionnumber` is the version of the mod that you've downloaded (e.g., `0.5.0`)

## Contributing

Visit the [GitLab Repo][gitlab] for further informations.

## Authors

* **Hille** - *Initial work* - [@hille](https://gitlab.com/hille)

## Credits

* **Arch666Angel** - Versions 0.2.0 to 0.3.0 used a recoloured train model and icon from the mod angelsaddons-smeltingtrain. They were replaced in 0.4.0.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Graphics and code derived from the Factorio base game are © Wube Software and used under its modding terms.

## Changelog

### [3.0.0] 08.10.2026
Rebalance for Factorio 2.0 and Space Age. The speed train is now split into two tiers, and recipes and technologies use 2.0 materials. Without Space Age, Mk2 and the train fuel fall back to vanilla materials and utility science.

**Added:**
- Speed train Mk2 and speed cargo wagon Mk2 with their own blue look, unlocked by a new technology (Space Age: electromagnetic and metallurgic science)
- Migration: speed trains and speed cargo wagons in existing saves (placed and as items) become Mk2, so they keep their old stats and no wagon cargo is lost
- Speed train and speed cargo wagon can only be placed on planets with gravity when Space Age is enabled, like the vanilla rolling stock
- InformaTron pages (optional): overview, rolling stock and fuel stats compared with vanilla, and what each technology needs and unlocks

**Changed:**
- Speed train: max speed 2.0 -> 1.5, power 2000kW -> 1000kW, weight 1500 -> 2000, braking force 25 -> 12, health 1500 -> 1000, fuel effectivity 1.2 -> 1.0, higher friction and air resistance
- Speed cargo wagon: 50 -> 40 slots, max speed 2.0 -> 1.75, weight 800 -> 1000, braking force 5 -> 3, health 500 -> 600
- Speed train and speed cargo wagon recipes now use electric engines, processing units and low density structures
- Speed train technology now requires low density structure, processing unit and electric engine, cost 750 -> 500 units
- Train fuel: made from nuclear fuel and low density structures (Space Age: plus a supercapacitor) instead of rocket fuel and sulfur, energy 0.86GJ -> 1.21GJ, acceleration 0.9 -> 1.0, top speed 1.5 -> 1.35, stack size 5 -> 1
- Train fuel technology now requires Kovarex enrichment process (Space Age: and electromagnetic science) and chemical science
- Rewrote all item and technology descriptions and technology names (English and German)
- Speed train and speed cargo wagon now use high-resolution graphics

**Fixed:**
- Train fuel produced 4x more energy than its ingredients
- Train fuel could be unlocked before rocket fuel
- Speed train and speed cargo wagon were drawn too far down on the track since 2.0.0, and the wagon body did not line up with its doors



### [2.0.1] 08.10.2026
Almost two years after 2.0.0, right on schedule.

**Warning:** This is the last release with the current overpowered stats. The next release will rebalance (nerf) the speed train, speed cargo wagon and speed train fuel.

**Changed:**
- Speed train and speed cargo wagon icons in higher resolution (64px)
- Speed train and speed cargo wagon are now sorted next to the vanilla locomotive and cargo wagon
- License changed to MIT

**Fixed:**
- Speed train entity used the vanilla locomotive icon with a wrong icon size
- Spelling mistakes in the german translation



### [2.0.0] 22.10.2024
**Added:**
- Version 2.0 support
- Remote driving for the speed train

**Changed:**
- Speed train max speed increased (1.6 -> 2.0)
- Speed train health reduced (3000 -> 1500)
- Speed train fuel effectivity increased (0.8 -> 1.2), fuel slots reduced (5 -> 3)
- Recipes now have crafting times (speed train 60s, speed cargo wagon 15s, train fuel 5s)



### [1.0.1] 09.08.2021
**Added:**
- Version 1.1 support



### [1.0.0] 28.10.2020
After 1 1/2 years the official version 1.0.0 is released to support the 1.0 version of the game.

Have fun :)



### [0.5.0] 27.04.2019
**Added:**
- Thumbnail

**Changed:**
- All graphics

**Removed:**
- German translation - which will be added with 0.5.1



### [0.4.0] 17.04.2019
**Added:**
- Version 0.17 support

**Changed:**
- Train graphics for a more unique and natural look
- Train icon for copyright reasons



### [0.3.0] 11.01.2019
**Added:**
- A speed cargo train which has a higher volume for better and faster transport of materials

**Changed:**
- Technology and receipt cost



### [0.2.0] 10.01.2019
**Added:**
- A train fuel for slower acceleration and higher max speed
- Technology research for the train fuel

**Changed:**
- Train model to a recoloured version of angelsaddons-smeltingtrain_0.1.2
- Train icon to a recoloured version of angelsaddons-smeltingtrain_0.1.2



### [0.1.0] 10.01.2019
**Added:**
- A speed train which accelerates and breaks faster as normal trains and can reach a higher max speed
- A technology which needs to be researched first (flux compensator)
- A fairly expensive receipt for a twice as fast train
- German and English translation

[shild-i-download]: https://img.shields.io/badge/Visit-Mod%20Portal-orange?style=flat-square
[shild-i-gitlab]: https://img.shields.io/badge/Visit-GitLab-orange?style=flat-square
[mod-portal]: https://mods.factorio.com/mod/OS-Speed-Train/
[downloads]: https://mods.factorio.com/mod/OS-Speed-Train/downloads
[gitlab]: https://gitlab.com/factorio-community/factorio-mods/os-speed-train
[image]: https://mods-data.factorio.com/assets/1796cb7c975b3e282b2d49ab8c610ed3744df35f.png
[wiki]: https://github.com/yourname/yourproject/wiki
[Installing-Mods]: https://wiki.factorio.com/index.php?title=Installing_Mods

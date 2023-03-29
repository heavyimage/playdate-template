# Playdate Template

Based on [Playlate](https://github.com/downie/playlate) and [VSCode-PlaydateTemplateForLinux](https://github.com/imrmnabil/VSCode-PlaydateTemplateForLinux)

Use this template to explore the [Playdate SDK](https://play.date/dev/) and get to building your game faster.

---

## Features
This builds off of the "Game Template" project provided in [the Playdate SDK](https://play.date/dev/) and adds a few nifty features.

### Standardized Structure
This template uses the [recommended folder structure](https://sdk.play.date/1.9.3/Inside%20Playdate.html#_structuring_your_project) for Playdate games. Empty folders are preserved with an empty `.gitkeep` file that can be deleted if you'd like.

### Default Callbacks
The Playdate SDK calls a few callbacks based on user interaction, the state of the device, and other game lifecycle events. Each of these have been implemented with a default implementation that prints out that each method has been called.

### GitHub `luacheck` Action
This also ships with a GitHub Action that runs [the `luacheck` code linter](https://github.com/lunarmodules/luacheck) on your code before merging to the `main` branch.

## License
This is licensed under the MIT License. See [LICENSE.md](LICENSE.md) for more details. Generally: anything you build with this is yours.

This template only works with the Playdate SDK. Make sure you follow the terms of the [Playdate SDK License](https://play.date/dev/sdk-license) when building your games.

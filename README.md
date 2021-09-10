# Kitty App Icon 

![](./icon_512x512@2x.png)

An alternative app icon for [Kitty](https://sw.kovidgoyal.net/kitty/).

## Installation

1. Find `kitty.app` in the `Applications` folder, select it and press `⌘ + i`.
2. Drag `kitty.icns` onto the application icon in the `kitty info` pane.
3. Delete the icon cache and restart `Dock`:

```bash
$ rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
```

## Other alternatives

* [Icon by DinkDon](https://github.com/DinkDonk/kitty-icon)

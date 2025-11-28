## Dotfiles Overview

These dotfiles bundle a cohesive Windows-first developer experience: an Oh My Posh prompt, tuned Windows Terminal and VS Code profiles, and a curated wallpaper set that keeps the workstation consistent across reinstalls.

> [!IMPORTANT]
> Install the Nerd Fonts you reference (`FiraCode Nerd Font Mono`, `UbuntuSansMono Nerd Font Mono`, `Geist Mono`) before applying these settings, otherwise both the terminal glyphs and VS Code UI tweaks will render incorrectly.

## Repository Map

| Path | Purpose |
| --- | --- |
| `bash/theme.json` | Oh My Posh v3 theme with custom palette, Git metadata, and compact breadcrumb path segment. |
| `terminal/settings.json` | Windows Terminal configuration with tailored keybindings, acrylic panes, and a modified One Half Dark scheme. |
| `VSCode/settings.json` | Opinionated editor experience (ligatures off, slim cursor, compact explorer) plus icon/product themes. |
| `VSCode/keybindings.json` | Single remap removing the default `ctrl+shift+k` delete-lines shortcut for safety. |
| `VSCode/ui.css` | Optional custom CSS hook to restyle the VS Code UI labels and pane padding. |
| `wallpapers/` | High-resolution anime/dark wallpapers aligned with the palette used in the terminal theme. |

## Quick Start

1. **Fonts & glyphs** – install the Nerd Fonts noted above and ensure they are selectable in Windows Terminal and VS Code.
2. **Shell prompt** – copy `bash/theme.json` into your Oh My Posh themes folder and reference it via `oh-my-posh init` in your shell profile.
3. **Windows Terminal** – open Settings → `Open JSON file`, then merge `terminal/settings.json` to import profiles, color scheme, and acrylic preferences.
4. **VS Code** – drop the files under `%APPDATA%\Code\User/` (or `~/Library/Application Support/Code/User/` on macOS) and restart VS Code to load the settings, keybindings, and UI tweaks.
5. **Wallpapers** – set one of the `wallpapers/*.jpg` or `.png` files as your desktop background to complete the theme.

> [!TIP]
> Keep the repo in a sync-able location (e.g., GitHub + cloud storage) and use symlinks from your actual config directories so updates stay version-controlled automatically.

## Terminal Experience

- **Prompt** – The prompt displays OS icon, username, Agnoster-style truncated path, and Git status with descriptive icons so you can read repo state at a glance.
- **Windows Terminal defaults** – Bar cursor, translucent acrylic panes, and `FiraCode` at size 11 make panes consistent across shells.
- **Keybindings** – Quick copy, paste, find, and `alt+shift+d` duplicate split behavior accelerate multi-pane workflows.

> [!NOTE]
> The default profile targets `C:\Program Files\Git\bin\bash.exe -l -i` with `tabTitle` set to `hax`; change the GUID or command if your Git Bash install lives elsewhere.

## VS Code Profile

- **Minimal chrome** – Activity bar on top, hidden status bar, compact tabs, and no icon gutter noise keep focus on code.
- **Editor feel** – Underline-thin cursor, muted line highlight, no minimap, and gentle letter-spacing produce a print-like look.
- **File hygiene** – Aggressive `files.exclude` and `fileNesting` rules declutter the explorer, while `formatOnSave` plus auto-save keep buffers consistent.
- **Terminal integration** – VS Code’s integrated terminal mirrors the Windows Terminal font and cursor so the context switch is seamless.

> [!CAUTION]
> `vscode_custom_css.imports` must point to the live `ui.css` path on your machine. If VS Code launches with the `--disable-extensions` flag or flags untrusted CSS, the UI tweaks will not load.

## Wallpapers

The `wallpapers/` directory contains anime-inspired dark compositions (e.g., `dark_anm05.jpg`, `lain05.jpg`, `Chihiro-dragons`) sized for 2304×1440 and similar ratios. Pair them with the golden-brown prompt palette for a cohesive visual identity across the desktop and terminal.

## Maintenance Checklist

- Pull updates to the repo before editing configs locally.
- After tweaking settings via a GUI, re-export or copy the JSON back into this repo to keep Git history authoritative.
- Re-run `oh-my-posh` after every theme change to ensure the schema version and palette fields validate.

> [!SUCCESS]
> With the repo synced and symlinked, provisioning a new machine becomes a matter of installing fonts, cloning these dotfiles, and launching the terminal—everything else snaps into place automatically.


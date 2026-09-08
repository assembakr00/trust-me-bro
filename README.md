# Trust Me Bro

A small 2D platformer built in Godot 4.

🎮 **Play it here:** https://ctrl-z-assem.itch.io/trust-me-bro

## About

Follow the arrow or follow your gut — either way, just have fun.

Trust Me Bro is a 2D platformer where you guide a character through hand-crafted
levels, jumping and dodging your way to the end. The game uses Godot's
`CharacterBody2D` and `TileMap` systems, along with tile art from Kenney's
Pixel Platformer pack, Brackeys' platformer asset pack, and Pixel Adventure 1.

## Controls

| Action | Key |
|---|---|
| Move | A and D |
| Jump | Space |

## Tech

- **Engine:** Godot 4
- **Export target:** Web (HTML5/WASM)
- **Assets:** Kenney's "Pixel Platformer," Brackeys' platformer asset pack, and "Pixel Adventure 1" (Free)

## Running locally

The repository contains both the editable Godot project and a generated Web
export in `web/`. To run the browser build locally:

```bash
git clone https://github.com/assembakr00/trust-me-bro.git
cd trust-me-bro
cd web
python3 -m http.server 8000
# open http://localhost:8000
```

Serving the game over `file://` won't work because browsers block the
WASM/threading features required by Godot's web export. It must be served over
HTTP instead.

To edit the game, open the repository root in Godot. To regenerate the browser
build, use the `Web` export preset; its output is written to `web/`.

## Status

- ✅ Main menu (Start / Quit)
- ✅ One playable level ("Trust lvl 1")
- 🚧 More levels are in progress, along with ongoing polishing

## Credits

- Built solo by [Assem Bakr](https://github.com/assembakr00) for the 2026.2 Brackeys Game Jam
- Music by Alex McCulloch

## License

This project is licensed under the [MIT License](LICENSE).

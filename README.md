# Trust Me Bro

A small 2D platformer built in Godot 4.

🎮 **Play it here:** https://ctrl-z-assem.itch.io/trust-me-bro

## About

Follow the arrow, or follow your gut — either way, just have fun.

Trust Me Bro is a 2D platformer where you guide a character through hand-built
levels, jumping and dodging your way to the end. It's built with Godot's
`CharacterBody2D` and `TileMap` systems, using tile art from Kenney's
Pixel Platformer pack, Brackeys' platformer asset pack, and Pixel Adventure 1.

## Controls

| Action | Key |
|---|---|
| Move | A, D |
| Jump | Space |

## Tech

- **Engine:** Godot 4
- **Export target:** Web (HTML5/WASM)
- **Assets:** Kenney "Pixel Platformer", Brackeys platformer asset pack, "Pixel Adventure 1" (Free)

## Running locally

This repo currently contains the exported web build rather than the Godot
source project. To run it locally:

```bash
git clone https://github.com/assembakr00/trust-me-bro.git
cd trust-me-bro
python3 -m http.server 8000
# open http://localhost:8000
```

(Serving over `file://` won't work — browsers block the WASM/threading
features Godot's web export needs, so it has to be served over HTTP.)

## Status

- ✅ Main menu (Start / Quit)
- ✅ One playable level ("Trust lvl 1")
- 🚧 More levels in progress

## Credits

- Game built solo by [Assem Bakr](https://github.com/assembakr00)
- Music by Alex McCulloch

## License

This project is licensed under the [MIT License](LICENSE).

# about.urirun.com

Online slide presentation for **urirun** — the open URI runtime + SDK.
Multilingual (PL / EN / DE), keyboard-navigable, and printable to PDF.

- Slides: ← / → / Space / Home / End, swipe, on-screen controls.
- Language: PL · EN · DE toggle (top-right); remembered in `localStorage` and via `?lang=`.
- PDF: the **PDF** button prints every slide as an A4-landscape page.
- Distinguishes **urirun** (the engine you embed) from **ifURI** (the product you use).

This is the urirun-side companion to [about.ifuri.com](https://about.ifuri.com).

## Develop
```
make serve   # http://127.0.0.1:8123
make test    # validate structure / links / ecobar
make deploy  # publish to about.urirun.com (Plesk)
```

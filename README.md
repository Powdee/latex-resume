# 📋 Résumé

A repository containing the LaTeX source of Erik Kurjak's résumé. Deployed with GitHub Actions to Fly.io.

## 🔧 Building

### Dependencies

- [TeXLive, full](https://www.tug.org/texlive/)
- [Make](https://www.gnu.org/software/make/)
- [j2cli](https://github.com/kolypto/j2cli)

### Commands

- **Build the résumé**:

  ```bash
  make resume
  ```

- **Purge all**:

  ```bash
  make clean
  ```

- **Open PDFs**:

  ```bash
  make open
  ```

## Creating icons

- Most icons come from the [`fontawesome5`](https://ctan.org/pkg/fontawesome5?lang=en) TeX package \[[with documentation](http://mirrors.ctan.org/fonts/fontawesome5/doc/fontawesome5.pdf)\].
- Some are custom made (those not in `fontawesome5`).
  - Find an open-licensed SVG vector on <https://www.svgrepo.com>
  - Ensure whitespace is cropped from the SVG `viewBox`: <https://svgcrop.com/>
  - Minify and strip the resulting SVG: <https://jakearchibald.github.io/svgomg/>
  - Convert svg to png: `inkscape --export-type png -w 1024 --export-filename /path/to/new.png /path/to/my.svg`

# Repository Guidelines

## Project Structure & Module Organization
- `bashrc/` and `.bashrc` files hold shell configuration and local overrides.
- `fish/` contains Fish shell config, completions, and functions.
- `vim/` holds Vim/Neovim config, plugins, and templates.
- `bin/` and `sh/` include helper scripts and setup utilities.
- `githooks/` stores Git hooks (notably commit message checks).
- `yabai/`, `skhd/`, and `dict/` contain app-specific configs and data.

## Build, Test, and Development Commands
- `bin/setup`: Creates symlinks into `~` and copies the color scheme template. Run after cloning.
- `bin/install-fish.sh`: Installs Fish and Fisher on macOS (uses `brew` and `curl`).
- Example: `sh/svim` or `sh/rgf` are helper scripts; inspect a script before use.

## Coding Style & Naming Conventions
- Shell scripts are primarily `sh` with simple, portable syntax.
- Use 2-space indentation in shell scripts and keep filenames lowercase.
- Prefer descriptive, short filenames in `sh/` (e.g., `sbr`, `srs`).

## Testing Guidelines
- No automated test suite in this repository.
- Validate changes by running the relevant script directly and confirming the expected shell behavior.

## Commit & Pull Request Guidelines
- Commit messages are checked by `githooks/commit-msg` using `aspell`.
- Keep commit messages short, lowercase, and made of plain English words; avoid typos.
- If a word is flagged, the hook prompts for confirmation; fix spelling when possible.

## Local Configuration Notes
- `vim/color-scheme.vim` is ignored; copy from `vim/color-scheme-template.vim` as a starting point.
- `.bashrc.local.bashrc` and `.bashrc.export.bashrc` are expected local overrides.

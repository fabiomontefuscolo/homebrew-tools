# homebrew-tools

A personal Homebrew tap with formulas for tools I use daily.

## Install

```sh
brew tap fabiomontefuscolo/tools
```

Then install any formula:

```sh
brew install fabiomontefuscolo/tools/lines
brew install fabiomontefuscolo/tools/rtpl
brew install fabiomontefuscolo/tools/slugify
```

## Formulas

| Formula | Description | Source |
|---------|-------------|--------|
| `lines` | Print arbitrary lines of a file | [fabiomontefuscolo/lines](https://github.com/fabiomontefuscolo/lines) |
| `rtpl` | Render Jinja2 templates with data from various sources | [fabiomontefuscolo/rtpl](https://github.com/fabiomontefuscolo/rtpl) |
| `slugify` | Convert text into URL-friendly slugs | [fabiomontefuscolo/slugify](https://github.com/fabiomontefuscolo/slugify) |

## Keeping formulas up to date

Each source repository has a `.github/workflows/update-homebrew.yml` workflow that fires on every published release. It computes the new tarball URL and SHA256, then calls the reusable workflow in this repo (`.github/workflows/update-formula.yml`) to update the formula and push the change.

The workflow only runs on GitHub — it is skipped on Forgejo mirrors.

### Setup (one-time)

1. Create a GitHub Personal Access Token (PAT) with `repo` write scope.
2. Add it as a secret named `HOMEBREW_TAP_TOKEN` in each source repository.
3. Copy `.github/source-workflows/update-homebrew.yml` from this repo to `.github/workflows/update-homebrew.yml` in each source repository.

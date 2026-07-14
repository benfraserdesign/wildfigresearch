# Wild Fig Research

Marketing site for Wild Fig Research, an independent research consultancy. Built with Jekyll + Bootstrap.

## Local development

```
bundle install
bundle exec jekyll serve
```

Then visit http://localhost:4000.

## Deploying

The site builds into the `docs/` folder (`destination: docs/` in `_config.yml`), which is committed to git. Point GitHub Pages at "Deploy from a branch → main → /docs". Run `bundle exec jekyll build` and commit the resulting `docs/` changes before pushing.

## Before going live

- Replace the placeholder `email`/`url` values in `_config.yml`.
- Replace the placeholder project images in `assets/images/projects/` with real photos.
- Have a solicitor review `privacy.md` and `cookies.md` — the current copy is placeholder text.

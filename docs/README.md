# Wild Fig Research

Marketing site for Wild Fig Research, an independent research organisation. Built with Jekyll + Bootstrap.

## Local development

```
bundle install
bundle exec jekyll serve
```

Then visit http://localhost:4000.

`_plugins/production_url.rb` pins the site URL to the production domain, so serving locally never writes localhost links into `docs/` (social previews, canonical links, sitemap).

## Project photos

Projects can show up to 10 photos in a gallery on their page. Put the images in `assets/images/projects/<project-slug>/` and list them in the project's front matter:

```yaml
photos:
  - src: /assets/images/projects/green-estate-open-manor/workshop.jpg
    alt: "Residents mapping green spaces at a co-design workshop"
    caption: "Optional caption shown under the photo"
```

`alt` should describe the photo for screen readers; `caption` is optional. Only the first 10 photos are shown.

## Deploying

The site builds into the `docs/` folder (`destination: docs/` in `_config.yml`), which is committed to git. Point GitHub Pages at "Deploy from a branch → main → /docs". Run `bundle exec jekyll build` and commit the resulting `docs/` changes before pushing.

## Before going live

- Replace the placeholder `email`/`url` values in `_config.yml`.
- Replace the placeholder project images in `assets/images/projects/` with real photos.
- Have a solicitor review `privacy.md` and `cookies.md` — the current copy is placeholder text.

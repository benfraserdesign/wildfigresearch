# `jekyll serve` replaces site.url with http://localhost:4000, and because the
# site builds into docs/ (the deployed folder), that leaked localhost into the
# live site's social previews, canonical links and sitemap. Pin the URL to the
# value in _config.yml for every build. Internal links are relative, so local
# previews still work.
Jekyll::Hooks.register :site, :after_init do |site|
  site.config["url"] = "https://wildfigresearch.org.uk"
end

<h1 align="center"><img src="https://github.com/octree-gva/meta/blob/main/decidim/static/header.png?raw=true" alt="Decidim - Octree Participatory democracy on a robust and open source solution" /></h1>
<h4 align="center">
    <a href="https://www.octree.ch">Octree</a> |
    <a href="https://octree.ch/en/contact-us/">Contact Us</a> |
    <a href="https://blog.octree.ch">Our Blog (FR)</a><br/><br/>
    <a href="https://decidim.org">Decidim</a> |
    <a href="https://docs.decidim.org/en/">Decidim Docs</a> |
    <a href="https://meta.decidim.org">Participatory Governance (meta decidim)</a><br/><br/>
    <a href="https://matrix.to/#/+decidim:matrix.org">Decidim Community (Matrix+Element.io)</a>
</h4>
<p align="center">
    <a href="https://participer.lausanne.ch">
        <img
            src="https://github.com/octree-gva/meta/blob/main/decidim/static/participer_lausanne/chip.png?raw=true"
            alt="Lausanne Participe — Une plateforme de participation pour imaginer et réaliser ensemble" />
    </a>
    <a href="https://opencollective.com/voca">
        <img
            src="https://github.com/octree-gva/meta/blob/main/decidim/static/opencollective_chip.png?raw=true"
            alt="Voca – Open-Source SaaS platform for Decidim" />
    </a>
</p>


# Decidim: Use External Newsletter 

This module removes newsletters from Decidim, to use external newsletters, sponsored by the [Lausanne Participe](https://participer.lausanne.ch) platform.

## Why it's needed?
Participation is wide, and can use many digital tools. To have a broader newsletter, that includes the whole participation space of the city we need: 

- Subscribers to the newsletters don't need an account to subscribe, just an email
- The newsletter sending need to be managed by a restricted group of persons. 
- The form to register to the newsletter needs to be included in every digital spaces involving participation.

## Usage

This gem removes functionnalities, and add very little to the instance.
The database is not afftected, but we give some Rake Tasks to comply to RGPD and clean previously installed Decidim. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem "decidim-external_newsletter"
```

And then execute:

```bash
bundle
```

## Testing
```
bundle exec rake test_app
```

## Local development

Run a postgres database and load env vars
```
docker-compose up -d
source .env.local
```

Run if you haven't already:
```bash
bundle
```

And then
```bash
rake decidim:generate_external_development_app
```

Setup and run the decidim development server
```
cd development_app
rails db:migrate
rails db:seed
rails s
```
Access your local environment [localhost:3000](http://localhost:3000)

## Contributing

See [Decidim](https://github.com/decidim/decidim).

## License

This engine is distributed under the [GNU AFFERO GENERAL PUBLIC LICENSE](LICENSE-AGPLv3.txt)

<br /><br />
<p align="center">
    <img src="https://raw.githubusercontent.com/octree-gva/meta/main/decidim/static/octree_and_decidim.png" height="90" alt="Decidim Installation by Octree" />
</p>

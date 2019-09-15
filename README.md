# README

<h1 align="center">
  SHIPSTR
</h1>

<h4 align="center">
  A Rails API to convert EUR to USD currency for the use of Shipping of Service Providers
</h4>

<p align="center">
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-green.svg?style=popout"
    alt="MIT-license-badge">
  </a>
  <img src="https://img.shields.io/github/languages/code-size/callmedw/shipstr.svg?style=popout"
  alt="code-size-badge">
  <a href="https://GitHub.com/callmedw/shipstr/issues/">
    <img src="https://img.shields.io/github/issues/callmedw/shipstr.svg?style=popout"
    alt="github-issues-badge">
  </a>
</p>

<p align="center">
  <a href="#api-endpoints">API EndPoints</a> •
  <a href="#required-technologies">Requirements</a> •
  <a href="#suggested-resources">Suggested Resources</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#known-bugs">Bug Report</a> •
  <a href="#contact">Contact</a> •
  <a href="#license">License</a>
</p>
<br>

## API EndPoints

### Shipping Rates
acceptable parameters for Shipping Rates (PATCH, PUT, POST) are:
rate_cents, currency, origin, destination,

Ex: JSON Body Request for PATCH
<pre> { "shipping_rates": {"currency": "USD", "rates_cents": 23.50}} </pre>

| Shipping Rates |
|---|---|
| GET | localhost:3000/shipping_rates |    
| POST | localhost:3000/shipping_rates |    
| GET | localhost:3000/shipping_rates/:id |  
| PATCH | localhost:3000/shipping_rates/:id |  
| PUT | localhost:3000/shipping_rates/:id |  
| DELETE | localhost:3000/shipping_rates/:id |                               
| GET | /shipping_rates/:shipping_rate_id/service_providers |
| POST | /shipping_rates/:shipping_rate_id/service_providers |
| GET | /shipping_rates/:shipping_rate_id/service_providers/:id |
| PATCH | /shipping_rates/:shipping_rate_id/service_providers/:id |
| PUT | /shipping_rates/:shipping_rate_id/service_providers/:id |
| DELETE | /shipping_rates/:shipping_rate_id/service_providers/:id |

### Service Providers
acceptable parameters for Service Providers (PATCH, PUT, POST) are:
name, rate_cents, currency

Ex: JSON Body Request for PATCH
<pre> { "service_providers": {"currency": "USD", "rates_cents": 23.50}} </pre>

| Service Providers |
|---|---|
| GET | localhost:3000/service_providers |    
| POST | localhost:3000/service_providers |    
| GET | localhost:3000/service_providers/:id |
| PATCH | localhost:3000/service_providers/:id |
| PUT | localhost:3000/service_providers/:id |
| DELETE | localhost:3000/service_providers/:id |
| GET | /service_providers/:service_provider_id/shipping_rates |
| POST | /service_providers/:service_provider_id/shipping_rates |
| GET | /service_providers/:service_provider_id/shipping_rates/:id |
| PATCH | /service_providers/:service_provider_id/shipping_rates/:id |
| PUT | /service_providers/:service_provider_id/shipping_rates/:id |
| DELETE | /service_providers/:service_provider_id/shipping_rates/:id |

## Required Technologies

* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](https://guides.rubyonrails.org/getting_started.html)
* [Postgres](https://www.postgresql.org)

## Suggested Technologies

* [Git](https://git-scm.com)
* [Atom](https://atom.io/)
* [Bundler](https://bundler.io)

## Suggested resources

* [Money Rails Gem](https://github.com/RubyMoney/money-rails)
* [Ruby Money Gem](https://github.com/RubyMoney/money)

## How To Use

To clone and run this application, you will probably want [Git](https://git-scm.com) installed on your computer. To edit this project you may want a text-editor like [Atom](https://atom.io/). To install gems used in this app you will most likely want a dependency manager like [Bundler](https://bundler.io).

```bash
# Clone this repository
$ git clone https://github.com/callmedw/shipstr.git

# Open in atom
$ atom shipstr

# Go to project directory root
$ cd shipstr

# Use bundler to install gems
$ bundle install

# Prep and seed the database
$ rails db:reset

# Start the Rails Server
$ rails server

Now you can begin making API calls! See the list of <a href="#api-endpoints">API EndPoints</a> to see how to format your calls to the API.

```

## Known Bugs

🐞

## Contact

_Contact: hello@mynameisdanaweiss.com_

## Contributors

<!-- prettier-ignore -->
| [<img src="https://avatars2.githubusercontent.com/u/21694548?s=460&v=4" width="100px;"/><br /><sub><b>Dana Weiss</b></sub>](https://github.com/callmedw)<br /> |
| :---: |

## License

MIT License

Copyright (c) 2019 Dana Weiss

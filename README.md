# MAX Company API

This simple API is intended to provide its user possibility to create (and edit) companies and then get info about them as a web list.

## Getting started

### How to run

#### If you're running web version from Heroku

Then you just need installed browser and Internet connection.

#### If you're running local version from source files

Then you need:

* Ruby 2.4.0+

* Rails 5.0.4+

installed on your system. To run, you should type

`rails server`
or
`rails s` while being in the working directory (*mv-assignment* by default).

Also I strongly recommend to run `bundle install` (installs yet uninstalled gems from Gemfile) and `bundle update` (updates outdated gems). The specific gem which isn't installed to Rails by default is *country_select* - if you have problems, check this one.

### How to use

Firstly, you need to create at least one company, so it will appear on the main page.

To find out company details, you need to click on company name on main page. The second click will hide the details.

After at least one company is created, it's possible to create a user. After creation will appear on main page in companies' details.

## cURL queueing

It is theoretically possible to make queries to this API using cURL.

Desired query should look in some way like `curl -X POST -d *desired input* http://127.0.0.1:300/companies` or `curl -X GET *something* http://127.0.0.1:300/companies`

For example, the command `curl -X GET http://127.0.0.1:300/companies` will work.

This can be prevented by adding authentication (see considerations)

## Authors

Each line of code except mentioned in the "extra information" section is written and tested by me, i.e. **Maksim Paderin** - [Profile on GitHub](https://github.com/makspaderin/).

Design was created and implemented by me as well. I used general modern web trend guides for creating it, but as long as it's not a design project, I decided not to do anything complex.

## License

This API is licensed under MIT License (X11 License) - i.e. everybody can share, modify and use this API as he/she wants. It is valid for all countries. This software is free and it's prohibited to sell it without my approval.

## Considerations for future

### Authentication

There are several methods:

* Login and password - better than nothing, but can be DoSed, i.e. a lot of automated bot registrations can crush the server.

* Social network-only authentication - i.e. it's possible to access the API only after you connected your Facebook/Twitter/etc account to the service. Good option because it's much more painful for hackers to create several accounts.

* Different types of token authentication - good option, but requires much more configurations and are also kind of sensible to bad connection/changing devices issues.

* Captcha - good, almost completely eliminates possibility of DoS attack.

* Two-factor authentication - i.e. with physical/digital key/code which is provided to certain device. Also very good, but requires a lot of extra configurations.

To sum up, considering both easiness and security, the best option is a captcha which is required to press "Add" or "Edit" buttons.

### Redundancy

As long as it's not an option to use several servers to run API, as well as other methods of physical redundancy, the best way is to use load limitations, i.e. the server will deny new actions if the server load is higher than limit.

Servers are provided by reliable company (Heroku) so I consider that backup ones are not needed.

### Data versioning

Most of the popular databases has data versioning provided - at least for documents.

For full backups it's good idea to have several options from reliable providers. Good and affordable ones are:

* Online storages like Google Drive.

* Options from server providers like [Heroku](https://devcenter.heroku.com/articles/heroku-postgres-backups) or DigitalOcean.

## Extra information

* I do not pretend that idea of this API belongs to me, I consider it so called public domain, i.e. nobody can claim that idea of creating lists belongs to him/her.

* The motivation to create this API came from desire to learn programming.

* Animations section in *style.css* file is not written by me. I used Fade one from [this list](http://ianlunn.github.io/Hover/) of beautiful buttons by Ianlunn.

*This readme was written on 14 August, 2017 and is valid until further notification*

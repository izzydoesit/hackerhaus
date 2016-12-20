== README
# H@cker Houses


* Ruby version
2.3.1
* System dependencies
rails 4.2.5
mysql2 0.3.20

Travelers and techies alike can finally find a place to stay in SF with this easy-to-use app for locating a bed in a community living environment in the Bay area.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

```
ruby 2.3.1
bundler 1.12.5
rails 4.2.5
thinking-sphinx 3.0.0

```

### Installing
From the command terminal, clone the repository to your local directory...
```
$ git clone https://www.gihub.com/everysum1/hackerhaus.git
$ cd hackerhaus
```

Then run bundle command to install all dependencies and run the server.  

```
$ bundle install
$ rails server
```


## Running ALL the tests

```
bundle exec rspec spec
```

## Deployment

You must have Heroku CLI installed and be logged in to Heroku in order to deploy live via Heroku servers
(Please see the [documentation](https://devcenter.heroku.com) to get set up with Heroku)

Then after installation and login, via the command line
```
$ heroku create
$ git push heroku master
$ heroku open
```

## Built With

* [Ruby on Rails](http://api.rubyonrails.org/) -  Back-End Framework used
* [Sphinx](https://github.com/pat/thinking-sphinx) - Search tool used
* [MySQL2](https://www.mysql.com/) - Database used
* [React-On-Rails] (https://github.com/shakacode/react_on_rails) - React front end framework used

## Authors

* **Israel Matos** - [Github](https://github.com/everysum1)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

Thank you for all your help!!
* Will Wong

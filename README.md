# ForgedToFight.IO

![Logo ForgedToFight.IO](assets/images/logo_forgedtofight.io_bg-white_332x128.png "ForgedToFight.IO")

This is a community fansite for TRANSFORMERS Forged to Fight mobile game.

## The stack

* [Ruby](https://www.ruby-lang.org/) 2.7.0 : programming language
* [Syro](http://soveran.github.io/syro/) : powerful router for *Ruby* web applications
* [Core UI (Bootstrap 4)](http://coreui.io) : CSS/JS framework
* [RethinkDB](https://www.rethinkdb.com/) : JSON document based database

## Developers resources

### Start the application

* Install bundler: `gem install bundler --no-document`
* Install required gems: `bundle install`
* Install Docker: [https://docs.docker.com/engine/installation/](https://docs.docker.com/engine/installation/)
* Create the RethinkDB from docker image:

        mkdir -p ${HOME}/opt/data/rethinkdb
        docker run --name rethinkdb -v "${HOME}/opt/data/rethinkdb:/data" -d rethinkdb
* Run tha app:
  * `bundle exec rake nobrainer:sync_schema`
  * `bundle exec rake nobrainer:seed`
  * `bundle exec unicorn -c config/unicorn.rb -p ${PORT:-5000} -E ${RACK_ENV:-development} config.ru`

#### To start RethinkDB image

        docker start rethinkdb

#### To stop RethinkDB image

        docker stop rethinkdb

* Create this **.env** file in root directory and run the application with **foreman** Ruby gem : `foreman run rake nobrainer:sync_schema` and `foreman start`

        APP_AWS_SES_ADDRESS=email-smtp.eu-west-1.amazonaws.com
        APP_AWS_SES_DOMAIN=forgedtofight.io
        APP_AWS_SES_FROM=ForgedToFight.IO <xxxxx@forgedtofight.io>
        APP_AWS_SES_FROM_NOREPLY=NOREPLY-ForgedToFight.IO <xxxxxx@forgedtofight.io>
        APP_AWS_SES_ID=xxx
        APP_AWS_SES_PORT=587
        APP_AWS_SES_SECRET=xxxxxx
        APP_COOKIE_SECRET=xxxxxxxxxxxxxxxxxxxxxxx
        APP_MAX_THREADS=2
        APP_MOCK_USER=true
        APP_NOBI_SECRET=xxxxxxxxxxxxxxxxxxxxxxxxx
        APP_PORT=5000
        # APP_RETHINKDB_URL=rethinkdb://localhost:28015/forgedtofightio_development
        APP_SESSION_EXPIRE_AFTER=86400
        APP_WORKERS=2
        RACK_ENV=development
        MALLOC_ARENA_MAX=4
        RACK_MULTIPROCESS=true
        RACK_MULTITHREAD=true

    **The RethinkdB IP address is autotically deducted**: [config/initializers/nobrainer.rb#L8](config/initializers/nobrainer.rb#L8).

### RethinkDB

#### Create application user in RethinkDB data explorer

##### Launch RethinkDB administration tool

 1. With *docker*

    __replace *rethinkdb* by your docker instance name__

        xdg-open "http://$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' rethinkdb):8080"

 2. With a local RethinkDB instance

        xdg-open "http://localhost:8080"

 3. With a remote instance of RethinkDB

        xdg-open "https://my.domain.com:8080"

##### Set `APP_RETHINKDB_URL` environment variable

Example:

    export APP_RETHINKDB_URL=rethinkdb://my.domain.com:28015/forgedtofightio_development

##### Production database

    r.db('rethinkdb').table('users').insert({id: 'forgedtofightio', password: 'xxxxxxxxxxxxxxxxxxxxxxx'});
    r.dbCreate('forgedtofightio_production');
    r.db('forgedtofightio_production').grant('forgedtofightio', {read: true, write: true, config: true});

### Translation

*Rake* tasks are provided for translation:

* `rake gettext:find`: find the new text, update *fuzzy* translations if needed
* `rake gettext:pack`: build the binary translation before the commit

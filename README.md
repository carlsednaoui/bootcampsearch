# Getting Started
  
## Starting the application locally
  - Start postgres app
  - Start the postgres server:
          
          pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
  
## Restoring your local DB
Sometimes your local DB might get wipped out, in this case you need to:
    
  - Recreate the db locally

          rake db:setup
  - Capture a snapshot from Heroku

          heroku pgbackups:capture --app bootcampsearch
  - Download the Heroku backup file

          curl -o latest.dump `heroku pgbackups:url --app bootcampsearch`
  - Restore the file you just downloaded

          pg_restore --verbose --clean --no-acl --no-owner -h localhost -d bootcampsearch_development latest.dump
  - Start your rails server, everything should work

          rails s

## Copying local DB to prod
Sometimes you'll want to push your local database to production, in this case run this command:

    heroku pgbackups:restore DATABASE_URL 'http://carlsednaoui.s3.amazonaws.com/mydb.dump' --app bootcampsearchstaging

You can replace the bootcampsearchstaging for bootcampsearch if you want to do this in Prod.

__Note__: If the app crashes post restore, simply restart it:

    heroku restart --app bootcampsearchstaging


# TODO

## Remove
- gSchool.it - I think they're close

## To fill
 - Bootcamps: Taglines

## To create
- Programs model
- Reviews model
- Act as taggeable


## Inspiration
- https://coinbase.com/
- http://www.bootgrad.com/#/survey


## Resources

- http://stackoverflow.com/questions/2556362/anyone-got-seo-tips-for-ruby-on-rails
- http://www.inboundio.com/blog/seo-for-ruby-on-rails-complete-guide/
- http://www.bingocardcreator.com/articles/rails-seo-tips.htm
- https://news.ycombinator.com/item?id=6642185

### Ratings/ reviews/ comments
- https://github.com/jackdempsey/acts_as_commentable
- https://github.com/muratguzel/letsrate

# Ideas
- Alumni success with company logos
- student projects, pictures
- interview with bootcamps

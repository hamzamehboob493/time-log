# Versions

* Rails version 7.0.8
* Postgresql version 14

# Guide to setup the project

* Go to project repo and run "gem install bundler:2.4.10"
* After successful install run "bundler:2.4.10 install"
* After all the dependencies are done installing run the following commands to setup database. Make sure you add your database username and password in the `database.yml` file.
```
    rails db:create
    rails db:migrate
    rails db:seed
```
* Seeds command will make the temporary user with example data.
* Login to the app using credentials: `email: teacher@techhub.com, password: 123456`

# Django template
## General info
Template for DRF projects, with ready docker, postgres db, and CI.


## Setup
To run app:
```
$ make build_up
```
To rebuild docker image:
```
$ make rebuild
```

In order to run migrations:
```
$ make migrate
```

To create super user in a running container:
```
$ make super_user
```

To check logs for app:
```
$ make logs_app
```

To check logs for database:
```
$ make logs_db
```

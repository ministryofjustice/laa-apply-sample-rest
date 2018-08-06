# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 
    Ruby version 2.5.1
    Rails version 5




* Database creation
    -
    For local development and first isntall
    
        docker-compose build
        docker-compose run web rake db:create

* Database initialization
    -
    For Local Development  you will need to migrate the basic database setup
        
        docker-compose run web rake db:migrate 


* Deployment instructions
    -
    In order to run the application you can then do
    
        docker-compose up -d
        
        
* Play around
    -
    You can play around with the site at 
        
        localhost/cars

* Volumes
    -
    Not entirely sure how necessary this will be going forward, but it makes sense 
    to not lose data build on our local docker schema with tat in mind i have setup a volume
    Basically this stores the data on the host system in our case the macbook.  This file is then loaded
    when docker fires up.
    you should be able to do docker-compose up and docker-compose down and the data will always be there
    you can see and inspect the volume using the following command
    
        docker volume ls
        docker volume inspect <volume-name>
   
    
    
    
        
       
        
* Notes
    -
    There does appear to be a problem with the  ruby image i am curently using
    which is why in the docekr compose file we have to remove
    a process file before invoking the launch command
    
    This basically gets rid of some previous process information which the 
    container should be doing when it shuts down but it isnt.
    
    
    
            

* ...

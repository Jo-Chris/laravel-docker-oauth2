
# Dockerized Laravel-7 OAuth2 Base    :surfer:  
This base application comes predefined with:

- Laravel 7
- Docker Environment (MySql, PhpMyAdmin, ...)
- OAuth2 Implementation (Bearer Token)

Just clone & build your API :fire:
  
## How to start  
Start all containers:  
> `docker-compose up --build`   

Run composer install
> `docker-compose run composer install`

Run migrations
> `docker-compose run artisan migrate`
## How to access  
  
**Services**  
| Service      | Port|   
| ------------- |:-------------:|  
| Laravel Application      | localhost:8080 |  
| PhpMyAdmin      | localhost:9191|  
  
**Routes:**  

|Method | Name | Route |
| ------------- |:-------------:|  :-------------:|  
|POST| Registration | /api/v1/register |  
|POST| Login        | /api/v1/user/login |  
|GET| All Users    | /api/v1/user/all  |


**Registration**:  
  
```json  
{  
  "email":  "email@email.at",  
  "password":  "password",  
  "password_confirmation":  "password"  
}  
```  
  
  
**Login**:  
```json  
{  
  "email":  "testemail@email.at",  
  "password":  "mypassword"  
}  
```




## Note

OAuth 2.0 uses Bearer Token to authenticate users, so dont forget to add the Bearer Token to the Authentication Header for accessing protected routes.  

``` Authorization: Bearer <Your Token> ```

## Handling Containers
Use

> `docker-compose run`

followed by the container to be used, here are some examples

`docker-compose run artisan migrate` \
`docker-compose run composer install` \
`docker-compose run artisan make:controller MyNewController` 

## Troubleshoot :pencil2:

Open an Issue if anything works unexpected 



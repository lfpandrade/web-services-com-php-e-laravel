<?php

$this->group(['prefix' => 'v1'], function() {
    
    //CRIANDO TOKENS
    $this->post('auth', 'Auth\AuthApiController@authenticate');
    $this->post('auth-refresh', 'Auth\AuthApiController@refreshToken');

    //AUTENTICANTO COM O MIDDLEWARE JWT.AUTH
    $this->group(['middleware' => 'jwt.auth'], function() {
        $this->get('products/search', 'Api\V1\ProductController@search');
        $this->resource('products', 'Api\V1\ProductController', ['except' => ['create', 'edit']]);
    });
});


<?php

$this->group(['prefix' => 'v1'], function() {

    //AUTENTICANTO COM O MIDDLEWARE JWT.AUTH
    $this->group(['middleware' => 'jwt.auth'], function() {
        $this->post('products/search', 'Api\V1\ProductController@search');
        $this->resource('products', 'Api\V1\ProductController', ['except' => ['create', 'edit']]);
    });
});


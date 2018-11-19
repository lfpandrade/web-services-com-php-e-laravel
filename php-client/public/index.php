<?php

include_once '../bootstrap/start.php';

function login() {
    $email = 'seuemail@seuemail.com.br';
    $password = 'suasenha';

    $curl = curl_init();

    curl_setopt_array($curl, [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => [
            'email' => $email,
            'password' => $password,
        ],
        CURLOPT_URL => 'aqui é o link da sua aplicação local'
    ]);
    $response = json_decode(curl_exec($curl));
    curl_close($curl);

    return $response->token;
}

function products($token)
{
   $curl = curl_init();

    curl_setopt_array($curl, [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_CUSTOMREQUEST => 'GET',
        CURLOPT_URL => 'aqui é o link da sua aplicação local',
        CURLOPT_HTTPHEADER => [
            "Authorization: Bearer {$token}"
        ]
    ]);
    $response = json_decode(curl_exec($curl));
    curl_close($curl); 
    
    return $response;
}

$token = login();
$products = products($token);

if( isset($products->data) && count($products->data) > 0){
    foreach ($products->data as $result){
        echo "<p>Nome: {$result->name}";
        echo "<p>Descrição: {$result->description}</p>";
        echo "<hr>";
    }
}else{
    echo 'Nenhum Produto Cadastrado!';
}

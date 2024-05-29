<?php
    if(isset($_SESSION['user'])){
        echo "Sender:".$_SESSION['sentFrom'];
        echo " || UID:".$_SESSION['user']['id'];
        echo " || USERNAME:".$_SESSION['user']['username'];
    }
    if($config->thisPage == 'globalChatTerminal'){
        $header = 'alt__inner__sect__header';
        $inner_setion = 'alt__inner-section';
    }elseif($config->thisPage == 'REDIRECTION...'){
    }else{
        $header = 'inner__sect__header';
        $inner_setion = 'inner-section';
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$config->pageName?></title>

    <link rel="stylesheet" href="../assets/styles/style.css">
    <link rel="stylesheet" href="../assets/styles/ach.css">
    <link rel="stylesheet" href="../assets/styles/profile.css">
    <link rel="stylesheet" href="../assets/styles/users.css">
    <link rel="stylesheet" href="../assets/styles/tickets.css">
    <link rel="stylesheet" href="../assets/styles/chatStyle.css">
    <link rel="stylesheet" href="../assets/styles/contextMenu.css">
    <?php if($config->thisPage == "globalChatTerminal"):?>
    <link rel="stylesheet" href="../assets/styles/altChat.css">
    <?endif;?>
    <link rel="stylesheet" href="../assets/styles/index.css">
    <link rel="stylesheet" href="../assets/styles/ff.css">
    <script src="/assets/scripts/jquery.js"></script>
    <script src="/assets/scripts/script.js"></script>
    <script>    var objDiv = document.getElementById("MyDivElement");
    objDiv.scrollTop = objDiv.scrollHeight;</script>
</head>
<body onload="startTime()">
    

<main>

<section class="<?=$inner_setion;?>">
    <div class="<?=$header;?>">
        <div class="header__wrapper">
            <div class="header__element">
                <a class="<?=is_active('index');?>" <?=hrefR('index');?>>Главная</a>
            </div>
            <div class="header__element">
                <a class="<?=is_active('ticketsPage');?>" <?=hrefR('tickets');?>>Тикеты</a>
            </div>
            <div class="header__element">
                <a class="<?=is_active('user/index');?>" <?=hrefR('users');?>>Пользователи</a>
            </div>
            <div class="header__element">
                <a class="<?=is_active('globalChat');?>" <?=hrefR('globalChat');?>>Общение</a>
            </div>
        <?php if(isset($_SESSION['user']['id'])):?>
            <div class="header__element">
                <a class="<?=is_active('profilePage');?>" <?=hrefR('user/profile');?>>Профиль</a>
            </div>

            <div class="header__element">
                <a class="<?=is_active('user/quit');?>" <?=hrefR('actions/user/quit');?>>Выйти</a>
            </div>
            
        <?else:?>
            <div class="header__element">
                <a class="<?=is_active('authPage');?>" <?=hrefR('authPage');?>>Авторизация</a>
            </div>
        <?endif;?>
        </div>
    </div>

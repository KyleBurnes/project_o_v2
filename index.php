<?php
    include 'components/core.php';

    $config->pageName = "Main Page";
    $config->thisPage = "index";
    loadComponent("header");
    if(isset($_SESSION['user'])){
        $seshCheck = true;
    }else{$seshCheck = false;}

?>

    <?php if($seshCheck == false):?>

        <div class="noSeshWarning">
            <div class="noSeshWrapper">
                <h1>Внимание!</h1>
                <p>Для просмотра страницы необходимо авторизоваться!</p>
            </div>
        </div>

    <?endif;?>

<?php

    loadComponent("footer");

?>
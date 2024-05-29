<?php
    include 'components/core.php';
    $config->pageName = "Global Chat";
    $config->thisPage = "globalChat";
    loadComponent('header');

    $uid = $_SESSION['user']['id'];

    $globalMSG = $linki->query("SELECT `global_chat`.*, `users`.*
    FROM `global_chat` 
        LEFT JOIN `users` ON `global_chat`.`user_id` = `users`.`id` 
        ORDER BY `date_created` DESC LIMIT 15");
    

    // $getChat = $linki->query("SELECT * FROM `user_chat` WHERE `chat_owner` = '$uid' AND `chat_partner` = '{$getUser['id']}'");
    // $gc = $getChat->fetch_assoc();

    $getChat = $linki->query("SELECT * FROM `user_chat` WHERE `chat_owner` != '$uid'");
    $gc = $getChat->fetch_assoc();


    $selectPM = $linki->query("SELECT `users`.*, `user_chat_msg`.*, `profile`.*
    FROM `users` 
        LEFT JOIN `user_chat_msg` ON `user_chat_msg`.`msg_owner` = `users`.`id` 
        LEFT JOIN `profile` ON `profile`.`user_id` = `users`.`id` WHERE `msg_owner` = '$uid' AND `user_id` = '$uid'");

?>
<?php if(isset($_SESSION['user'])):?>
<br>
<br>
<br>

    <div class="chat__main">

        <div class="chat__wrapper">
            <div class="chat__1__sect">
            <h1 style="text-align:center; font-size:26pt;">Глобальный (общий) чат:</h1>
            <div class="global__chat__snip">
                <div class="glc__wrapper">

                    <?php foreach ($globalMSG as $key => $value):?>
                    <div class="global__msg__body">
                        
                        <p class="ctext">
                            <?="[".$value['date_created']."]"?>|<a href="../user/profile_see.php?watchUser=<?=$value['id']?>"><?=$value['username']?></a><?=": ".$value['chat_message']?>
                        </p>
                    </div>
                    <?endforeach;?>
                    </div>
                </div>
                <div id="to__glb">
                    <a id="to__global" href="intermediate.php">Написать</a>
                </div>
            </div>

            <div class="chat__2__sect">
                <div class="pm__chat__snip">
                    
                    <div class="pmc__wrapper">
                    <h1 style="text-align:center; font-size:26pt;">Личный чат:</h1>

                    <?foreach ($selectPM as $key => $value):?>
                    
                        <div class="pmc__body">
                            <div class="pmc__user">
                                <a id="sel__user" href="../user/profile_see.php?watchUser=<?=$value['user_id']?>">
                                <div class="pmc__pfp"><img src="assets/img/user_pfp/<?=$value['pic']?>" alt="pfp"></div>
                                <div class="pmc__role">[user role]</div>
                                <div class="pmc__nickname"><?=$value['username']?></div>
                                </a>
                            </div>

                            <div class="pmc__msg">
                                <a href="user/chatroom.php?partnerName=<?=$value['username']?>">
                                    <div class="pmc__msg__date">
                                        <p><?=date("Y d M \ H:i:s", $value['date_sent'])?></p>
                                    </div>
                                    <div class="pmc__msg__text">
                                        <p><?=$value['msg_text']?></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    <?endforeach;?>



                    </div>
                

                </div>
            </div>

        </div>

    </div>



</div>
<?else:?>
<h1>Вы не авторизованы, чтобы здесь находиться</h1>
<?endif;?>


<?php
    unset($_SESSION['chatError']);
?>
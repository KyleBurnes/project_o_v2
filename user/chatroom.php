<?php
    include "../components/core.php";
    include "../components/header.php";

    $users = $linki->query("SELECT * FROM `users`");


    $getUN = $_GET['partnerName'];
    $uid = $_SESSION['user']['id'];
    $_SESSION['partnerName'] = $getUN;

    
    $getUserByName = $linki->query("SELECT * FROM `users` WHERE `username` = '$getUN'");
    $getUser = $getUserByName->fetch_assoc();


    $getChat = $linki->query("SELECT * FROM `user_chat` WHERE `chat_owner` = '$uid' AND `chat_partner` = '{$getUser['id']}'");
    $gc = $getChat->fetch_assoc();
    $gcp = $gc['chat_partner'];
    
    $getMsg  = $linki->query("SELECT * FROM `user_chat_msg` WHERE `chat_id` = '{$gc['id']}'");
    $gm = $getMsg->fetch_assoc();

    // $test = $linki->query("SELECT `users`.`username`, `user_chat`.`id`, `user_chat_msg`.*
    //     FROM `users` 
    //     LEFT JOIN `user_chat` ON `user_chat`.`chat_owner` = `users`.`id` 
    //     LEFT JOIN `user_chat_msg` ON `user_chat_msg`.`chat_id` = `user_chat`.`id` WHERE `chat_id` = '{$gc['id']}'");

    $test = $linki->query("SELECT `users`.*, `user_chat_msg`.*
        FROM `user_chat_msg` 
        LEFT JOIN `users` ON `user_chat_msg`.`sender` = `users`.`id` WHERE `chat_id` = '{$gc['id']}'");
    // $t = $test->fetch_assoc();
    // print_r($t);

    $getPartnerUser = $linki->query("SELECT * FROM `users` WHERE `id` = '$gcp'");
    $gpc = $getPartnerUser->fetch_assoc();
    $getPartnerProf = $linki->query("SELECT * FROM `profile` WHERE `user_id` = '$gcp'");
    $gpf = $getPartnerProf->fetch_assoc();
        

?>
<div class="chatroom__main">
<a href="../users.php" id="users__back">< Вернуться</a>

    <h3 style="font-size: 24pt; text-align:center; margin:0 0 12px 0 ;">Личный чат c <?=$gpc['username']?></h3>
    <div class="chat__user__info">
        <div class="chat__user__pfp"><img src="../assets/img/user_pfp/<?=$gpf['pic']?>" alt=""></div>
        <div class="chat__user__nickname">
            <a href="../user/profile_see.php?watchUser=<?=$gpc['id']?>">
                <?=$gpc['username']?>
            </a>
        </div>
    </div>
    <div class="input__field__msg"">
        <form action="../actions/user/chat_process.php" method="POST">
            <input type="text" placeholder="Текст сообщения..." name="msg_text" id="chat_msg_field">
            <input type="submit" name="sub__msg" value="Отправить" id="">
        </form>
    </div>

    <div class="users__msg">
        <div class="msg__body">

        <?php foreach ($test as $key => $value):?>

                <div class="message__card <?php if($value['users']['id'] == $uid){echo 'sender';}else{echo 'recip';}?>">
                    <p id="pm_un""><?=$value['username']." ".'('.date("Y d M \ H:i:s", $value['date_sent'])."):"?></p>
                    <p id="pm_msg"><?=">".$value['msg_text']?></p>
                </div>

        
        <? endforeach;?>
        </div>

    </div>


</div>

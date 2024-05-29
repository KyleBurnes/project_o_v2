<?php
    include 'components/core.php';
    $config->pageName = "Auth Page";
    $config->thisPage = "authPage";
    loadComponent("header");
?>

    <section class="auth__sect">

        <div class="form__container">
            <div class="switch">
                <a class="" href="authPage.php?mode=reg">Sign Up</a>
                <span>/</span>
                <a class="" href="authPage.php?mode=log">Log In</a>
            </div>
            <?if($_GET['mode'] == "reg"):?>
            <form <?=action("user/auth");?>> 
                <input type="text" name="username" placeholder="Username (16 char. max)">
                <input type="email" name="email" placeholder="E-Mail">
                <input type="password" name="password" placeholder="Password (16 char. max)">
                <input type="password" name="repass" placeholder="Repeat password">
                <input type="submit" name="reg" value="Registration">
            </form>
            <?elseif($_GET['mode'] == "log"):?>
            <form <?=action("user/auth");?>>
                <input type="text" name="username" placeholder="Username">
                <input type="password" name="password" placeholder="Password">
                <input type="submit" name="log" value="Login">
            </form>
            <?endif;?>
        </div>
        <?php if(isset($_SESSION['errorForm'])):?>
        <div class="errorField">
            <div class="errorWrap">
                <p><span>[</span><?=$_SESSION['errorForm']?><span>]</span></p>
            </div>
        </div>
        <?endif;?>
    </section>








<?php
unset($_SESSION['errorForm']);
loadComponent("footer");
?>
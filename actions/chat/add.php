<?php
    include '../../components/core.php';
    $n = $_POST['chat_message'];
    $d = date("Y-m-d H:i:s");
    $_POST['date_created'] = $d;
    // $_SESSION['chatError'] = 'fe';
    
    if(isset($_POST['send'])){
        if(empty($_POST['chat_message']) || ctype_space($_POST['chat_message']) == true || ctype_space($_POST['chat_message'][0]) == true){
            $_SESSION['chatError'] = 'Поле ввода не может быть пустым и не может начинаться с пробела';
            redirect();
        }else{
            
            if($_POST['chat_message'][0] == '/'){
                switch($_POST['chat_message']){

                    case '/home':
                        redirect('index');
                        break;
                    case '/terminate':
                        redirect('actions/user/quit');
                        break;
                    case '/deleteAll':
                        $_SESSION['command'] = 'user-deleteAll';
                        $_SESSION['sender'] = $_SERVER['HTTP_REFERER'];
                        redirect('actions/chat/delete');
                        break;
                    case '/';
                        $_SESSION['chatError'] = 'Введите команду';
                        redirect();
                        break;  
                    default:
                        $_SESSION['chatError'] = 'Такой команды не найдено';
                        redirect();
                        break;
 
                    }
            }else{

                $arr = ['user_id','chat_message', 'date_created'];
                $values = emptyValues($arr, $_POST);
                if($values){
                    insert("global_chat", $arr, $values);
                    redirect();
                   }   
                }
            }
        }

?>
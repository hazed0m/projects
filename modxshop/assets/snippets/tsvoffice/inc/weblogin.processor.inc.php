<?php
# WebLogin 1.0
# Created By Raymond Irving 2004
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

defined('IN_PARSER_MODE') or die();

$dbase = $modx->dbConfig['dbase'];
$table_prefix = $modx->dbConfig['table_prefix'];

# process password activation
    if ($isPWDActivate==1){
        $id = $_REQUEST['wli'];
        $pwdkey = $_REQUEST['wlk'];

        $sql = "SELECT wu.*
                FROM $dbase.`".$table_prefix."web_users` wu
                WHERE wu.id='".$modx->db->escape($id)."'";
        $ds = $modx->db->query($sql);
        $limit = $modx->recordCount($ds);
        if($limit==1) {
            $row = $modx->fetchRow($ds);
            $username = $row["username"];
            list($newpwd,$newpwdkey) = explode("|",$row['cachepwd']);
            if($newpwdkey!=$pwdkey) {
                //$output = webLoginAlert("Invalid password activation key. Your password was NOT activated.");
                $output = "<div class=\"error\">Неправильный код активации пароля. Ваш пароль НЕ активирован.</div>";
                return;
            }
            // activate new password
            $newpwd = md5($newpwd);
            $sql="UPDATE $dbase.`".$table_prefix."web_users`
                  SET password = '".$newpwd."', cachepwd=''
                  WHERE id=".$row['id'];
            $ds = $modx->db->query($sql);

            // unblock user by resetting "blockeduntil"
            $sql="UPDATE $dbase.`".$table_prefix."web_user_attributes`
                  SET blockeduntil = '0'
                  WHERE internalKey=".$row['id'];
            $ds2 = $modx->db->query($sql);

            // invoke OnWebChangePassword event
            if(!$ds || !$ds2)
                $modx->invokeEvent("OnWebChangePassword",
                                array(
                                    "userid"        => $id,
                                    "username"        => $username,
                                    "userpassword"    => $newpwd
                                ));

            if(!$ds || !$ds2) /*$output = webLoginAlert("Error while activating password.");*/ $output = "<div class=\"error\">Извините, произошла ошибка при активации пароля.</div>";

            else if(!$pwdActId) /*$output = webLoginAlert("Your new password was successfully activated.");*/ $output = "<div class=\"success\">Ваш новый пароль был успешно активирован.</div>";

            else {
                // redirect to password activation notification page
                $url = $modx->makeURL($pwdActId);
                $modx->sendRedirect($url,0,'REDIRECT_REFRESH');
            }
        }
        else {
            // error
            //$output = webLoginAlert("Error while loading user account. Please contact the Site Administrator");
            $output = "<div class=\"error\">Извините, но произошла ошибка при загрузке аккаунта пользователя. Пожалуйста, сообщите об этом Администратору сайта.</div>";
        }
        return;
    }


# process password reminder
    if ($isPWDReminder==1) {
        $email = $_POST['txtwebemail'];
        $webpwdreminder_message = $modx->config['webpwdreminder_message'];
        $emailsubject = $modx->config['emailsubject'];
        $emailsender = $modx->config['emailsender'];
        $site_name = $modx->config['site_name'];
        // lookup account
        $sql = "SELECT wu.*, wua.fullname
                FROM $dbase.`".$table_prefix."web_users` wu
                INNER JOIN $dbase.`".$table_prefix."web_user_attributes` wua ON wua.internalkey=wu.id
                WHERE wua.email='".$modx->db->escape($email)."'";

        $ds = $modx->db->query($sql);
        $limit = $modx->recordCount($ds);
        if($limit==1) {
            $newpwd = webLoginGeneratePassword(8);
            $newpwdkey = webLoginGeneratePassword(8); // activation key
            $row = $modx->fetchRow($ds);
            //save new password
            $sql="UPDATE $dbase.`".$table_prefix."web_users`
                  SET cachepwd='".$newpwd."|".$newpwdkey."'
                  WHERE id=".$row['id'];
            $modx->db->query($sql);
            // built activation url
            if($_SERVER['SERVER_PORT']!='80') {
              $url = $modx->config['server_protocol'].'://'.$_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].$modx->makeURL($modx->documentIdentifier,'',"webloginmode=actp&wli=".$row['id']."&wlk=".$newpwdkey);
            } else {
              $url = $modx->config['server_protocol'].'://'.$_SERVER['SERVER_NAME'].$modx->makeURL($modx->documentIdentifier,'',"webloginmode=actp&wli=".$row['id']."&wlk=".$newpwdkey);
            }
            // replace placeholders and send email
            $message = str_replace("[+uid+]",$row['username'],$webpwdreminder_message);
            $message = str_replace("[+pwd+]",$newpwd,$message);
            $message = str_replace("[+ufn+]",$row['fullname'],$message);
            $message = str_replace("[+sname+]",$site_name,$message);
            $message = str_replace("[+semail+]",$emailsender,$message);
            $message = str_replace("[+surl+]",$url,$message);

            if (!ini_get('safe_mode')) $sent = mail($email, "New Password Activation for $site_name", $message, "From: ".$emailsender."\r\n"."X-Mailer: MODx Content Manager - PHP/".phpversion(), "-f {$emailsender}");
            else $sent = mail($email, "New Password Activation for $site_name", $message, "From: ".$emailsender."\r\n"."X-Mailer: MODx Content Manager - PHP/".phpversion());
            if(!$sent) {
                // error
                //$output =  webLoginAlert("Error while sending mail to $email. Please contact the Site Administrator");
                $output =  "<div class=\"error\">Возникла ошибка при отсылке сообщения на $email. Пожалуйста, сообщите об этом Администратору сайта</div>";
                return;
            }
            if(!$pwdReqId) /*$output = webLoginAlert("Please check your email account ($email) for login instructions.");*/ $output = "<div class=\"notice\">Пожалуйста, проверьте вашу почту ($email) для получения дальнейших инструкиций.</div>";
            else {
                // redirect to password request notification page
                $url = $modx->makeURL($pwdReqId);
                $modx->sendRedirect($url,0,'REDIRECT_REFRESH');
            }
        }
        else {
            //$output = webLoginAlert("We are sorry! We cannot locate an account using that email.");
            $output = "<div class=\"error\">Мы приносим извинения, но мы не можем активировать ваш аккаунт с таким электронным адресом. Воспользуйтесь, пожалуйста, другим.</div>";
        }

        return;

    }


# process logout
    if ($isLogOut==1){
        $internalKey = $_SESSION['webInternalKey'];
        $username = $_SESSION['webShortname'];

        // invoke OnBeforeWebLogout event
        $modx->invokeEvent("OnBeforeWebLogout",
                                array(
                                    "userid"   => $internalKey,
                                    "username" => $username
                                ));

        // if we were launched from the manager
        // do NOT destroy session
        if(isset($_SESSION['mgrValidated'])) {
            unset($_SESSION['webShortname']);
            unset($_SESSION['webFullname']);
            unset($_SESSION['webEmail']);
            unset($_SESSION['webValidated']);
            unset($_SESSION['webInternalKey']);
            unset($_SESSION['webValid']);
            unset($_SESSION['webUser']);
            unset($_SESSION['webFailedlogins']);
            unset($_SESSION['webLastlogin']);
            unset($_SESSION['webnrlogins']);
            unset($_SESSION['webUsrConfigSet']);
            unset($_SESSION['webUserGroupNames']);
            unset($_SESSION['webDocgroups']);
        }
        else {
            // Unset all of the session variables.
//            $_SESSION = array();
            // destroy session cookie
            if (isset($_COOKIE[session_name()])) {
                setcookie(session_name(), '', 0, MODX_BASE_URL);
            }
            session_destroy();
//            $sessionID = md5(date('d-m-Y H:i:s'));
//            session_id($sessionID);
//            startCMSSession();
//            session_destroy();
        }

        // invoke OnWebLogout event
        $modx->invokeEvent("OnWebLogout",
                                array(
                                    "userid"        => $internalKey,
                                    "username"        => $username
                                ));

        // redirect to first authorized logout page
        $url = preserveUrl($loHomeId);
        $modx->sendRedirect($url,0,'REDIRECT_REFRESH');
        return;

    }


# process login

    $username = $modx->db->escape(htmlspecialchars($_POST['username'], ENT_QUOTES));
    $givenPassword = $modx->db->escape($_POST['password']);
    $captcha_code = isset($_POST['captcha_code'])? $_POST['captcha_code']: '';
    $rememberme = $_POST['rememberme'];

    // invoke OnBeforeWebLogin event
    $modx->invokeEvent("OnBeforeWebLogin",
                            array(
                                "username"        => $username,
                                "userpassword"    => $givenPassword,
                                "rememberme"    => $rememberme
                            ));

    $sql = "SELECT $dbase.`".$table_prefix."web_users`.*, $dbase.`".$table_prefix."web_user_attributes`.* FROM $dbase.`".$table_prefix."web_users`, $dbase.`".$table_prefix."web_user_attributes` WHERE BINARY $dbase.`".$table_prefix."web_users`.username = '".$username."' and $dbase.`".$table_prefix."web_user_attributes`.internalKey=$dbase.`".$table_prefix."web_users`.id;";
    $ds = $modx->db->query($sql);
    $limit = $modx->db->getRecordCount($ds);

    if($limit==0 || $limit>1) {
        //$output = webLoginAlert("Incorrect username or password entered!");
        $output = "<div class=\"error\">Вы ввели неправильный Логин или Пароль! Пожалуйста, проверьте их и попробуйте еще раз</div>";
        return;
    }

    $row = $modx->db->getRow($ds);

    $internalKey             = $row['internalKey'];
    $dbasePassword             = $row['password'];
    $failedlogins             = $row['failedlogincount'];
    $blocked                 = $row['blocked'];
    $blockeduntildate        = $row['blockeduntil'];
    $blockedafterdate        = $row['blockedafter'];
    $registeredsessionid    = $row['sessionid'];
    $role                    = $row['role'];
    $lastlogin                = $row['lastlogin'];
    $nrlogins                = $row['logincount'];
    $fullname                = $row['fullname'];
    //$sessionRegistered         = checkSession();
    $email                     = $row['email'];

    // load user settings
    if($internalKey){
        $result = $modx->db->query("SELECT setting_name, setting_value FROM ".$dbase.".`".$table_prefix."web_user_settings` WHERE webuser='$internalKey'");
        while ($row = $modx->fetchRow($result, 'both')) $modx->config[$row[0]] = $row[1];
    }

    if($failedlogins>=$modx->config['failed_login_attempts'] && $blockeduntildate>time()) {    // blocked due to number of login errors.
        session_destroy();
        session_unset();
        //$output = webLoginAlert("Due to too many failed logins, you have been blocked!");
        $output = "<div class=\"error\">Слишком много неправильных попыток входа, поэтому вы были заблокированы! Попробуйте позже или обратитесь к Администратору сайта для решения этой проблемы.</div>";
        return;
    }

    if($failedlogins>=$modx->config['failed_login_attempts'] && $blockeduntildate<time()) {    // blocked due to number of login errors, but get to try again
        $sql = "UPDATE $dbase.`".$table_prefix."web_user_attributes` SET failedlogincount='0', blockeduntil='".(time()-1)."' where internalKey=$internalKey";
        $ds = $modx->db->query($sql);
    }

    if($blocked=="1") { // this user has been blocked by an admin, so no way he's loggin in!
        session_destroy();
        session_unset();
        //$output = webLoginAlert("You are blocked and cannot log in!");
        $output = "<div class=\"error\">Вы заблокированы и потому не можете войти! Обратитесь к Администрации сайта.</div>";
        return;
    }

    // blockuntil
    if($blockeduntildate>time()) { // this user has a block until date
        session_destroy();
        session_unset();
        //$output = webLoginAlert("You are blocked and cannot log in! Please try again later.");
        $output = "<div class=\"error\">Вы заблокированы и не можете войти! Пожалуйста, попробуйте войти немного позже, когда истечет срок вашей блокировки.</div>";
        return;
    }

    // blockafter
    if($blockedafterdate>0 && $blockedafterdate<time()) { // this user has a block after date
        session_destroy();
        session_unset();
        //$output = webLoginAlert("You are blocked and cannot log in! Please try again later.");
        $output = "<div class=\"error\">Вы заблокированы и не можете войти! Пожалуйста, попробуйте войти немного позже, когда истечет срок вашей блокировки.</div>";
        return;
    }

    // allowed ip
    if (isset($modx->config['allowed_ip'])) {
        if (strpos($modx->config['allowed_ip'],$_SERVER['REMOTE_ADDR'])===false) {
            //$output = webLoginAlert("You are not allowed to login from this location.");
            $output = "<div class=\"error\">Вы не можете войти с этого адреса.</div>";
            return;
        }
    }

    // allowed days
    if (isset($modx->config['allowed_days'])) {
        $date = getdate();
        $day = $date['wday']+1;
        if (strpos($modx->config['allowed_days'],"$day")===false) {
            //$output = webLoginAlert("You are not allowed to login at this time. Please try again later.");
            $output = "<div class=\"error\">Вы не можете войти в данный момент. Попробуйте войти позже.</div>";
            return;
        }
    }

    // invoke OnWebAuthentication event
    $rt = $modx->invokeEvent("OnWebAuthentication",
                            array(
                                "userid"        => $internalKey,
                                "username"      => $username,
                                "userpassword"  => $givenPassword,
                                "savedpassword" => $dbasePassword,
                                "rememberme"    => $rememberme
                            ));
    // check if plugin authenticated the user
    if (!$rt||(is_array($rt) && !in_array(TRUE,$rt))) {
        // check user password - local authentication
        if($dbasePassword != md5($givenPassword)) {
            //$output = webLoginAlert("Incorrect username or password entered!");
            $output = "<div class=\"error\">Вы ввели неправильный Логин или Пароль!</div>";
            $newloginerror = 1;
        }
    }

    if(isset($modx->config['use_captcha']) && $modx->config['use_captcha']==1) {
        if($_SESSION['veriword']!=$captcha_code) {
            //$output = webLoginAlert("The security code you entered didn't validate! Please try to login again!");
            $output = "<div class=\"error\">Введенный вами проверочный код неправильный! Попробуйте войти еще раз!</div>";
            $newloginerror = 1;
        }
    }

    if(isset($newloginerror) && $newloginerror==1) {
        $failedlogins += $newloginerror;
        if($failedlogins>=$modx->config['failed_login_attempts']) { //increment the failed login counter, and block!
            $sql = "update $dbase.`".$table_prefix."web_user_attributes` SET failedlogincount='$failedlogins', blockeduntil='".(time()+($modx->config['blocked_minutes']*60))."' where internalKey=$internalKey";
            $ds = $modx->db->query($sql);
        } else { //increment the failed login counter
            $sql = "update $dbase.`".$table_prefix."web_user_attributes` SET failedlogincount='$failedlogins' where internalKey=$internalKey";
            $ds = $modx->db->query($sql);
        }
        session_destroy();
        session_unset();
        return;
    }

    $currentsessionid = session_id();

    if(!isset($_SESSION['webValidated'])) {
        $sql = "update $dbase.`".$table_prefix."web_user_attributes` SET failedlogincount=0, logincount=logincount+1, lastlogin=thislogin, thislogin=".time().", sessionid='$currentsessionid' where internalKey=$internalKey";
        $ds = $modx->db->query($sql);
    }

    $_SESSION['webShortname']=$username;
    $_SESSION['webFullname']=$fullname;
    $_SESSION['webEmail']=$email;
    $_SESSION['webValidated']=1;
    $_SESSION['webInternalKey']=$internalKey;
    $_SESSION['webValid']=base64_encode($givenPassword);
    $_SESSION['webUser']=base64_encode($username);
    $_SESSION['webFailedlogins']=$failedlogins;
    $_SESSION['webLastlogin']=$lastlogin;
    $_SESSION['webnrlogins']=$nrlogins;
    $_SESSION['webUserGroupNames'] = ''; // reset user group names

    // get user's document groups
    $dg='';$i=0;
    $tblug = $dbase.".`".$table_prefix."web_groups`";
    $tbluga = $dbase.".`".$table_prefix."webgroup_access`";
    $sql = "SELECT uga.documentgroup
            FROM $tblug ug
            INNER JOIN $tbluga uga ON uga.webgroup=ug.webgroup
            WHERE ug.webuser =".$internalKey;
    $ds = $modx->db->query($sql);
    while ($row = $modx->db->getRow($ds,'num')) $dg[$i++]=$row[0];
    $_SESSION['webDocgroups'] = $dg;

    if($rememberme) {
        $_SESSION['modx.web.session.cookie.lifetime']= intval($modx->config['session.cookie.lifetime']);
    } else {
        $_SESSION['modx.web.session.cookie.lifetime']= 0;
    }

    $log = new logHandler;
    $log->initAndWriteLog("Logged in", $_SESSION['webInternalKey'], $_SESSION['webShortname'], "58", "-", "WebLogin");

    // get login home page
    $ok=false;
    if(isset($modx->config['login_home']) && $id=$modx->config['login_home']) {
        if ($modx->getPageInfo($id)) $ok = true;
    }
    if (!$ok) {
        // check if a login home id page was set
        foreach($liHomeId as $id) {
            $id = trim($id);
            if ($modx->getPageInfo($id)) {$ok=true; break;}
        }
    }

    // update active users list if redirectinq to another page
    if($id!=$modx->documentIdentifier) {
        if (getenv("HTTP_CLIENT_IP")) $ip = getenv("HTTP_CLIENT_IP");else if(getenv("HTTP_X_FORWARDED_FOR")) $ip = getenv("HTTP_X_FORWARDED_FOR");else if(getenv("REMOTE_ADDR")) $ip = getenv("REMOTE_ADDR");else $ip = "UNKNOWN";$_SESSION['ip'] = $ip;
        $itemid = isset($_REQUEST['id']) ? $_REQUEST['id'] : 'NULL' ;$lasthittime = time();$a = 998;
        if($a!=1) {
            // web users are stored with negative id
            $sql = "REPLACE INTO $dbase.`".$table_prefix."active_users` (internalKey, username, lasthit, action, id, ip) values(-".$_SESSION['webInternalKey'].", '".$_SESSION['webShortname']."', '".$lasthittime."', '".$a."', ".$itemid.", '$ip')";
            if(!$ds = $modx->db->query($sql)) {
                $output = "error replacing into active users! SQL: ".$sql;
                return;
            }
        }
    }

    // invoke OnWebLogin event
    $modx->invokeEvent("OnWebLogin",
                            array(
                                "userid"        => $internalKey,
                                "username"        => $username,
                                "userpassword"    => $givenPassword,
                                "rememberme"    => $_POST['rememberme']
                            ));

    // redirect
    if(isset($_REQUEST['refurl']) && !empty($_REQUEST['refurl'])) {
        // last accessed page
        $targetPageId= urldecode($_REQUEST['refurl']);
        if (strpos($targetPageId, 'q=') !== false) {
            $urlPos = strpos($targetPageId, 'q=')+2;
            $alias = substr($targetPageId, $urlPos);
            $aliasLength = (strpos($alias, '&'))? strpos($alias, '&'): strlen($alias);
            $alias = substr($alias, 0, $aliasLength);
            $url = $modx->config['base_url'] . $alias;
        } elseif (intval($targetPageId)) {
            $url = $modx->makeUrl($targetPageId);
        } else {
            $url = urldecode($_REQUEST['refurl']);
        }
        $modx->sendRedirect($url);
    }
    else {
        // login home page
        $url = preserveUrl($id);
        $modx->sendRedirect($url);
    }

    return;

?>

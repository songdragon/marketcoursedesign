var MSG_SIGN_ERROR = "您输入的登录信息有误！";
var MSG_EMAIL_NULL ="请输入您的用户名";
var MSG_PWD_NULL = "请输入您的登录密码！";
var MSG_COOKIE_FORBID = "请您打开浏览器的Cookie功能！";
String.prototype.trim=function() 
{ 
	return this.replace(/(\s*$)|(^\s*)/g, ''); 
} 


function isCookieEnabled()
{
	var cookieEnabled=(navigator.cookieEnabled)? true : false;

	if (typeof navigator.cookieEnabled==undefined)
	{ 
		document.cookie='testcookie';
		cookieEnabled=(document.cookie=='testcookie')? true : false;
	}
	
	return cookieEnabled;
}

function txtVerifyCode_keyDown()
{
	if(event.keyCode==13)
	{
		invokeServerLogin();
	}
}

function txtPassword_keyDown(e)
{
    var ev = window.event || e;
    if(ev.keyCode == 13)
    {
        singcheck();
    }
}

function singcheck()
{
    var email = document.getElementById("user_name").value.trim();
    var pwd = document.getElementById("user_pass").value.trim();
    //var onticemsg= document.getElementById('signnotice');  
    
    
       
    var errormsg= document.getElementById("signerror");
   // var errormsg1= document.getElementById("signerror1");
    //onticemsg.style.display='none';
//window.alert(email);
    
    if(!isCookieEnabled())
	{
	    errormsg.style.display = "block";
		return;
	}
    
    if(email == "")
    {
        errormsg.style.display = "block";
        return;
    }
    else if(pwd == "")
    {
        errormsg.style.display = "block";
        return;
    }
    else
    {
        document.getElementById("btnSign").click();
    }
}
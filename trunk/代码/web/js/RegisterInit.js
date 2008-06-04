//var EMAIL_REGULAR_EXPRESSION="(\\w|[-.])+@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
//var EMAIL_REGULAR_EXPRESSION=  "^[_a-zA-Z0-9]+@([_a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,3}$";
  var EMAIL_REGULAR_EXPRESSION=  "^[.\\-_a-zA-Z0-9]+@[\\-_a-zA-Z0-9]+\\.[.a-zA-Z0-9]";

                              
var PASSWORD_REGULAR_EXPRESSION="^\\w{6,20}$";
var NICKNAME_REGULAR_EXPRESSION="^[a-z0-9\\u4e00-\\u9fa5]{2,20}$";
//var NICKNAME_REGULAR_EXPRESSION="^[a-z0-9]{4,20}|[\\u4e00-\\u9fa5]{2,10}$";
var VERIFY_CODE_EXPRESSION="^\\w{4}$";




var MSG_EMIAL_NULL = "此项为必填项，请输入您的Email地址。";
var MSG_EMAIL_FORMAT_ERROR="您设置的Email格式不正确。<br>请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。";
var MSG_EMAIL_USED="您设置的Email地址已存在，请选择0另一个Email地址。";

var MSG_NICKNAME_NULL = "此项为必填项，请输入您的昵称。";
var MSG_NICKNAME_FORMAT_ERROR="您输入的昵称有误，请重新输入。<br>您的昵称可以由小写英文字母,中文、数字组成，长度4－20位。";
var MSG_NICKNAME_USED="该昵称已被使用，请重新输入。";

var MSG_PASSWORD_NULL = "此项为必填项，请设置您的密码。";
var MSG_PASSWORD_FORMAT_ERROR="您设置的密码有误，请重新输入。<br>您的密码可以由大小写英文字母、数字组成，长度6－20位。";

var MSG_PASSWORD_NOT_IDENTICAL="两次密码输入的不一致，请重新输入。";

var MSG_VERIFYCODE_NULL = "此项为必填项，请输入验证码。";
var MSG_VERIFYCODE_ERROR="您输入的验证码不正确，请重新输入。";
var MSG_VERIFY_CODE_FORMAT_ERROR="四位数字";

var MSG_COOKIE_DISABLED="注册之前请您先打开浏览器的Cookie功能。";


String.prototype.trim=function() 
{ 
	return this.replace(/(\s*$)|(^\s*)/g, ''); 
} 


function requireFieldValid(controlToValidID,msgSpanID,errorMessage)
{
    var objControlToValid=document.getElementById(controlToValidID);
    var objSpan=document.getElementById(msgSpanID);
    var objMsgSpan = document.getElementById(msgSpanID+"1");
    var objnullSpan = document.getElementById(msgSpanID+"0");
    var objserver = document.getElementById(msgSpanID+"2");
    var isValid=objControlToValid.value.trim()!='';
    //objMsgSpan.innerHTML=isValid?'':errorMessage;
    if(!isValid)
    {
        objSpan.style.display = "none";
        objnullSpan.style.display ="block";
        objMsgSpan.style.display ="none";
        if(objserver != null)
        {
            objserver.style.display ="none";
        }
    }
    else
    {
        objSpan.style.display = "block";
        objnullSpan.style.display ="none";
        objMsgSpan.style.display ="none";
        if(objserver != null)
        {
            objserver.style.display ="none";
        }
    }
    return isValid;
}

function compareFieldValid(controlToValidID,compareToValidID,msgSpanID)
{
	var objControlToValid=document.getElementById(controlToValidID);
	var objCompareToValid=document.getElementById(compareToValidID);
	var objSpan=document.getElementById(msgSpanID);
	var objMsgSpan=document.getElementById(msgSpanID+"1");
	var objnullSpan = document.getElementById(msgSpanID+"0");
	var isValid=objControlToValid.value.trim()==objCompareToValid.value.trim();
    //objMsgSpan.innerHTML=isValid? '' : errorMessage;
    if(!isValid)
    {
        objSpan.style.display = "none";
        objnullSpan.style.display ="none";
        objMsgSpan.style.display ="block";
    }
    else
    {
        objSpan.style.display = "block";
        objnullSpan.style.display ="none";
        objMsgSpan.style.display ="none";
    }
    return isValid;
}

function regularExpressionValid(controlToValidID,validationExpression,msgSpanID)
{
    var objRegExp = new RegExp(validationExpression,"g");
    var objControlToValid=document.getElementById(controlToValidID);
    var objSpan=document.getElementById(msgSpanID);
	var objMsgSpan=document.getElementById(msgSpanID+"1");
    var objnullSpan = document.getElementById(msgSpanID+"0");
    var objserver = document.getElementById(msgSpanID+"2");
    var isValid=objRegExp.test(objControlToValid.value);
    //objMsgSpan.innerHTML=isValid? '' : errorMessage;
    if(!isValid)
    {
        objSpan.style.display = "none";
        objnullSpan.style.display ="none";
        objMsgSpan.style.display ="block";
        if(objserver != null)
        {
            objserver.style.display ="none";
        }
    }
    else
    {
        objSpan.style.display = "block";
        objnullSpan.style.display ="none";
        objMsgSpan.style.display ="none";
        if(objserver != null)
        {
            objserver.style.display ="none";
        }
    }
    return isValid;
}





function txtEmail_check()
{
    var validnull = requireFieldValid('txtEmail','emailValidMsg');
    if(!validnull)
        return validnull;
    var validregular = regularExpressionValid('txtEmail',EMAIL_REGULAR_EXPRESSION,'emailValidMsg')
    if(!validregular)
        return validregular;
    var emailmsg = document.getElementById("emailValidMsg");
    var emailformat = document.getElementById("emailValidMsg1");
    var email = document.getElementById("txtEmail").value.trim();
    if(email.length >=40)
    {
        emailmsg.style.display = "none";
        emailformat.style.display = "block";
    }
    var valideamil = EmailCheck();
    if(!valideamil)
        return valideamil;
        
    return true;
	//return requireFieldValid('txtEmail','emailValidMsg') && regularExpressionValid('txtEmail',EMAIL_REGULAR_EXPRESSION,'emailValidMsg',MSG_EMAIL_FORMAT_ERROR);
}

String.prototype.getRealLength=function(){return this.replace(/[^\x00-\xff]/g,"aa").length;};

function txtNickName_check()
{
    var validnull = requireFieldValid('txtNickName','nickNameValidMsg');
    if(!validnull)
        return validnull;
    var validregular = regularExpressionValid('txtNickName',NICKNAME_REGULAR_EXPRESSION,'nickNameValidMsg')
    if(!validregular)
        return validregular;
    
    var verifymsg  = document.getElementById("nickNameValidMsg");
    var verifyerror= document.getElementById("nickNameValidMsg2");
    var verifyclienterror = document.getElementById("nickNameValidMsg1");    
    var nicknamelen = document.getElementById('txtNickName').value.trim().getRealLength();
    
    if(verifyerror != null)
    {
        verifyerror.style.display = "none";
    }
    if(nicknamelen < 4 || nicknamelen >20)
    {
        verifyclienterror.style.display ="block";
        verifymsg.style.display = "none";
        return false;
    }
    
    var validnickname = NickNameCheck();
    if(!validnickname)
        return validnickname;
        
    return true;
	//return requireFieldValid('txtNickName','nickNameMsg') && regularExpressionValid('txtNickName',NICKNAME_REGULAR_EXPRESSION,'nickNameValidMsg',MSG_NICKNAME_FORMAT_ERROR);
}
function txtPassword_check()
{
    var validnull = requireFieldValid('txtPassword','passwordValidMsg');
    if(!validnull)
        return validnull;
    var validregular = regularExpressionValid('txtPassword',PASSWORD_REGULAR_EXPRESSION,'passwordValidMsg')
    if(!validregular)
        return validregular;
        
    return true;
	//return requireFieldValid('txtPassword','passwordValidMsg') && regularExpressionValid('txtPassword',PASSWORD_REGULAR_EXPRESSION,'passwordValidMsg',MSG_PASSWORD_FORMAT_ERROR); 
}
function txtRepeatPass_check()
{
    var validnull = requireFieldValid('txtRepeatPass','repeatPassValidMsg');
    if(!validnull)
        return validnull;
    var validregular = compareFieldValid('txtRepeatPass','txtPassword','repeatPassValidMsg')
    if(!validregular)
        return validregular;
        
    return true;
	//return requireFieldValid('txtRepeatPass','repeatPassValidMsg') && compareFieldValid('txtRepeatPass','txtPassword','repeatPassValidMsg',MSG_PASSWORD_NOT_IDENTICAL);
}
function txtVerifyCode_check()
{
//    var validnull = requireFieldValid('txtVerifyCode','verifyCodeValidMsg');
//    if(!validnull)
//        return validnull;
//    var validregular = regularExpressionValid('txtVerifyCode',VERIFY_CODE_EXPRESSION,'verifyCodeValidMsg')
//    if(!validregular)
//        return validregular;
        
    var verifymsg  = document.getElementById("verifyCodeValidMsg");
    var verifyerror= document.getElementById("verifyCodeValidMsgError");
    var verifyclienterror = document.getElementById("verifyerrorclient");
    var val = document.getElementById("txtVerifyCode").value.trim();
    if(verifyerror != null)
    {
        verifyerror.style.display ="none";
    }
    if(val == "" || val.length != 4)
    {
        if(verifymsg != null)
        {
            verifymsg.style.display = "none";
        }
        verifyclienterror.style.display = "block";
        return false;
    }
    if(verifymsg != null)
    {
        verifymsg.style.display = "block";
    } 
    verifyclienterror.style.display = "none";
    
    var valaj = ShowCodeServerCheck();
    if(!valaj)
        return valaj;
    return true;
	//return requireFieldValid('txtVerifyCode','verifyCodeValidMsg') && regularExpressionValid('txtVerifyCode',VERIFY_CODE_EXPRESSION,'verifyCodeValidMsg',MSG_VERIFY_CODE_FORMAT_ERROR);
}

var repeateList="";

function receiveFromServer(sender,data)
{
	switch(requestData(data,"code"))
	{
		case "11":
			document.getElementById("nickNameValidMsg").innerHTML=MSG_NICKNAME_USED;
			document.getElementById("emailValidMsg").innerHTML=MSG_EMAIL_USED;
			break;
		case "10":
			document.getElementById("nickNameValidMsg").innerHTML=MSG_NICKNAME_USED;
			break;
		case "1":
			document.getElementById("emailValidMsg").innerHTML=MSG_EMAIL_USED;
			break;
		case "0":
			document.getElementById("btnRegister").click();
			break;
		case "-1":
			break;
		case "-2":
			document.getElementById("verifyCodeValidMsg").innerHTML=MSG_VERIFYCODE_ERROR;
		default:
			break;
	}	
}

function btnCheckLogin_Click()
{
    var emailValid=txtEmail_check();
	var nicknameValid=txtNickName_check();
	var passwordValid=txtPassword_check();
	var repeatpassValid=txtRepeatPass_check();
	var verifyCodeValid=txtVerifyCode_check();
	//var codeservercheck = ShowCodeServerCheck();
 
	if(emailValid && nicknameValid && passwordValid &&  repeatpassValid && verifyCodeValid)
	{
	    document.getElementById("btnRegister").click();
	    return true;
	}
	else
	    return false;
	
}

function invokeServerRegRepeatCheck()
{
	var emailValid=txtEmail_check();
	var nicknameValid=txtNickName_check();
	var passwordValid=txtPassword_check();
	var repeatpassValid=txtRepeatPass_check();
	var verifyCodeValid=txtVerifyCode_check();

	if(emailValid && nicknameValid && passwordValid &&  repeatpassValid && verifyCodeValid) 
	{
		var nickname=document.getElementById("txtNickName").value.trim();
		var email=document.getElementById("txtEmail").value.trim();
		var varifycode=document.getElementById("txtVerifyCode").value.trim();
		var sendData="email----"+email+"____"+"nickname----"+nickname+"____"+"verifycode----"+varifycode;
		invokeServer("imgRegister",sendData);	
	}
}


function txtVerifyCode_keyDown(e)
{
    var ck = document.getElementById("ckCheck");
    var ev = window.event || e;
   
	if((ev.keyCode==13)&&ck.checked)
	{
	   	btnCheckLogin_Click();
	}
}

function register2_keydown(e)
{
    var ev = window.event || e;
    if(ev.keyCode==13)
    {
      return  register2_validate();
    }
}

function register1_keydown(e)
{
    var ev = window.event || e;
    if(ev.keyCode==13)
    {
         return  register1_validate();
    }
}

function verifyemail2_keydown(e)
{
    var ev = window.event || e;
    if(ev.keyCode==13)
    {
       return  register1_validate();
    }
}


function register1_validate()
{
    var obj = document.getElementById("validatecode");
    var codenull = document.getElementById("register1_validatenull");
    var codeformat = document.getElementById("register1_validateformat");
    var codemsg = document.getElementById("lblMsg");
    if(codemsg!=null)
    {
        codemsg.style.display = "none";
    }
    var code = obj.value.trim();
    if(code == "")
    {
        codenull.style.display = "block";
        codeformat.style.display = "none";
        return false;
    }
    else if(code.length != 8)
    {
        codenull.style.display = "none";
        codeformat.style.display = "block";
        return false ;
    }
    else
    {
         document.getElementById("btnregister1").click();
         return false;
    }
}

function register2_validate()
{
    var email = document.getElementById("txtEmail").value.trim();
    var emailnull = document.getElementById("register2null");
    var emailformat = document.getElementById("register2format");
    var emailmsg = document.getElementById("register2msg");
    var emailrepeat = document.getElementById("register2repeat");
    
    
    var objRegExp = new RegExp(EMAIL_REGULAR_EXPRESSION,"g");
    var isValid=objRegExp.test(email);
    
    if(email == "")
    {
        emailnull.style.display = "block";
        emailformat.style.display = "none";
        if(emailmsg != null)
        {
            emailmsg.style.display = "none";
        }
        if(emailrepeat != null)
        {
            emailrepeat.style.display = "none";
        }
        return false ;
    }
    else if(!isValid)
    {
        emailnull.style.display = "none";
        emailformat.style.display = "block";
        if(emailmsg != null)
        {
            emailmsg.style.display = "none";
        }
        if(emailrepeat != null)
        {
            emailrepeat.style.display = "none";
        }
        return false;
    }
    else
    {
        document.getElementById("btnRegister2").click();
        return false;
    }
}

function DrawImage(img){ 
var width=108;
var height=129;
var image=new Image(); 
image.src=img.src; 
	if(image.width>0 && image.height>0)
	{
	  if(image.width!=width)
	  {
	  	rate=image.height/image.width;
	  	newHeight=rate*width;
	  	img.width=width;
	  	img.height=newHeight;
	  } 
	}
	if(img.height>height)
	{
		rate=image.width/image.height;
		newWidth=rate*height;
		img.height=height;
		img.width=newWidth;
	}
}


function isCookieEnabled()
{
	var cookieEnabled=(navigator.cookieEnabled)? true : false;

	if (typeof navigator.cookieEnabled==undefined)
	{ 
		document.cookie='testcookie';
		cookieEnabled=(document.cookie=='testcookie')? true : false;
	}
	
	var msgcookie = document.getElementById('lblCookie');
	if(cookieEnabled)
	{
	     msgcookie.innerHTML='';
	     return true;
	}
	else
	{
	    msgcookie.innerHTML='注册之前请您先打开浏览器的Cookie功能!';
	    return false;
	}
}

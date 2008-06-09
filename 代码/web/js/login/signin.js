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
   var errormsg1= document.getElementById("signerror1");
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
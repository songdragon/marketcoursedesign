// JScript 文件

var xmlReq = false;

function createXMLHttpRequest() 
{
     if(window.XMLHttpRequest)
    {
        xmlReq = new XMLHttpRequest();
        if(xmlReq.overrideMimeType)  xmlReq.overrideMimeType('text/xml');
    }
    else if(window.ActiveXObject)
    { 
       try
       {
            xmlReq = new ActiveXObject('Msxml2.XMLHTTP');
       }
       catch(e)
       {
          try
          {
              xmlReq = new ActiveXObject('Microsoft.XMLHTTP');
          }
          catch(e){}
        }
    }
}


 var num;

function changeImage()
{
    createXMLHttpRequest();
   
     num = Math.random();
     num = Math.round(num*10000000);
    var url = 'ShowRdmChange.aspx?t='+num;
    
    xmlReq.open("GET", url, false);   
    xmlReq.send(null);
    
    var img = document.getElementById("imgshowcode");
    img.src = 'ShowRdmDgtGif.aspx?t='+num;

}

function updateImage()
{
    
    if(xmlReq.readyState == 4  && xmlReq.status==200)
    {
        var img = document.getElementById("imgshowcode");
        img.src = 'ShowRdmDgtGif.aspx?t='+num;
    }
}

var nicknamecheck = false;
function NickNameCheck()
{
    createXMLHttpRequest();
    var nickname=document.getElementById("txtNickName").value
    var url = 'Ajax_NickNameCheck.aspx?nickname='+nickname;
    xmlReq.open("GET",url,false);
    //xmlReq.onreadystatechange = NickNameCheckMsg;
    xmlReq.send(null);
    var retval ;
    var namemsg = document.getElementById("nickNameValidMsg");
    var namenull = document.getElementById("nickNameValidMsg0");
    var nameformat = document.getElementById("nickNameValidMsg1");
    var nameexist = document.getElementById("nickNameValidMsg2");
    retval = xmlReq.responseText;
    if(retval == "100")
    {
        nicknamecheck = true;
    }
    else if(retval == "-1")
    {
        namemsg.style.display = "none";
        namenull.style.display = "none";
        nameformat.style.display = "none";
        nameexist.style.display = "block";
        nicknamecheck = false;
    }
    else
    {
        alert("昵称验证出错！");
        nicknamecheck = false;
    }
    
    return nicknamecheck;
}


var emailcheck = false;
function EmailCheck()
{
    createXMLHttpRequest();
    var email = document.getElementById("txtEmail").value
    var url = 'Ajax_EmailCheck.aspx?email='+email;
    xmlReq.open("GET",url,false);
    //xmlReq.onreadystatechange = EmailCheckMsg;
    xmlReq.send(null);
    var retval ;
    var emailmsg = document.getElementById("emailValidMsg");
    var emailnull = document.getElementById("emailValidMsg0");
    var emailformat = document.getElementById("emailValidMsg1");
    var emailexist = document.getElementById("emailValidMsg2");
    retval = xmlReq.responseText;
    if(retval == "100")
    {
        emailcheck = true;
    }
    else if(retval == "-1")
    {
        emailmsg.style.display = "none";
        emailnull.style.display = "none";
        emailformat.style.display = "none";
        emailexist.style.display = "block";
        emailcheck = false;
    }
    else
    {
        alert("邮箱验证出错！");
        emailcheck = false;
    }
    
    return emailcheck;
}


var codecheck = false;
function ShowCodeServerCheck()
{
    createXMLHttpRequest();
    var code =  document.getElementById("txtVerifyCode").value;
    var url = 'ShowRdmCheck.aspx?c='+code;
    xmlReq.open("GET", url, false);
    //xmlReq.onreadystatechange = ShowCodeCheckMsg;
    xmlReq.send(null);
    
    var retval;
    var verifymsg  = document.getElementById("verifyCodeValidMsg");
    var verifyerror= document.getElementById("verifyCodeValidMsgError");
    var verifyclienterror = document.getElementById("verifyerrorclient");
    retval = xmlReq.responseText;
    if(retval == "1")
    {
        verifymsg.style.display="block";
        verifyclienterror.style.display ="none";
        codecheck = true;
    }
    else
    {
        verifymsg.style.display="none";
        verifyclienterror.style.display ="block";
        codecheck = false;
    }
    
    return codecheck;
}
 
    



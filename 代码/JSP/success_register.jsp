<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�û�ע��</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="css/login.css" type=text/css rel=stylesheet>
<SCRIPT src="js/register/AjaxApp.js" type=text/javascript></SCRIPT>

<SCRIPT src="js/register/RegisterInit.js" 
type=text/javascript></SCRIPT>

<!--<SCRIPT src="js/register/trace.js" type=text/javascript></SCRIPT>-->
</head>

<body>
<BODY onload=javascript:isCookieEnabled()>
<FORM id=form1 name=form1 action=success.jsp method=post>
<DIV><INPUT id=__EVENTTARGET type=hidden name=__EVENTTARGET> <INPUT 
id=__EVENTARGUMENT type=hidden name=__EVENTARGUMENT> <INPUT id=__LASTFOCUS 
type=hidden name=__LASTFOCUS> <INPUT id=__VIEWSTATE type=hidden 
value=/wEPDwUKMjA3NjExNTE2NWRk name=__VIEWSTATE> </DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</SCRIPT>

<SCRIPT src="" type=text/javascript></SCRIPT>

<SCRIPT type=text/javascript>
//<![CDATA[
function sS(a){WebForm_DoCallback('__Page',a,rS,null,null,false);}function invokeServer(s,e){var a=s+'____'+e;sS(a);}
 function rS(d){receiveFromServer(requestData(d,'c'),d);}
 function requestData(d,k){var t=k+'----';s=d;var p=s.indexOf(t);if(p<0) return '';p+=t.length;var q=s.indexOf('____',p);if(q<0) return s.substr(p);return s.substring(p,q);}
//]]>
</SCRIPT>

<SCRIPT src="�û�ע��%20-%20������_files/WebResource.axd" 
type=text/javascript></SCRIPT>
<!--ҳͷ-->
<DIV class=login_top><IMG 
class=logo src="images/logo.jpg" width=100px heigth=120px>
<DIV class=new_help><B>[���û�ע��]</B></DIV></DIV>
<DIV class=login_step>ע�Ჽ��:��1.��д��Ϣ��&gt;��<SPAN 
class=red_bold>2.ע��ɹ�</SPAN></DIV>
<DIV class=fill_message>
ע��ɹ�������<a href=index.jsp>�˴�</a>������ҳ
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[

WebForm_InitCallback();WebForm_AutoFocus('txtEmail');//]]>
</SCRIPT>
</FORM>
<SCRIPT language=javascript type=text/javascript>
        function showRegister()
        {
            var ck = document.getElementById("ckCheck");
            var btn = document.getElementById("validatemsg");
            if(ck.checked )
            {
                btn.style.display = "block";
             }
            else
                btn.style.display = "none";
        }
        
        
        
    </SCRIPT>

<SCRIPT language=JavaScript src="js/register/o_code.js"></SCRIPT>
</body>
</html>

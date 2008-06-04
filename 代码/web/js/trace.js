function Guid()
{
  var STRWORD="0123456789abcdef";
  var rnd = function() 
  {
    rnd.seed =(rnd.seed*9301+49297)%233280;
    return rnd.seed/(233280.0);
  }

  rnd.today = new Date();
  rnd.seed = rnd.today.getTime();

  var rand = function(number) 
  {
    return Math.ceil(rnd()*number);
  }

  this.NewGuid = function() 
  {
    var strTmp = '';
    for(var i = 0; i <36; i++) 
        strTmp += STRWORD.charAt(rand(16) - 1); 
    return strTmp;
  }
}


var strCookie=document.cookie;
var guid=new Guid();
if(strCookie.indexOf('__trace_id')<0)
{
    var expires=new Date();
    expires.setMinutes(expires.getMinutes()+30);
    document.cookie='__trace_id='+guid.NewGuid()+';expires='+expires.toUTCString()+';domain=dangdang.com';
}

if(strCookie.indexOf('__permanent_id')<0)
{
    var expires=new Date(2020,1,1);
    document.cookie='__permanent_id='+guid.NewGuid()+';expires='+expires.toUTCString()+';domain=dangdang.com';
}
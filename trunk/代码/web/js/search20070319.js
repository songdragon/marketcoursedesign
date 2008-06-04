function cnlength(str){
    return str.replace(/[^\x00-\xff]/gi,'oo').length;
}

function validatekey(objfrm){
	if (objfrm.key.value==""){
		alert("ÇëÌîÐ´ËÑË÷´Ê£¡");
		objfrm.key.focus();
		return false;
	} else
	{
	    if(cnlength(objfrm.key.value)<2){
	        alert("ËÑË÷´Ê¹ý¶Ì£¬ÇëÖØÐÂÌîÐ´£¡");
		    objfrm.key.focus();
		    return false;
	    } else
	    if(cnlength(objfrm.key.value)>50){
	        alert("ËÑË÷´Ê¹ý³¤£¬ÇëÖØÐÂÌîÐ´£¡");
		    objfrm.key.focus();
		    return false;
	    }
	}
	if(window.location.host.toLowerCase().indexOf("search.dangdang.com")!=-1)
	{
	  try{ objfrm.SearchFromTop.value=2; } catch(err){}
	}
	return true;
}

function sortselect(sortid,obj){
    showtopsearch(sortid,obj);

	var objfrm=document.searchform;
    if(objfrm.key.value != "")
    {
	    if(!validatekey(objfrm))
	        return false;
			if(sortid=="01"){
				objfrm.action=""
			}
            objfrm.submit();
    }
}

function showtopsearch(sortid,obj)
{    
    var sortcn=obj.innerHTML;        
	var objfrm=document.searchform;
	if(objfrm.key.value == "")
	    objfrm.key.focus();
	
	objfrm.search_btn_top.value="ÔÚ"+sortcn+"ÖÐËÑ";
	objfrm.catalog.value=sortid;
	
    if(sortid.length>2 && sortid!="mall")
        sortid=sortid.substr(0,2);

    var sortarr=["","01","03","05","07","mall",""];
    sortarr[6]=document.getElementById("catalognew").value;
    if(sortarr[6].length>2 && sortarr[6]!="mall")
        sortarr[6]=sortarr[6].substr(0,2);
    for(var i=0;i<sortarr.length;i++){    
        if(document.getElementById("a_sort"+sortarr[i]).innerHTML.length<=2)
            document.getElementById("li_sort"+sortarr[i]).className="";
        else
            document.getElementById("li_sort"+sortarr[i]).className="sort";
    }
    var liclassName="add_bj_2";
    if(sortcn.length>2)
        liclassName="sort add_bj";
    document.getElementById("li_sort"+sortid).className=liclassName;
    
	objfrm.key.className="search_text";
	if(sortid=="01" || sortid=="05"||sortid=="07") objfrm.key.className="search_text reduce_w2";
	if(sortid=="03") objfrm.key.className="search_text reduce_w";
    var uiarr=["01","03","05","07"];
    for(var i=0;i<uiarr.length;i++){    
    document.getElementById("div"+uiarr[i]).style.display=(sortid==uiarr[i]) ? "" : "none";	    
    }
}


function selectradio(obj)
{
    obj.parentNode.firstChild.checked='checked';
}

function showpage(vbook,vmusic,vmovie)
{
    var inputkey=document.searchform;
    inputkey.key.focus();
	var objfrm=document.searchform;
    var scatalog=objfrm.catalog.value;
    var a_sort=document.getElementById("a_sort"+scatalog);
    if(scatalog.length>2 && scatalog!="mall")
        a_sort=document.getElementById("a_sort"+scatalog.substr(0,2));
    if(a_sort != null) showtopsearch(scatalog,a_sort);

    document.searchform.elements["selbook"+vbook].checked='checked';
    document.searchform.elements["selmusic"+vmusic].checked='checked';
    document.searchform.elements["selmovie"+vmovie].checked='checked';
}

function gotosearch(){
	var objfrm=document.searchform;

	if(objfrm.catalog.value=="mall")
	{
		window.location="#"+objfrm.key.value;
		return false;
	}
	
	if(objfrm.catalog.value=="01")
	{
		objfrm.action=""
	}
	
	//set key
	if(objfrm.catalog.value==""){
	    objfrm.key1.value='';
	    objfrm.key2.value='';
	    objfrm.key3.value='';
	    objfrm.key4.value='';
	}
	
	var sel=null;
	switch(objfrm.catalog.value)
	{
	    case "":
            objfrm.key1.value='';
            objfrm.key2.value='';
            objfrm.key3.value='';
            objfrm.key4.value='';
	        break;
	    case "01":
	        sel=objfrm.selbook;
	        break;
	    case "03":
	        sel=objfrm.selmusic;
	        break;
	    case "05":
	        sel=objfrm.selmovie;
	        break;
	}
	
	if(sel!=null)
	{
	    for(i=0;i<sel.length;i++){
            v=sel[i].value;
            if(sel[i].checked){
                if(v!='0'){
                    eval("objfrm.key"+v+".value=objfrm.key.value");
                    objfrm.key.value='';
                }
            }else{
                if(v!='0') eval("objfrm.key"+v+".value=''");
            }
        }
    }
	return true;
}
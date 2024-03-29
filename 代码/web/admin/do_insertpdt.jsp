<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="shop.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="Pragma" CONNECT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONNECT="no-cache">
<META HTTP-EQUIV="Expires" CONNECT="0">


<title>checklogin</title>
</head>
<div id=oDiv>2秒后自动返回</div>
<script language="javascript">
var i=2;
function timeReload(){
     oDiv.innerText="2秒后自动返回，还剩"+i+"秒";
     i--;
}
setInterval("timeReload()",1000);
</script>
<%
//公共属性
String pdtid=(String)session.getAttribute("pdtid");
String name=request.getParameter("name");
String typeid=(String)session.getAttribute("typeid");
String countstr=request.getParameter("count");
int count=java.lang.Integer.parseInt(countstr);
String opricestr=request.getParameter("oprice");
float oprice=java.lang.Float.parseFloat(opricestr);    
String image=request.getParameter("image");
String discountstr=request.getParameter("discount");
float discount=java.lang.Float.parseFloat(discountstr);
String discrib=request.getParameter("discrib");
String inpricestr=request.getParameter("inprice");
float inprice=java.lang.Float.parseFloat(inpricestr);

int info=0;

if(("1").equals(typeid)){
	//book单独属性
	String isbn=request.getParameter("isbn");
	String publisher=request.getParameter("publisher");
	String author=request.getParameter("author");
	String size=request.getParameter("size");
	if(("0").equals(size))
		size="16开";
	else if(("1").equals(size))
		size="32开";
	else if(("2").equals(size))
		size="大32开";

	//设置属性
	BookOperator bo=new BookOperator();

	bo.setProducts_id(pdtid);
	bo.setProductsname(name);
	bo.setType_id(typeid);
	bo.setQuantity(count);
	bo.setPrice(oprice);
	bo.setImage(image);
	bo.setDiscount(discount);
	bo.setDiscription(discrib);
	bo.setInprice(inprice);

	bo.setIsbn(isbn);
	bo.setPublisher(publisher);
	bo.setAuthor(author);
	bo.setBooksize(size);

	info=bo.setPro(bo);

}
else if(("2").equals(typeid)){
	//makeup单独属性
	String brand=request.getParameter("brand");
	String isbn=request.getParameter("isbn");
	String mtype=request.getParameter("mtype");
	String mfunction=request.getParameter("mfunction");
	String capacity=request.getParameter("capacity");
	String maker=request.getParameter("maker");
	String outdate=request.getParameter("outdate");
	String shelflife=request.getParameter("shelflife");
	
	//设置属性
	MakeupOperator mo=new MakeupOperator();
	mo.setProducts_id(pdtid);
	mo.setProductsname(name);
	mo.setType_id(typeid);
	mo.setQuantity(count);
	mo.setPrice(oprice);
	mo.setImage(image);
	mo.setDiscount(discount);
	mo.setDiscription(discrib);
	mo.setInprice(inprice);
	
	mo.setBrand(brand);
	mo.setIsbn(isbn);
	mo.setMtype(mtype);
	mo.setMfunction(mfunction);
	mo.setCapacity(capacity);
	mo.setMaker(maker);
	mo.setOutdate(outdate);
	mo.setShelflife(shelflife);
	
	info=mo.setPro(mo);

}
else if(("3").equals(typeid)){
	//dress单独属性
	String brand=request.getParameter("brand");
	String dsize=request.getParameter("dsize");
	String stype=request.getParameter("stype");
	String isbn=request.getParameter("isbn");
	String color=request.getParameter("color");
	String sex=request.getParameter("sex");
	if(("0").equals(sex))
		sex="男";
	else if(("1").equals(sex))
		sex="女";
	else if(("2").equals(sex))
		sex="均可";
	String material=request.getParameter("material");
	String season=request.getParameter("season");
	
	//设置属性
	DressOperator Do=new DressOperator();
	Do.setProducts_id(pdtid);
	Do.setProductsname(name);
	Do.setType_id(typeid);
	Do.setQuantity(count);
	Do.setPrice(oprice);
	Do.setImage(image);
	Do.setDiscount(discount);
	Do.setDiscription(discrib);
	Do.setInprice(inprice);
	
	Do.setBrand(brand);
	Do.setDisze(dsize);
	Do.setStyle(stype);
	Do.setIsbn(isbn);
	Do.setColor(color);
	Do.setSex(sex);
	Do.setMaterial(material);
	Do.setSeason(season);
	
	info=Do.setPro(Do);
}
else if(("4").equals(typeid)){
	//computer单独属性
	String cpu=request.getParameter("cpu");
	String hard=request.getParameter("hard");
	String ramtype=request.getParameter("ramtype");
	String ramsize=request.getParameter("ramsize");
	String screen=request.getParameter("screen");
	String brand=request.getParameter("brand");
	String weight=request.getParameter("weight");
	String speed=request.getParameter("speed");
	String color=request.getParameter("color");
	String type=request.getParameter("type");
	if(("0").equals(type))
		type="笔记本";
	else if(("1").equals(type))
		type="台式机";
	
	//设置属性
	ComputerOperator co=new ComputerOperator();
	co.setProducts_id(pdtid);
	co.setProductsname(name);
	co.setType_id(typeid);
	co.setQuantity(count);
	co.setPrice(oprice);
	co.setImage(image);
	co.setDiscount(discount);
	co.setDiscription(discrib);
	co.setInprice(inprice);
	
	co.setCpu(cpu);
	co.setHard(hard);
	co.setRamtype(ramtype);
	co.setRamsize(ramsize);
	co.setScreen(screen);
	co.setBrand(brand);
	co.setWeight(weight);
	co.setSpeed(speed);
	co.setColor(color);
	co.setType(type);
	
	info=co.setPro(co);
}
else if(("5").equals(typeid)){
	//mobile单独属性
	String brand=request.getParameter("brand");
	String screen=request.getParameter("screen");
	String net=request.getParameter("net");
	String appear=request.getParameter("appear");
	String scolor=request.getParameter("scolor");
	String dsport=request.getParameter("dsport");
	String camera=request.getParameter("camera");
	String ontime=request.getParameter("ontime");
	String mptype=request.getParameter("mptype");
	String screentype=request.getParameter("screentype");
	String storage=request.getParameter("storage");
	String color=request.getParameter("color");
	
	//设置属性
	MobileOperator mbo=new MobileOperator();
	mbo.setProducts_id(pdtid);
	mbo.setProductsname(name);
	mbo.setType_id(typeid);
	mbo.setQuantity(count);
	mbo.setPrice(oprice);
	mbo.setImage(image);
	mbo.setDiscount(discount);
	mbo.setDiscription(discrib);
	mbo.setInprice(inprice);
	
	mbo.setBrand(brand);
	mbo.setScreen(screen);
	mbo.setNettype(net);
	mbo.setAppearance(appear);
	mbo.setScreencolor(scolor);
	mbo.setDatatransport(dsport);
	mbo.setCamera(camera);
	mbo.setOntime(ontime);
	mbo.setMptype(mptype);
	mbo.setScreentype(screentype);
	mbo.setStorage(storage);
	mbo.setColor(color);
	
	info=mbo.setPro(mbo);
}


if(info!=0){
	out.println("<h3 align='center'>添加成功！</h3>");
	response.setHeader("Refresh", "2; URL=insertbook.jsp");
}
else{
	out.println("<h3 align='center'>添加失败！</h3>");
	response.setHeader("Refresh", "2; URL=insertbook.jsp");
}
%>


</html>
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
<div id=oDiv>2Ãëºó×Ô¶¯·µ»Ø</div>
<script language="javascript">
var i=2;
function timeReload(){
     oDiv.innerText="2Ãëºó×Ô¶¯·µ»Ø£¬»¹Ê£"+i+"Ãë";
     i--;
}
setInterval("timeReload()",1000);
</script>
<%
//¹«¹²ÊôÐÔ
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
	//bookµ¥¶ÀÊôÐÔ
	String isbn=request.getParameter("isbn");
	String publisher=request.getParameter("publisher");
	String author=request.getParameter("author");
	String size=request.getParameter("size");
	if(("0").equals(size))
		size="16¿ª";
	else if(("1").equals(size))
		size="32¿ª";
	else if(("2").equals(size))
		size="´ó32¿ª";
	//====================================================================²âÊÔ
	out.println("pdtid="+pdtid+" name="+name+" typeid="+typeid+" count="+count+" oprice="
			+oprice+" image="+image+" discount="+discount+" discrib="+discrib+" inprice="+inprice+
			" isbn="+isbn+" publisher="+publisher+" author="+author+" size="+size);

	//ÉèÖÃÊôÐÔ
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
	//makeupµ¥¶ÀÊôÐÔ
	String brand=request.getParameter("brand");
	String isbn=request.getParameter("isbn");
	String mtype=request.getParameter("mtype");
	String function=request.getParameter("function");
	String capacity=request.getParameter("capacity");
	String maker=request.getParameter("maker");
	String outdate=request.getParameter("outdate");
	String shelflife=request.getParameter("shelflife");
	
	//ÉèÖÃÊôÐÔ
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
	mo.setMfunction(function);
	mo.setCapacity(capacity);
	mo.setMaker(maker);
	mo.setOutdate(outdate);
	mo.setShelflife(shelflife);
	
	info=mo.setPro(mo);
	//====================================================²âÊÔ
	out.println("pdtid="+pdtid+" name="+name+" typeid="+typeid+" count="+count+" oprice="
			+oprice+" image="+image+" discount="+discount+" discrib="+discrib+" inprice="+inprice+
			" brand="+brand+" isbn="+isbn+" mtype="+mtype+" function="+function+
			" capacity="+capacity+" maker="+maker+" outdate="+outdate+" shelflife="+shelflife);
}
else if(("3").equals(typeid)){
	//dressµ¥¶ÀÊôÐÔ
	String brand=request.getParameter("brand");
	String dsize=request.getParameter("dsize");
	String stype=request.getParameter("stype");
	String isbn=request.getParameter("isbn");
	String color=request.getParameter("color");
	String sex=request.getParameter("sex");
	if(("0").equals(sex))
		sex="ÄÐ";
	else if(("1").equals(sex))
		sex="Å®";
	else if(("2").equals(sex))
		sex="¾ù¿É";
	String material=request.getParameter("material");
	String season=request.getParameter("season");
	
	//ÉèÖÃÊôÐÔ
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
	//computerµ¥¶ÀÊôÐÔ
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
		type="±Ê¼Ç±¾";
	else if(("1").equals(type))
		type="Ì¨Ê½»ú";
	
	//ÉèÖÃÊôÐÔ
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
	//mobileµ¥¶ÀÊôÐÔ
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
	
	//ÉèÖÃÊôÐÔ
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
	out.println("<h3 align='center'>Ìí¼Ó³É¹¦£¡</h3>");
	response.setHeader("Refresh", "2; URL=insertbook.jsp");
}
else{
	out.println("<h3 align='center'>Ìí¼ÓÊ§°Ü£¡</h3>");
	response.setHeader("Refresh", "2; URL=insertbook.jsp");
}
%>


</html>
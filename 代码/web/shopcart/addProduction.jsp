<%@page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage=""%>
<%@page import="shopcart.BuyList"%>
<%@page import="java.util.*"%>
<%@page import="shop.*" %>
<%
  request.setCharacterEncoding("gb2312");
  //String name = request.getParameter("name");
  //String price = request.getParameter("price");
  //float rate = Float.parseFloat(request.getParameter("rate"));
  String id=request.getParameter("id");
  Iterator it=BookOperator.getInformation(id);
  InterfaceProducts iBook=(InterfaceProducts)it.next();
  String name=iBook.getProductsname();
  float price=iBook.getPrice();
  float rate=iBook.getDiscount();
  
  //=======================================
  BuyList buyList = new BuyList();
  buyList.id=id;
  buyList.number = 1;
  buyList.rate = rate;
  buyList.price = price;
  buyList.warename = name;
  boolean flag = true;
  //========================================
  List shoplist=null;

if(session.getAttribute("cart")==null){
	shoplist=new ArrayList();

}else{
  shoplist=(List)session.getAttribute("cart");
	for(int i=0;i<shoplist.size();i++){
		BuyList buyitem=(BuyList)shoplist.get(i);
		if(buyitem.id.equals(buyList.id)){
			buyitem.number++;
			shoplist.set(i,buyitem);
			flag=false;

		}
	}
}
if(flag)shoplist.add(buyList);
session.setAttribute("cart",shoplist);
%>
<script language="javascript" type="text/javascript">
window.alert("商品已成功添加到购物车");
window.location.href="../shoppingcart.jsp";
</script>

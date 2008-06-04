function AddToShoppingCart(product_id)

{

         var url=null;

 

         if(product_id==null || product_id<1)

                   url="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx";

         else

                  url="http://shopping.dangdang.com/shoppingcart/shopping_cart_add.aspx?product_ids="+product_id+"&reference_url="+escape(window.location.href);

 

         var popup=window.open(url,"shoppingcart");

         popup.focus()

}


function AddToFavorlist(product_id)

{  

         var url="http://customer.dangdang.com/wishlist/cust_wish_add.aspx?productid="+product_id;

         var popup=window.open(url,"favorlist");

         popup.focus()

}

function AddToShopCart(ProdID,shopid)
{
	var url = "/shoppingcart/addshopping.asp?prodid="+ProdID+"&quantity=1&shopid="+shopid;
	var popup = window.open(url,"shoppingcart","menubar=no,toolbar=yes,location=no,directories=no,status=no,width=760,height=530,left=0,top=0,scrollbars=yes");
	if(ProdID!=-1){
	//window.location.reload();
	}
	return;
}
function setSendMode(a,b,c,d)
{	
	if(a)
		OrderInfo.send_mode[0].disabled = false;
	else
	{
		OrderInfo.send_mode[0].disabled = true;
		//OrderInfo.send_mode[0].checked = false;
	}
	if(b)
		OrderInfo.send_mode[1].disabled = false;
	else
	{
		OrderInfo.send_mode[1].disabled = true;
		//OrderInfo.send_mode[1].checked = false;
	}
	if(c)
		OrderInfo.send_mode[2].disabled = false;
	else
	{
		OrderInfo.send_mode[2].disabled = true;
		//OrderInfo.send_mode[2].checked = false;
	}
	if(d)
		OrderInfo.send_mode[3].disabled = false;
	else
	{
		OrderInfo.send_mode[3].disabled = true;
		//OrderInfo.send_mode[3].checked = false;
	}
}

function setPayMode(a,b,c,d,e,f)
{
	if(a)
		OrderInfo.pay_mode[0].disabled = false;
	else
	{
		OrderInfo.pay_mode[0].disabled = true;
		//OrderInfo.pay_mode[0].checked = false;
	}
	if(b)
		OrderInfo.pay_mode[1].disabled = false;
	else
	{
		OrderInfo.pay_mode[1].disabled = true;
		//OrderInfo.pay_mode[1].checked = false;
	}
	if(c)
		OrderInfo.pay_mode[2].disabled = false;
	else
	{
		OrderInfo.pay_mode[2].disabled = true;
		//OrderInfo.pay_mode[2].checked = false;
	}
	if(d)
		OrderInfo.pay_mode[3].disabled = false;
	else
	{
		OrderInfo.pay_mode[3].disabled = true;
		//OrderInfo.pay_mode[3].checked = false;
	}
	if(e)
		OrderInfo.pay_mode[4].disabled = false;
	else
	{
		OrderInfo.pay_mode[4].disabled = true;
		//OrderInfo.pay_mode[4].checked = false;
	}
	if(f)
		OrderInfo.pay_mode[5].disabled = false;
	else
	{
		OrderInfo.pay_mode[5].disabled = true;
		//OrderInfo.pay_mode[5].checked = false;
	}
}

function getCoupon()
{
	if(OrderInfo.PickCopon.value == 0)
		OrderInfo.Coupon.value = "";
	else
		OrderInfo.Coupon.value = OrderInfo.PickCopon.value;
}

function WriteAddressInfo()
{
	 OrderInfo.ordername.value = getAddressListParam("name");
	 OrderInfo.ordercode.value = getAddressListParam("zip");
	 OrderInfo.orderaddress.value = getAddressListParam("address");
	 OrderInfo.addressid.value = getAddressListParam("id");
	 tel = getAddressListParam("tel");
	 OrderInfo.telhead.value = getTelInfo(tel,1);
	 OrderInfo.telmiddle.value = getTelInfo(tel,2);
	 OrderInfo.teldetail.value = getTelInfo(tel,3);
}

function getAddressListParam(ParamName)
{
	var result,findbegin,findend;
	if(OrderInfo.addresslist.value.indexOf(ParamName+"=") != -1) {
		findbegin = OrderInfo.addresslist.value.indexOf(ParamName)+ParamName.length+1;
		findend = OrderInfo.addresslist.value.indexOf(";",findbegin);
		return OrderInfo.addresslist.value.substring(findbegin,findend);
	}
	return "";
}

function getTelInfo(tel,position)
{
	
	var tmpTel = new Array(3);
	var Tel = new Array(3);
	var i = 0;
	
	tmpTel[0] = "";
	tmpTel[1] = "";
	tmpTel[2] = "";
	
	Tel[0] = "";
	Tel[1] = "";
	Tel[2] = "";

	while(tel.indexOf("-") != -1) {
		tmpTel[i++] = tel.substring(0,tel.indexOf("-"));
		tel = tel.substring(tel.indexOf("-")+1,tel.length);
	}
	tmpTel[i] = tel;
	
	if(tmpTel[0].length > 4) {
		Tel[1] = tmpTel[0];
		Tel[2] = tmpTel[1];
	}
	else {
		Tel[0] = tmpTel[0];
		Tel[1] = tmpTel[1];
		Tel[2] = tmpTel[2];
	}

	switch(position) {
		case 1: 
			return Tel[0];
		case 2:
			return Tel[1];
		case 3:
			return Tel[2];
	}
}


function login()
{
	url = "login.asp";
	popup = window.open(url,"login","menubar=no,toolbar=no,location=no,directories=no,status=no,width=760,height=530,left=0,top=0,scrollbars=yes");
	return;
}

function returnShoppingcart()
{
	url = "shoppingcart.asp";
	popup = window.open(url,"shoppingcart","menubar=no,toolbar=no,location=no,directories=no,status=no,width=760,height=530,left=0,top=0,scrollbars=yes");
	return;
}

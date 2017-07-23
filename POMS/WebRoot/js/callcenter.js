//alert(1);
function validateComplain()
{
    var flag = false;
    if (document.getElementById('area').value.length == 0)
    {
    	alert("请输入地区 !");
    	document.getElementById("area").focus();
    }    	
    else if (document.getElementById("employee_number").value.length == 0)
    {
    	alert("请输入员工编号 !");
    	document.getElementById("employee_number").focus();
    }
    else if (document.getElementById("customer_number").value.length == 0)
    {
    	alert("请输入顾客的编号 !");
    	document.getElementById("customer_number").focus();
    }
    else if (document.getElementById("customer_tel").value.length == 0)
    {
    	alert("请输入顾客手机号码 !");
    	document.getElementById("customer_tel").focus();
    }
    else if (document.getElementById("content_detail").value.length == 0)
    {
    	alert("请输入投诉内容!");
    	document.getElementById("content_detail").focus();
    }
    else 
    {
    	flag = true;
    }
    return flag;
}

function validateAdvice()
{
	var flag = false;
    if (document.getElementById('area').value.length == 0)
    {
    	alert("请输入地区 ! ");
    	document.getElementById("area").focus();
    }    	
    else if (document.getElementById("customer_number").value.length == 0)
    {
    	alert("请输入顾客的编号 !");
    	document.getElementById("customer_number").focus();
    }
    else if (document.getElementById("customer_tel").value.length == 0)
    {
    	alert("请输入顾客手机号码 !");
    	document.getElementById("customer_tel").focus();
    }
    else if (document.getElementById("content_detail").value.length == 0)
    {
    	alert("请输入建议内容!");
    	document.getElementById("content_detail").focus();
    }
    else 
    {
    	flag = true;
    }
    return flag;
}

function validatePraise()
{
    var flag = false;
    if (document.getElementById('area').value.length == 0)
    {
    	alert("请输入地区!");
    	document.getElementById("area").focus();
    }    	
    else if (document.getElementById("employee_number").value.length == 0)
    {
    	alert("请输入员工编号!");
    	document.getElementById("employee_number").focus();
    }
    else if (document.getElementById("customer_number").value.length == 0)
    {
    	alert("请输入顾客的编号!");
    	document.getElementById("customer_number").focus();
    }
    else if (document.getElementById("content_detail").value.length == 0)
    {
    	alert("请输入表扬内容!");
    	document.getElementById("content_detail").focus();
    }
    else 
    {
    	flag = true;
    }
    return flag;
}
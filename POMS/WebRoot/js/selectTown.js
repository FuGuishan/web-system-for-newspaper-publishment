var req;
window.onload = function() {
}

function Change_Select_city() {
	var type = document.getElementById('type').value;
	var province = document.getElementById('province').value;
	var city = document.getElementById('city').value;
	if (type == 1) {
		var url = "selectTownServlet?id=" + encodeURI(encodeURI(city))
				+ "&args=1" + "&province=" + encodeURI(encodeURI(province));
	} else if (type == 2) {
		var url = "selectTownServlet?id=" + encodeURI(encodeURI(city))
				+ "&args=2" + "&province=" + encodeURI(encodeURI(province));
	}

	if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}

	if (req) {
		req.open("GET", url, true); // 设置get方式，异步传输
		req.onreadystatechange = callback_2;
		req.send(null); // 设置get方式使用
	}
}

function callback_2() {
	if (req.readyState == 4) {
		if (req.status == 200) {
			parseMessage_2();
		} else {
			alert("Not able to retrieve description" + req.statusText);
		}
	}
}

function parseMessage_2() {
	var xmlDoc = req.responseXML.documentElement; // 返回xml
	var xSel = xmlDoc.getElementsByTagName('select');
	var select_root = document.getElementById('town');

	select_root.options.length = 0; // 将原来选项清空，可以尝试隐藏，看效果

	for ( var i = 0; i < xSel.length; i++) {
		var xValue = xSel[i].childNodes[0].firstChild.nodeValue;
		var xText = xSel[i].childNodes[1].firstChild.nodeValue;
		var option = new Option(xText, xValue);

		try {
			select_root[select_root.length] = option;
		} catch (e) {
		}
	}
}
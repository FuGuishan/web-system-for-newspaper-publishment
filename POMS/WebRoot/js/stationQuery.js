function stationQuery() {
	var type = document.getElementById('type').value;
	var province = document.getElementById('province').value;
	var city = document.getElementById('city').value;
	var town = document.getElementById('town').value;
	var department = document.getElementById('department').value;

	var tmp = document.createElement("form");
	var action = "subStationQueryServlet?type=" + type;
	action += "&province=" + encodeURI(encodeURI(province));
	action += "&city=" + encodeURI(encodeURI(city));
	action += "&town=" + encodeURI(encodeURI(town));
	action += "&department=" + department;
	tmp.action = action;
	tmp.method = "post";
	document.body.appendChild(tmp);
	tmp.submit();
}
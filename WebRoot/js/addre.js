function changeTest(obj) {
	var selectVal = obj.value;
	if (selectVal == "hn") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("广东省", "广西壮族自治区", "海南省", "香港特别行政区", "澳门特别行政区");
		var values = new Array("11", "12", "13", "14", "15");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else if (selectVal == "hb") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("北京市", "天津市", "河北省", "山西省", "内蒙古自治区");
		var values = new Array("21", "22", "23", "24", "25");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else if (selectVal == "hd") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("上海市", "江苏省", "浙江省", "安徽省", "江西省", "福建省", "山东省",
				"台湾省");
		var values = new Array("31", "32", "33", "34", "35", "36", "37", "38");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else if (selectVal == "xb") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("陕西省", "甘肃省", "青海省", "宁夏回族自治区", "新疆维吾尔自治区");
		var values = new Array("41", "42", "43", "44", "45");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else if (selectVal == "xn") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("重庆市", "四川省", "云南省", "西藏自治区", "贵州省");
		var values = new Array("51", "52", "53", "54", "55");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else if (selectVal == "hz") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("河南省", "湖北省", "湖南省");
		var values = new Array("61", "62", "63");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else if (selectVal == "db") {
		var objSelectet = document.getElementById("testTwo");
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
		// Array事项动态下拉框
		var texts = new Array("辽宁省", "吉林省", "黑龙江省");
		var values = new Array("71", "72", "73");
		for (var i = 0; i < texts.length; i++) {
			var objOption = document.createElement("OPTION");
			objOption.text = texts[i];
			objOption.value = values[i];
			objSelectet.options.add(objOption);
		}
	} else {
		var objSelectet = document.getElementById("testTwo");
		// 从后面向前面删除
		for (i = objSelectet.options.length - 1; i >= 0; i--) {
			objSelectet.options[i] = null;
			objSelectet.innerHTML = "<option value = ''>请选择</option>";
		}
	}
}

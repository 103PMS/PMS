// JavaScript Document
//全选 反选 取消选择
function SelectCBox(){
	var aCheckboxs = document.getElementsByClassName("checkbox");
	var selectAll = document.getElementById("selectAll");
    var selectOthers = document.getElementById("selectOthers");
	var selectNone = document.getElementById("selectNone");
	
	//全选
	selectAll.onclick = function(){
		for(var i = 0; i < aCheckboxs.length; i++){
			if(!aCheckboxs[i].checked){
				aCheckboxs[i].checked=true;
				}
			}
		}
	//反选
	selectOthers.onclick = function(){
		for(var i = 0; i < aCheckboxs.length; i++){
			if(aCheckboxs[i].checked){
				aCheckboxs[i].checked=false;
				}else{
				   aCheckboxs[i].checked=true;
				}
			}
		}
		
	//取消选择
	selectNone.onclick = function(){
		for(var i = 0; i < aCheckboxs.length; i++){
			if(aCheckboxs[i].checked){
				aCheckboxs[i].checked=false;
				}
			}
		}

}


//删除所选项
function deleteChecked(checkboxName,url){
	var objs = document.getElementsByName(checkboxName);
	
	var param = '';
	for(i=0;i<objs.length;i++){
		 if(objs[i].type.toLowerCase() == "checkbox" ){
		 	if(objs[i].checked){
	 			param += ('idStr='+objs[i].value+'&');
			}
		 }
	}
	
	if(param.length >0){
		//这里提交到删除的地方
		window.location.href=url+"?"+param;
	}
}
	
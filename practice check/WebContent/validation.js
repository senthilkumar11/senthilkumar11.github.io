function chk() {
	
	var name =document.form1.name.value;
	var email =document.form1.pw.value;
	if(name.length==0)
		{
		alert("Enter name");
		return false;
		}
	else if(email.length==0)
	{
	alert("Enter Password");
	return false;
	}
	else
		return true;

	
} 



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>B�a til vakt</title>
</head>
<body>
	<h1></h1>
	<h2>${errorMessage}</h2>
	 <form action = "/shiftInfo" method = "POST" >
         Titill: <input type = "text" name = "title" value = "${param.title}">
         <br />
         Dagsetning: <input type = "date" name = "shiftDate" value ="${param.shiftDate}" />
         <br />
         Upphafst�mi: <input type="time" name = "beginTime" value = "${param.beginTime}">
         <br />
         Lokat�mi: <input type="time" name = "endTime" value = "${param.endTime}">
         <br />
         Fj�ldi starfsmanna: <input type="text" name = "howMany" value = "${param.howMany}">
         <br />
         Tegund vaktar: <select id="shiftType" name="shiftType">
  		 <option value="G�sla" ${paramValues.employeeType.stream().anyMatch(v->v == 'G�sla').get() ? 'selected' : ''} >G�sla</option>
  		 <option value="Sj�kgrag�sla" ${paramValues.employeeType.stream().anyMatch(v->v == 'Sj�kgrag�sla').get() ? 'selected' : ''} >Sj�krag�sla</option>
  		 <option value="Bar�j�nn" ${paramValues.employeeType.stream().anyMatch(v->v == 'Bar�j�nn').get() ? 'selected' : ''} >Bar�j�nn</option>
  		 <option value="Mi�asala" ${paramValues.employeeType.stream().anyMatch(v->v == 'Mi�asala').get() ? 'selected' : ''} >Mi�asala</option>
		</select>
		<br/>
         <input type = "submit" value = "Submit" />
      </form>
     
</body>
</html>
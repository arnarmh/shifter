
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="is">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sta�festing � skr�ningu vaktar</title>
</head>
<body>

	<h1>Skr�ning vaktarinnar: ${shift.getTitle()} t�kst.</h1>
	<h1>Skr��ar uppl�singar</h1>
	<h3>Titill: ${shift.getTitle()}</h3>
	<h3>Dagsetning: ${shift.getDate()}</h3>
	<h3>Upphafst�mi: ${shift.getBeginTime()}</h3>
	<h3>Lokat�mi: ${shift.getEndTime()}</h3>
	<h3>Fj�ldi starfsmanna: ${shift.getHowMany()}</h3>
	<h3>Tegund vaktar: ${shift.getType()}</h3>
</body>
</html>
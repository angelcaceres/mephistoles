<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>list of previous positions</title>
	</head>
	<body>
        <g:each in="${position}" var="position" status="i">
            <h3>${i+1}. ${position.position}</h3>
            <p>
                Salary: ${position.salary}
            </p>
            <br/>
        </g:each>
	</body>
</html>
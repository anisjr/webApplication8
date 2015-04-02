<%-- 
    Document   : index
    Created on : Apr 2, 2015, 8:46:37 AM
    Author     : anisjr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
    <%-- start web service invocation --%><hr/>
    <%
    try {
	de.cynapsys.homeautomation.serviceimpl.DeviceServiceImplService service = new de.cynapsys.homeautomation.serviceimpl.DeviceServiceImplService();
	de.cynapsys.homeautomation.serviceimpl.DevicesService port = service.getDeviceServiceImplPort();
	 // TODO initialize WS operation arguments here
	long deviceID = 0L;
	// TODO process result here
	int result = port.getValue(deviceID);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>

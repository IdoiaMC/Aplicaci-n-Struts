<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>
<s:form theme="simple" id="itemAdd" name="itemAdd" action="init" method="post">
  <h1><s:text name="form.tittle.message"/></h1>
 <table>
  <tr>
    <td class="evenRow">
        <s:submit align="left" value="Registrar alumno/a"/>
    </td>
  </tr>
</table>
</s:form>

</body>
</html>
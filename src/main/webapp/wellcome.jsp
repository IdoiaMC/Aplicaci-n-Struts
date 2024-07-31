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

    <h1>Datos del alumno/a: </h1>
    <p>Nombre: <s:property value="invoiceBean.name"/></p>
    <p>Apellidos: <s:property value="invoiceBean.surname"/></p>
    <p>Fecha de nacimiento: <s:property value="invoiceBean.birthDate"/></p>
    <p>Lugar de nacimiento: <s:property value="invoiceBean.birthPlace"/></p>
    <p>Teléfono: <s:property value="invoiceBean.prefix"/><s:property value="invoiceBean.telephone"/></p>
    <p>Email: <s:property value="invoiceBean.email"/></p>
    <h2>Domicilio</h2>
    <p>Calle: <s:property value="invoiceBean.street"/></p>
    <p>Número: <s:property value="invoiceBean.number"/></p>
    <p>Piso: <s:property value="invoiceBean.flat"/></p>
    <p>Población: <s:property value="invoiceBean.city"/></p>
    <p>Código postal: <s:property value="invoiceBean.cp"/></p>

     <tr>
        <td class="evenRow">
          <s:form action="goBack" method="post">
           <s:submit value="Atrás"/>
           </s:form>
        </td>
     </tr>



</body>
</html>
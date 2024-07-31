<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title><s:text name="hello.message"/></title>
    <s:head/>
    <sx:head/>
</head>

<body>
<s:form theme="simple" id="itemAdd" name="itemAdd" action="invoice" method="post" validate="true">
  <h1><s:text name="form.tittle.message"/></h1>
  <table>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.name" />
      </td>
      <td class="evenRow">
        <s:text name="form.name.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="name" name="invoiceBean.name" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.surname" />
      </td>
      <td class="evenRow">
        <s:text name="form.surname.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="surname" name="invoiceBean.surname" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.dni" />
      </td>
      <td class="evenRow">
        <s:text name="form.dni.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="dni" name="invoiceBean.dni" placeholder="Ejemplo: 12345678A" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.birthDate" />
      </td>
      <td class="evenRow">
        <s:text name="form.birthDate.message"/>
      </td>
      <td class="evenRow">
        <sx:datetimepicker id="birthDate" name="invoiceBean.birthDate"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.birthPlace" />
      </td>
      <td class="evenRow">
        <s:text name="form.birthPlace.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="birthPlace" name="invoiceBean.birthPlace" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.telephone" />
      </td>
      <td class="evenRow">
        <s:text name="form.telephone.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="prefix" name="invoiceBean.prefix" value="+34 " size="4"/>
        <s:textfield id="telephone" name="invoiceBean.telephone" size="23"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.email"/>
      </td>
      <td class="evenRow">
        <s:text name="form.email.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="email" name="invoiceBean.email" placeholder="Ejemplo: tunombre@email.com" size="30"/>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="evenRow"><h3>Datos del Domicilio</h3></td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.street" />
      </td>
      <td class="evenRow">
        <s:text name="form.street.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="street" name="invoiceBean.street" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.number" />
      </td>
      <td class="evenRow">
        <s:text name="form.number.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="number" name="invoiceBean.number" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.flat" />
      </td>
      <td class="evenRow">
        <s:text name="form.flat.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="flat" name="invoiceBean.flat" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.city" />
      </td>
      <td class="evenRow">
        <s:text name="form.city.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="city" name="invoiceBean.city" size="30"/>
      </td>
    </tr>
    <tr>
      <td class="evenRow">
        <s:fielderror fieldName="invoiceBean.cp" />
      </td>
      <td class="evenRow">
        <s:text name="form.cp.message"/>
      </td>
      <td class="evenRow">
        <s:textfield id="cp" name="invoiceBean.cp" size="30"/>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="evenRow">
        <s:submit align="left" value="Enviar"/>
      </td>
    </tr>
  </table>
</s:form>
</body>
</html>

package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.InvoiceBean;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class InvoiceAction extends ActionSupport  {

     InvoiceBean invoiceBean;



    @Override
    public String execute() throws Exception {

        System.out.println("execute!!");

        return SUCCESS;
    }


    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }

    @Override
    public void validate() {
        if (invoiceBean.getName().isEmpty()) {
            addFieldError("invoiceBean.name", "El nombre es obligatorio.");
        }
        if (invoiceBean.getSurname().isEmpty()) {
            addFieldError("invoiceBean.surname", "El apellido es obligatorio.");
        }
        if (invoiceBean.getDni().isEmpty()) {
            addFieldError("invoiceBean.dni", "El DNI es obligatorio.");
        }
        if (invoiceBean.getBirthDate() == null) {
            addFieldError("invoiceBean.birthDate", "La fecha de nacimiento es obligatoria.");
        }
        if (invoiceBean.getBirthPlace().isEmpty()) {
            addFieldError("invoiceBean.birthPlace", "El lugar de nacimiento es obligatorio.");
        }
        if (invoiceBean.getStreet().isEmpty()) {
            addFieldError("invoiceBean.street", "La calle es obligatoria.");
        }
        if (invoiceBean.getNumber().isEmpty()) {
            addFieldError("invoiceBean.number", "El número es obligatorio.");
        }
        if (invoiceBean.getCity().isEmpty()) {
            addFieldError("invoiceBean.city", "La ciudad es obligatoria.");
        }

        if (invoiceBean.getCp().isEmpty()) {
            addFieldError("invoiceBean.cp", "El código postal es obligatorio.");
        }  else if (!invoiceBean.getCp().matches("\\d+")) {
            addFieldError("invoiceBean.cp", "El código postal solo debe contener dígitos.");
        }else if (invoiceBean.getCp().length() != 5) {
            addFieldError("invoiceBean.cp", "El código postal debe tener exactamente 5 dígitos.");
        }

        if (invoiceBean.getTelephone().isEmpty()) {
            addFieldError("invoiceBean.telephone", "El número de teléfono es obligatorio.");
        } else if (!invoiceBean.getTelephone().matches("\\d+")) {
            addFieldError("invoiceBean.telephone", "El número de teléfono solo debe contener dígitos.");
        }else if (invoiceBean.getTelephone().length() != 9) {
            addFieldError("invoiceBean.telephone", "El número de teléfono debe tener exactamente 9 dígitos.");
        }


        if (invoiceBean.getEmail().isEmpty()) {
            addFieldError("invoiceBean.email", "El email es obligatorio.");

        } else if (!isValidEmail(invoiceBean.getEmail())) {
            addFieldError("invoiceBean.email", "Por favor, introduce un correo electrónico válido.");
        }
    }

    private boolean isValidEmail(String email) {
        String emailPattern = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        Pattern pattern = Pattern.compile(emailPattern);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }


}




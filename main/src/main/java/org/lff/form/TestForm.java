package org.lff.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.springframework.scheduling.support.SimpleTriggerContext;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

/**
 * Created by liuff on 2017/7/1 0:08
 */
public class TestForm extends ActionForm {
    private String selectedCustomer;

    public String getSelectedCustomer() {
        return selectedCustomer;
    }

    public void setSelectedCustomer(String selectedCustomer) {
        this.selectedCustomer = selectedCustomer;
    }

    private Map<Integer, String> customers;

    public Map<Integer, String> getCustomers() {
        return customers;
    }

    public void setCustomers(Map<Integer, String> customers) {
        this.customers = customers;
    }

    private  String myProperty;

    public String getMyProperty() {
        return myProperty;
    }

    public void setMyProperty(String myProperty) {
        this.myProperty = myProperty;
    }

    private String value;

    public TestForm() {
        value = "XX";
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public void reset(ActionMapping mapping, HttpServletRequest request) {
        // Reset form fields to their default values
       setMyProperty("toregard");
       customers = new HashMap<>();
        // Add key-value pairs to the map
        customers.put(1, "One");
        customers.put(2, "Two");
        customers.put(3, "Three");
    }
}

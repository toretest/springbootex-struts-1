package org.lff.form;

import org.apache.struts.action.ActionForm;

import java.util.List;

/**
 * Created by liuff on 2017/7/1 0:08
 */
public class TestForm extends ActionForm {
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
}

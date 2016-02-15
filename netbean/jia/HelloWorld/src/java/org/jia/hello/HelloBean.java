/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.jia.hello;

import javax.faces.application.Application;
import javax.faces.component.UIPanel;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

/**
 *
 * @author Karim
 */
public class HelloBean {

    private UIPanel controlPanel;
    private int numControls;

    public UIPanel getControlPanel() {
        return controlPanel;
    }

    public void setControlPanel(UIPanel controlPanel) {
        this.controlPanel = controlPanel;
    }

    public int getNumControls() {
        return numControls;
    }

    public void setNumControls(int numControls) {
        this.numControls = numControls;
    }

    /**
     * Clear and add {@link #numControls} controls to the panel.
     * @param actionEvent event
     */
    public void redisplay(ActionEvent actionEvent) {
        getControlPanel().getChildren().clear();
        Application app =FacesContext.getCurrentInstance().getApplication();
        app.createComponent("");
    }
}

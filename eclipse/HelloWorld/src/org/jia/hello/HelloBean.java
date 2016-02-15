/**
 * 
 */
package org.jia.hello;

import javax.faces.application.Application;
import javax.faces.component.UIComponent;
import javax.faces.component.UIPanel;
import javax.faces.component.UIViewRoot;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

/**
 * Used in HelloWord demo (chapter 1).
 * 
 * @author Karim
 *
 */
public class HelloBean {
	private int nbControls;

	/**
	 * @return the nbControls
	 */
	public int getNbControls() {
		return nbControls;
	}

	/**
	 * @param nbControls
	 *            the nbControls to set
	 */
	public void setNbControls(int nbControls) {
		this.nbControls = nbControls;
	}

	/**
	 * Redisplay the grid with {@link #nbControls} children.
	 * 
	 * @param actionEvent
	 *            Click
	 */
	public void redisplay(ActionEvent actionEvent) {
		// Get the panel
		UIViewRoot view = FacesContext.getCurrentInstance().getViewRoot();
		UIComponent cmp = view.findComponent("helloForm:helloGrid");
		if (cmp instanceof UIPanel) {
			// Add children to the panel
			Application app = FacesContext.getCurrentInstance().getApplication();
			cmp.getChildren().clear();
			for (int i = 0; i < getNbControls(); i++) {
				HtmlOutputText hot = (HtmlOutputText) app.createComponent(HtmlOutputText.COMPONENT_TYPE);
				hot.setValue(" " + i + " ");
				cmp.getChildren().add(hot);
			}
		}
	}
}

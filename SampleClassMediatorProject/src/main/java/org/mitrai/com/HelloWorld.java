package org.mitrai.com;

import org.apache.synapse.MessageContext; 
import org.apache.synapse.mediators.AbstractMediator;

public class HelloWorld extends AbstractMediator { 

	public boolean mediate(MessageContext context) { 
		
		System.out.println("Into Class Mediator: " + context);
		
		context.setProperty("FromClass","This is the value we are setting");
		
		return true;
	}
}

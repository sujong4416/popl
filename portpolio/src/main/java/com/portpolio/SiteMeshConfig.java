package com.portpolio;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;



public class SiteMeshConfig extends ConfigurableSiteMeshFilter {

	@Override
	protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) { 
		builder.addDecoratorPath("/board/*", "/WEB-INF/views/default.jsp");
		
	       
                
                
                
	}
}

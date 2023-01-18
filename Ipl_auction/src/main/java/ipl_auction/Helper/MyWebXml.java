package ipl_auction.Helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyWebXml extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] a = {IplConfig.class };
		return a;
	}

	@Override
	protected String[] getServletMappings() {
		String[] a = { "/" };
		return a;
	}

}

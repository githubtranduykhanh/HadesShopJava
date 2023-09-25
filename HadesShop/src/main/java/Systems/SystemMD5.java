package Systems;

import org.apache.commons.codec.digest.DigestUtils;


public class SystemMD5 {
	public static boolean isHashPasswordMD5(String passWordUI,String passWordDatabase)  {    	    
		String md5Hex = DigestUtils.md5Hex(passWordUI).toUpperCase();        
	    if(passWordDatabase.toUpperCase().equals(md5Hex)) {
	    	return true;
	    }
	    else {
	    	return false;
	    }    
	}
	public static String HashPasswordMD5(String passWordUI) {
		String md5Hex = DigestUtils.md5Hex(passWordUI).toUpperCase();        	     
	    return md5Hex;
	}
}

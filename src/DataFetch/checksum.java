package DataFetch;

import java.security.MessageDigest;
import java.util.Formatter;


public class checksum {

	public String checksum1(final String toBeEncryptString){
		if (toBeEncryptString == null) {
		throw new IllegalArgumentException("To be encrypt string must not be null");
		}
		try {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(toBeEncryptString.getBytes());
		byte byteData[] = md.digest();
		return byteArray2Hex(byteData);
		} catch (Exception ex) {
		
		}
		return null;
		}
		public String byteArray2Hex(byte[] bytes) {
		Formatter formatter = null;
		try {
		formatter = new Formatter();
		byte[] arrayOfByte = bytes;
		int j = bytes.length;
		for (int i = 0; i < j; i++) {
		byte b = arrayOfByte[i];
		formatter.format("%02x", new Object[] { Byte.valueOf(b) });
		}
		return formatter.toString();
		} 
		finally {
		if(formatter!=null){
		formatter.close();
		}
		}
		}

}

import AESsecurity.EnkripsiAES;
public class Oracle {
  public static void main(String[] args) throws Exception {
    String x = new String(java.util.Base64.getDecoder().decode(args[1]), "UTF-8");
    String result = args[0].equals("e") ? EnkripsiAES.encrypt(x) : EnkripsiAES.decrypt(x);
    System.out.write(result.getBytes("UTF-8"));
  }
}


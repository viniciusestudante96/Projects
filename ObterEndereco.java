import java.net.*;
public class ObterEndereco {
    public static void main(String[] args) {
        try{
        InetAddress end = InetAddress.getLocalHost();
            System.out.println(end.getHostAddress());
    }
        catch(Exception e){
            System.out.println("Erro!");
        }
    }
}

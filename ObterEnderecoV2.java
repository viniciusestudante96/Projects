import java.net.*;
import java.util.*;
public class ObterEnderecoV2 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner (System.in);
        System.out.println("Digite o nome:");
        String nome = teclado.next();
        try{
        InetAddress end = InetAddress.getLocalHost();
            System.out.println(end.getHostAddress());
    }
        catch(Exception e){
            System.out.println("Erro!");
        }
        teclado.close();
    }
}

import java.net.*;
import java.io.*;
import java.util.*;

public class ClienteEcho {

    public static void main(String[] args) throws Exception {
        InetAddress end = InetAddress.getLocalHost();
        Socket s = new Socket(end, 8000);
        Scanner entrada = new Scanner(s.getInputStream());
        PrintWriter saida = new PrintWriter(s.getOutputStream(), true);
        Scanner teclado = new Scanner(System.in);
        String txt;
        do { //do while para o cliente enviar várias msg's
        System.out.println("Digite um texto:");
        txt = teclado.nextLine();
        saida.println(txt); //enviando o texto na rede
        String txtRecebido = entrada.nextLine();
        System.out.println("\nTexto recebido->" + txtRecebido);
        }while(!txt.equals("bye")); //equals ele compara as strings, nesse while, se for diferente, sai do loop
        s.close();
    }
}


import java.net.*;
import java.util.*;
import java.io.*;

public class ServidorEcho extends Thread {

    public static void main(String[] args) throws IOException {
        ServerSocket serv = new ServerSocket(8000);
        while (true) {
            System.out.println("Servidor aguardando...");
            Socket s = serv.accept();
            Worker w = new Worker(s);
            w.start();
        }
    }
}

class Worker extends Thread {

    private Socket s;

    public Worker(Socket s) {
        this.s = s;
    }

    public void run() {
        try {
            Scanner entrada = new Scanner(s.getInputStream());
            PrintWriter saida = new PrintWriter(s.getOutputStream(),true);
            String msg = new String();
            do {
                msg = entrada.nextLine();
                saida.println(msg);
            } while (!msg.equals("bye"));
            entrada.close();
            saida.close();
            s.close();
        } catch (Exception e) {
        }
    }
}

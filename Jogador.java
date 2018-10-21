
import java.net.*;
import java.util.*;

public class Jogador extends Thread {

    private String nome;

    public Jogador(String nome) {
        this.nome = nome;
    }

    public void run() {
        for (int i = 1; i <= 10; i++) 
        {
            try{ Thread.sleep(1000);} catch (Exception e){}
            System.out.println("Movimento do jogo"+nome);
        }
    }
    public static void main(String[] args) {
        Jogador j1 = new Jogador("Alice");//cria uma thread
        Jogador j2 = new Jogador("Bob");
        j1.start();//executa a thread
        j2.start();
    }
}

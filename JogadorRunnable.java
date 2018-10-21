public class JogadorRunnable implements Runnable {

    private String nome;

    public JogadorRunnable(String nome) {
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
        Thread t1 = new Thread(j1);
        Thread t2 = new Thread(j2);
        t1.start();
        t2.start();
    }
}
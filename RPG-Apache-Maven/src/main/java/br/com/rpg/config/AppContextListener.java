package br.com.rpg.config;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
        System.out.println("Iniciando a aplicação");

        // Restaura o banco de dados quando a aplicação inicializa
        ConnectionPoolConfig.restoreDatabase();

        // Adiciona um gancho de desligamento para fazer o backup do banco de dados quando a aplicação fecha
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                ConnectionPoolConfig.backupDatabase();
            }
        });
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Finalizando a aplicação");
    }
}

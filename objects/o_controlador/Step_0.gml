/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Se meu player estiver vivo 
if(o_player.vivo == true)
{
    tempo_pontos++
    if(tempo_pontos > tempo_pontos_limite)
    {
        //Então eu irei ganhar pontos
        pontos += 1 
        //Resetando tempo novamente
        tempo_pontos = 0
    }
    
}

//Criando um if para computar meus pontos
if(pontos >= recorde && o_player.vivo == false)
{
    recorde = pontos
}

// Criando um if para definir quando eu irei aumentar a minha velocidade dentro do jogo
if(pontos >= proxima_meta)
{
    // Aumenta a velocidade do jogo inteiro de uma vez só!
    global.velh += 0.3;
    
    // Mostra no console o novo valor correto
    show_debug_message("Velocidade Global subiu para: " + string(global.velh));
    
    // Avança a meta (mudei para 100 de novo para manter seu plano inicial de "a cada 100")
    proxima_meta += 100; 
}

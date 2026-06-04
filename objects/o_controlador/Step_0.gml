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
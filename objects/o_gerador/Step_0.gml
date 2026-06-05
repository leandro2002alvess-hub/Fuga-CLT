/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
tempo += 1
//Criando um novo if para gerar mais caixas apos um certo periodo
if(tempo >= tempo_limite)
{
    
    //Se meu tempo for maior ou igual ao meu tempo limite
    //Então ele criará uma nova caixa
    instance_create_layer(x, y, "i_obstaculos", o_caixa);
    show_debug_message("Criei uma nova caixa", tempo);
    
    //Criando um reset para meu tempo
    tempo = 0
    
}

tempo_detalhes += 1
//Criando um novo if para gerar mais caixas apos um certo periodo
if(tempo_detalhes >= tempo_detalhes_limite)
{
    //Criando um sistema aleatorio de mobilias para meu jogo
    var objeto_sorteado = choose(o_pa, o_pa_1, o_pa, o_pa_1, o_pa, o_pa_1);
    instance_create_layer(x, y, "i_objeto_cenario", objeto_sorteado);
    //Criando um reset para meu tempo
    tempo_detalhes = 0
}
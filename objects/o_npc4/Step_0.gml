/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Criando o sistema de movimentos da caixa
//Fazendo o meu X da room pegar a variavel vel_h
x -= vel_h
//Com base no meu da room ele irá negativar o valor, fazendo com que
//meu velh seja um -velh e fazendo o movimento ser para esquerda

//Criando um sistema para destruir o objeto quando ele sair da room
//Se meu objeto sair da room pelo canto esquerda menos 32 pixels fora da tela
//Então esse meu objeto será destruido
if(x < -32)
{
    //Usando uma instancia para destruir meu objeto
    instance_destroy()
    //Debugando para ver se a destruição ocorreu
    show_debug_message("Destruindo meu objeto")
}

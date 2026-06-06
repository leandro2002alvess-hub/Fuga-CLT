/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando os comandos do meu jogo CLT runner
//Por padrão nossa variavel temporaria SPACE vai guardar o comando do espaço
var space = keyboard_check_pressed(vk_space)

//Criando o sistema de gravidade do nosso jogo
//nosso vel_v por padrão não possui nenhum tipo de valor ou seja zero
//Porém ele vai receber o valor da grav ou seja vel_v += a minha grav que equivale a 0.5
//show_debug_message("Minha velocidade vertical e: " + string(vel_v));
vel_v += grav
//Criando meu if para ver se estou pulando ou não
if(vivo == true && space && place_meeting(x, y + 1, o_chao))
{
    //Toda vez que eu pular então ele rodará o som
    audio_play_sound(snd_jump, 1, false, 3, 0, 1)
    sprite_index = s_player_jump
    //Ao apertar espaço ou space esse meu vel_v que equilave a 0.5 vai ser igual
    //ao -pulo que se refere a altura que irei pular no negativo indo assim para cima
    vel_v = -pulo
    //Debugando para ver se funcionou
    //show_debug_message("Apertei espaço")
    //Para evitar que estou pulando de forma infinita iremos usar um place_meeting
    //que consiste em verificar se estou batendo em algum objeto abaixo de mim
    
}
//Criando um novo if para verificar se pisei no chão e mudar a minha animação para sprite de corrida
//Caso eu esteja pisando no chão e a sprite atual seja s_player_jump
if(place_meeting(x, y + 1, o_chao) && sprite_index == s_player_jump)
{
    //Então devo mudar para sprite de corrida s_player_run
    //Iremos zerar nosso vel_v tambem
    sprite_index = s_player_run
}
//Apos eu sair do evento de espaço o meu vel_v vai agir com base 
//na variavel gravidade e vai puxar o eixo Y da room fazendo eu cair
y += vel_v

//criando um if para zerarmos nossa vel_v para não ficar crescendo o valor
//de forma infinita
//Se meu personagem estiver tocando o chão + 1 pixel dele, então ele vai resetar minha
//velocidade vertical para zero
if(place_meeting(x, y + 1, o_chao))
{
    
    //Iremos zerar nosso vel_v tambem
    vel_v = 0
}

//Criando um sistema de colisão com a caixa
if(place_meeting(x + 1, y + 1, o_caixa))
{
    //Se eu bati na caixo então estou morto
    //Nesse caso meu vivo vira false
    //evitando que possa apertar espaço e pular mesmo apos a morte
    vivo = false
    vel_v = 0
    grav = 10
    //Se eu colidi com a caixa então ele rodará a sprite
    sprite_index = s_player_dead
    //Criando um reset da variavel
    global.velh = 0;
    //esse que guarda o nome Background
    var layer_id = layer_get_id("Background");
    //Por iremos passar dois parametros dentro do layer_background_speed
    //que consiste gerir a velocidade do background
    //primeiro será o layer_id que carrega a variavel layer_id e o segundo parametro e nossa
    //velocidade que e igual a 0
    layer_hspeed(layer_id, 0);
    //Se eu bati na caixa então meu gerador será destruido tambem
    instance_destroy(o_gerador)
    //Morri então recomeço minha room
    //Toda vez que colidir com a caixa ele vai aumentar meu tempo de morte
    tempo_morte++
    //se meu tempo de morte ficar maior que o tempo limite de morte
    if(tempo_morte >= tempo_morte_limite) 
    {
        //Então minha room será reiniciada 
        //show_debug_message(tempo_morte)
        o_controlador.pontos = 0
        room_restart()
        global.velh = 4;
    }
        
}

//Criando um if para verificar se posso tocar a musica
//Se eu estiver vivo então ele tocará a musica
if(vivo == true && !audio_is_playing(snd_music))
{
    //Criando o sistema de musica do meu jogo
    audio_play_sound(snd_music, 1, true)
}
//Criando um else if para caso meu esteja morte
//se meu vivo for false ou seja quando eu estiver morto
else if(vivo == false)
{
    //Se eu morri então a musica vai parar
    audio_stop_sound(snd_music)
}
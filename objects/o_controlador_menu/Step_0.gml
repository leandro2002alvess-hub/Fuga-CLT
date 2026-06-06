/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

space = keyboard_check_pressed(vk_space)
cima = keyboard_check_pressed(ord("W"))
baixo = keyboard_check_pressed(ord("S"))
enter = keyboard_check_pressed(vk_enter)

if(baixo)
{
    opcao_selecionada = 1;
}
else if(cima)
{
    opcao_selecionada = 0;
} 

if ((enter || space) && opcao_selecionada == 0)
{
    iniciando_jogo = true;
}
else if((enter || space) && opcao_selecionada == 1)
{
    saindo_jogo = true;
}

if(iniciando_jogo == true) 
{ 
    with (o_botao) 
    {
       if (meu_id == other.opcao_selecionada) 
       {
           image_index = 2;
       }
    }
    
    //2. O tempo corre livre
    tempo_anim_botao++;
    //show_message("Apertei")
    //3. Deu o tempo limite? Vai para o jogo!
    if (tempo_anim_botao >= tempo_anim_botao_limite)
    {
        room_goto(rm_jogo);
        audio_stop_sound(snd_music);
    }
}
if(saindo_jogo == true) 
{ 
    with (o_botao) 
    {
       if (meu_id == other.opcao_selecionada) 
       {
           image_index = 2;
       }
    }
    
    //2. O tempo corre livre
    tempo_anim_botao++;
    //show_message("Apertei")
    //3. Deu o tempo limite? Vai para o jogo!
    if (tempo_anim_botao >= tempo_anim_botao_limite)
    {
        game_end()
    }
}    

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self()

// Pergunta pro crachá o que este botão específico deve escrever
if (meu_id == 0)
{
    draw_text_transformed(x - 25, y - 8, "Jogar", 0.5, 0.5, 0);
    
}
else if (meu_id == 1)
{
    draw_text_transformed(x - 15, y - 8, "Sair", 0.5, 0.5, 0);
}

draw_set_font(fnt_new_font)



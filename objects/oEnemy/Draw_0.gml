draw_self()


if (flsh > 0)
{
    flsh -= 0.2;
shader_set(Enemy_flash);
alph = shader_get_uniform(Enemy_flash, "alph");
shader_set_uniform_f(alph, 0.5);

draw_self()
shader_reset();
}
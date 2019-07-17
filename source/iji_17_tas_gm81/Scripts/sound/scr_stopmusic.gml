//Argument0 1 = don't stop lighstroke and darkstroke
repeat(10){
sound_stop(mus_secintro);
sound_stop(mus_sec1);
sound_stop(mus_sec2);
sound_stop(mus_sec3);
sound_stop(mus_sec4);
sound_stop(mus_sec5);
sound_stop(mus_boss);
sound_stop(mus_tor);
sound_stop(mus_ending);
sound_stop(mus_mainmenu);
sound_stop(mus_clear);
if (!argument0)
    sound_stop(mus_darkstroke);
if (!argument0)
    sound_stop(mus_lightstroke);
sound_stop(mus_calm);
sound_stop(mus_dark);
sound_stop(mus_sad);
sound_stop(mus_asha);
sound_stop(mus_gameover);
sound_stop(mus_hero3d);
if (!argument0)
    sound_stop(mus_doom);
}
#include <amxmodx>

#define PLUGIN "HUB Welcome Music"
#define VERSION "1.0"
#define AUTHOR "omarefj11"

#define MENU_KEYS (1<<0) 
#define HUD_CHANNEL 4 // Usamos un canal fijo para poder controlarlo

public plugin_init() {
    register_plugin(PLUGIN, VERSION, AUTHOR)
    register_menucmd(register_menuid("MenuCentrado"), MENU_KEYS, "action_welcome_menu")
}

public plugin_precache() {
    precache_sound("misc/bienvenida.wav")
}

public client_putinserver(id) {
    if (!is_user_bot(id)) {
        set_task(0, "show_welcome_menu", id)
    }
}

public show_welcome_menu(id) {
    if (!is_user_connected(id)) return

    // Seteamos el HUD en el canal 4 con tiempo "infinito"
    set_hudmessage(0, 255, 255, -1.0, 0.3, 0, 0.0, 999.0, 0.2, 0.2, HUD_CHANNEL)
    
    new menu_text[512]
    add(menu_text, 511, "=== BIENVENIDO AL SERVIDOR ===^n^n")
    add(menu_text, 511, "Regla: No usar hacks^n")
    add(menu_text, 511, "Regla: Respetar a los demas^n")
    add(menu_text, 511, "Regla: Divertirse y jugar limpio^n^n")
    add(menu_text, 511, "Presiona [1] para Continuar")
    
    show_hudmessage(id, menu_text)

    // Activa la captura de teclado
    show_menu(id, MENU_KEYS, "^n", -1, "MenuCentrado")
    
    client_cmd(id, "spk misc/bienvenida.wav")
}

public action_welcome_menu(id, key) {
    if (key == 0) { // Tecla 1
        stop_all_sounds(id)
        
        // --- MÉTODO DE BORRADO SEGURO ---
        // 1. Seteamos un mensaje con tiempo de 0.01 segundos en el MISMO canal
        set_hudmessage(0, 0, 0, 0.0, 0.0, 0, 0.0, 0.01, 0.0, 0.0, HUD_CHANNEL)
        // 2. Lo enviamos vacío para que sobreescriba y desaparezca el anterior
        show_hudmessage(id, "") 
        
        client_print(id, print_chat, "[Servidor] Gracias por aceptar. ¡Disfruta!")
    }
    return PLUGIN_HANDLED
}

public stop_all_sounds(id) {
    client_cmd(id, "stopsound")
}

public client_disconnect(id) {
    remove_task(id)
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ ansicpg1252\\ deff0\\ deflang2058{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ f0\\ fs16 \n\\ par }
*/

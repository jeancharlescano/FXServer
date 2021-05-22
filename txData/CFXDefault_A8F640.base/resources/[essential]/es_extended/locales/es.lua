-- Copyright (c) Jérémie N'gadi
--
-- All rights reserved.
--
-- Even if 'All rights reserved' is very clear :
--
--   You shall not use any piece of this software in a commercial product / service
--   You shall not resell this software
--   You shall not provide any facility to install this particular software in a commercial product / service
--   If you redistribute this software, you must link to ORIGINAL repository at https://github.com/ESX-Org/es_extended
--   This copyright should appear in every part of the project code

Locales['es'] = {
  -- Inventory
  ['inventory'] = 'inventario %s / %s',
  ['use'] = 'usar',
  ['give'] = 'dar',
  ['remove'] = 'tirar',
  ['return'] = 'devolver',
  ['give_to'] = 'dar a',
  ['amount'] = 'cantidad',
  ['giveammo'] = 'dar munición',
  ['amountammo'] = 'cantidad de munición',
  ['noammo'] = 'no tienes suficiente munición!',
  ['gave_item'] = 'diste ~y~%sx~s~ ~b~%s~s~ a ~y~%s~s~',
  ['received_item'] = 'recibiste ~y~%sx~s~ ~b~%s~s~ de ~b~%s~s~',
  ['gave_weapon'] = 'diste ~b~%s~s~ a ~y~%s~s~',
  ['gave_weapon_ammo'] = 'diste ~o~%sx %s~s~ para ~b~%s~s~ a ~y~%s~s~',
  ['gave_weapon_withammo'] = 'diste ~b~%s~s~ con ~o~%sx %s~s~ a ~y~%s~s~',
  ['gave_weapon_hasalready'] = '~y~%s~s~ ya tiene un ~y~%s~s~',
  ['gave_weapon_noweapon'] = '~y~%s~s~ no tiene esa arma',
  ['received_weapon'] = 'recibiste ~b~%s~s~ de ~b~%s~s~',
  ['received_weapon_ammo'] = 'recibiste ~o~%sx %s~s~ para tu ~b~%s~s~ de ~b~%s~s~',
  ['received_weapon_withammo'] = 'recibiste ~b~%s~s~ con ~o~%sx %s~s~ de ~b~%s~s~',
  ['received_weapon_hasalready'] = '~b~%s~s~ trató de darte una ~y~%s~s~, pero ya tienes una.',
  ['received_weapon_noweapon'] = '~b~%s~s~ trató de darte munición para ~y~%s~s~, pero no tienes esa arma',
  ['gave_account_money'] = 'diste ~g~$%s~s~ (%s) a ~y~%s~s~',
  ['received_account_money'] = 'recibiste ~g~$%s~s~ (%s) de ~b~%s~s~',
  ['amount_invalid'] = 'cantidad inválida',
  ['players_nearby'] = 'no hay jugadores cercanos',
  ['ex_inv_lim'] = 'acción imposible, excede el inventario máximo de ~y~%s~s~',
  ['imp_invalid_quantity'] = 'acción imposible, cantidad inválida',
  ['imp_invalid_amount'] = 'acción imposible, monto inválido',
  ['threw_standard'] = 'has tirado ~y~%sx~s~ ~b~%s~s~',
  ['threw_account'] = 'has tirado ~g~$%s~s~ ~b~%s~s~',
  ['threw_weapon'] = 'has tirado ~b~%s~s~',
  ['threw_weapon_ammo'] = 'has tirado ~b~%s~s~ con ~o~%sx %s~s~',
  ['threw_weapon_already'] = 'ya estás llevando esa arma',
  ['threw_cannot_pickup'] = 'No puedes levantar eso porque tu inventario ya está lleno!',
  ['threw_pickup_prompt'] = 'presiona ~y~E~s~ para levantar',

  -- Key mapping
  ['keymap_showinventory'] = 'ver Inventario',

  -- Salary related
  ['received_salary'] = 'Has recibido tu salario: ~g~$%s~s~',
  ['received_help'] = 'Has recibido tu ayuda del estado: ~g~$%s~s~',
  ['company_nomoney'] = 'La compañía para la cuál estás trabajando es muy pobre para pagar tu salario',
  ['received_paycheck'] = 'Has recibido tu pago',
  ['bank'] = 'Banco',
  ['account_bank'] = 'banco',
  ['account_black_money'] = 'dinero sucio',
  ['account_money'] = 'efectivo',

  ['act_imp'] = 'No se puede realizar esta acción',
  ['in_vehicle'] = 'no puedes darle nada a alguien que está dentro de un vehículo',

  -- Commands
  ['command_car'] = 'Hacer aparecer un vehículo',
  ['command_car_car'] = 'Nombre o hash del vehículo',
  ['command_cardel'] = 'Borrar vehículos cercanos',
  ['command_cardel_radius'] = 'opcional, borrar los vehículos dentro de un radio',
  ['command_clear'] = 'borrar chat',
  ['command_clearall'] = 'borrar chat para todos los usuarios',
  ['command_clearinventory'] = 'borrar inventario',
  ['command_clearloadout'] = 'borrar carga de un usuario',
  ['command_giveaccountmoney'] = 'entregar dinero en cuenta',
  ['command_giveaccountmoney_account'] = 'nombre de cuenta válido',
  ['command_giveaccountmoney_amount'] = 'monto a agregar',
  ['command_giveaccountmoney_invalid'] = 'cuenta inválida',
  ['command_giveitem'] = 'entregar un item a un usuario',
  ['command_giveitem_item'] = 'nombre del item',
  ['command_giveitem_count'] = 'cantidad del item',
  ['command_giveweapon'] = 'dar un arma a un usuario',
  ['command_giveweapon_weapon'] = 'nombre del arma',
  ['command_giveweapon_ammo'] = 'cantidad de munición',
  ['command_giveweapon_hasalready'] = 'el jugador ya tiene esa arma',
  ['command_giveweaponcomponent'] = 'entregar componente de arma',
  ['command_giveweaponcomponent_component'] = 'nombre del componente',
  ['command_giveweaponcomponent_invalid'] = 'componente inválido',
  ['command_giveweaponcomponent_hasalready'] = 'el jugador ya tiene dicho componente',
  ['command_giveweaponcomponent_missingweapon'] = 'el jugador no tiene esa arma',
  ['command_save'] = 'guardar un usuario',
  ['command_saveall'] = 'guardar todos los usuarios en la base de datos',
  ['command_setaccountmoney'] = 'establecer el dinero en cuenta de un usuario',
  ['command_setaccountmoney_amount'] = 'cantidad de dinero a establecer',
  ['command_setcoords'] = 'teletransportarse a unas coordenadas',
  ['command_setcoords_x'] = 'eje x',
  ['command_setcoords_y'] = 'eje y',
  ['command_setcoords_z'] = 'eje z',
  ['command_setjob'] = 'configurar trabajo de un usuario',
  ['command_setjob_job'] = 'nombre del trabajo',
  ['command_setjob_grade'] = 'posición del trabajo',
  ['command_setjob_invalid'] = 'el trabajo, la posición o la combinación de ambos son inválidos',
  ['command_setgroup'] = 'cambiar grupo del usuario',
  ['command_setgroup_group'] = 'nombre del grupo',
  ['commanderror_argumentmismatch'] = 'cantidad de argumentos inválidos (recibidos %s, se esperaban %s)',
  ['commanderror_argumentmismatch_number'] = 'el tipo de dato para #%s no es válido (recibido texto, se esperaba número)',
  ['commanderror_invaliditem'] = 'nombre del item inválido',
  ['commanderror_invalidweapon'] = 'nombre del arma inválida',
  ['commanderror_console'] = 'ese comando no se puede ejecutar desde la consola',
  ['commanderror_invalidcommand'] = '^3%s^0 no es un comando válido!',
  ['commanderror_invalidplayerid'] = 'no hay ningún usuario online con ese id',
  ['commandgeneric_playerid'] = 'id de jugador',

  -- Locale settings
  ['locale_digit_grouping_symbol'] = ',',
  ['locale_currency'] = '$%s',

  -- Weapons
  ['weapon_knife'] = 'cuchillo',
  ['weapon_nightstick'] = 'porra de policía',
  ['weapon_hammer'] = 'martillo',
  ['weapon_bat'] = 'bate',
  ['weapon_golfclub'] = 'golf club',
  ['weapon_crowbar'] = 'crow bar',
  ['weapon_pistol'] = 'pistola',
  ['weapon_combatpistol'] = 'pistola de compate',
  ['weapon_appistol'] = 'pistola AP',
  ['weapon_pistol50'] = 'pistola .50',
  ['weapon_microsmg'] = 'micro SMG',
  ['weapon_smg'] = 'SMG',
  ['weapon_assaultsmg'] = 'SMG de asalto',
  ['weapon_assaultrifle'] = 'rifle de asalto',
  ['weapon_carbinerifle'] = 'rifle de carabina',
  ['weapon_advancedrifle'] = 'rifle avanzado',
  ['weapon_mg'] = 'MG',
  ['weapon_combatmg'] = 'MG de compate',
  ['weapon_pumpshotgun'] = 'escopeta',
  ['weapon_sawnoffshotgun'] = 'escopeta de caño recortada',
  ['weapon_assaultshotgun'] = 'escopeta de asalto',
  ['weapon_bullpupshotgun'] = 'escopeta bullpup',
  ['weapon_stungun'] = 'taser',
  ['weapon_sniperrifle'] = 'sniper',
  ['weapon_heavysniper'] = 'sniper pesado',
  ['weapon_grenadelauncher'] = 'lanzador de granadas',
  ['weapon_rpg'] = 'lanzador de cohetes',
  ['weapon_minigun'] = 'minigun',
  ['weapon_grenade'] = 'granada',
  ['weapon_stickybomb'] = 'bomba pegajosa',
  ['weapon_smokegrenade'] = 'granada de humo',
  ['weapon_bzgas'] = 'bz gas',
  ['weapon_molotov'] = 'bomba molotov',
  ['weapon_fireextinguisher'] = 'extintor de incendios',
  ['weapon_petrolcan'] = 'jerrycan',
  ['weapon_ball'] = 'pelota',
  ['weapon_snspistol'] = 'pistola sns',
  ['weapon_bottle'] = 'botella',
  ['weapon_gusenberg'] = 'barredora gusenberg',
  ['weapon_specialcarbine'] = 'carabina especial',
  ['weapon_heavypistol'] = 'pistola pesada',
  ['weapon_bullpuprifle'] = 'rifle bullpup',
  ['weapon_dagger'] = 'daga',
  ['weapon_vintagepistol'] = 'pistola vintage',
  ['weapon_firework'] = 'fuego artificial',
  ['weapon_musket'] = 'mosquete',
  ['weapon_heavyshotgun'] = 'escopeta pesada',
  ['weapon_marksmanrifle'] = 'rifle de tirador',
  ['weapon_hominglauncher'] = 'lanzador de referncia',
  ['weapon_proxmine'] = 'mina de proximidad',
  ['weapon_snowball'] = 'bola de nieve',
  ['weapon_flaregun'] = 'pistola de vengalas',
  ['weapon_combatpdw'] = 'pdw de combate',
  ['weapon_marksmanpistol'] = 'pistola marksman',
  ['weapon_knuckle'] = 'puño de hierro',
  ['weapon_hatchet'] = 'hacha',
  ['weapon_railgun'] = 'cañón de riel',
  ['weapon_machete'] = 'machete',
  ['weapon_machinepistol'] = 'pistola machine',
  ['weapon_switchblade'] = 'navaja',
  ['weapon_revolver'] = 'revolver pesado',
  ['weapon_dbshotgun'] = 'escopeta de doble caño',
  ['weapon_compactrifle'] = 'rifle compacto',
  ['weapon_autoshotgun'] = 'escopeta automática',
  ['weapon_battleaxe'] = 'hacha de batalla',
  ['weapon_compactlauncher'] = 'lanzador compacto',
  ['weapon_minismg'] = 'mini smg',
  ['weapon_pipebomb'] = 'bomba de tubo',
  ['weapon_poolcue'] = 'taco de billar',
  ['weapon_wrench'] = 'llave de tubo',
  ['weapon_flashlight'] = 'linterna',
  ['gadget_parachute'] = 'paracaidas',
  ['weapon_flare'] = 'bengala',
  ['weapon_doubleaction'] = 'revolver de doble acción',

  -- Weapon Components
  ['component_clip_default'] = 'clip standar',
  ['component_clip_extended'] = 'clip extendido',
  ['component_clip_drum'] = 'tambor giratorio',
  ['component_clip_box'] = 'caja de munición',
  ['component_flashlight'] = 'linterna',
  ['component_scope'] = 'alcance',
  ['component_scope_advanced'] = 'alcance avanzado',
  ['component_suppressor'] = 'silenciador',
  ['component_grip'] = 'empuñadura',
  ['component_luxary_finish'] = 'acabado de lujo',

  -- Weapon Ammo
  ['ammo_rounds'] = 'ronda(s)',
  ['ammo_shells'] = 'proyectil(es)',
  ['ammo_charge'] = 'carga',
  ['ammo_petrol'] = 'litros de nafta',
  ['ammo_firework'] = 'fuego(s) articifial(es)',
  ['ammo_rockets'] = 'cohete(s)',
  ['ammo_grenadelauncher'] = 'lanzador(es) de granadas',
  ['ammo_grenade'] = 'granada(s)',
  ['ammo_stickybomb'] = 'bomba(s)',
  ['ammo_pipebomb'] = 'bomba(s)',
  ['ammo_smokebomb'] = 'bomba(s)',
  ['ammo_molotov'] = 'coctel(s)',
  ['ammo_proxmine'] = 'mina(s)',
  ['ammo_bzgas'] = 'lata(s)',
  ['ammo_ball'] = 'bola(s)',
  ['ammo_snowball'] = 'bola(s) de nieve',
  ['ammo_flare'] = 'vengala(s)',
  ['ammo_flaregun'] = 'vengala(s)',

  -- Weapon Tints
  ['tint_default'] = 'skin standar',
  ['tint_green'] = 'skin verde',
  ['tint_gold'] = 'skin dorada',
  ['tint_pink'] = 'skin rosa',
  ['tint_army'] = 'skin militar',
  ['tint_lspd'] = 'skin azul',
  ['tint_orange'] = 'skin naranja',
  ['tint_platinum'] = 'skin platino',

  -- Identity
  ['identity_register'] = 'Por favor registre su personaje.',
  ['identity_welcome'] = 'Bienvenidos, ~b~%s %s',
  ['identity_fill_in'] = 'Complete todos los campos antes de enviar!',
}
///scr_attack_state
image_speed = .5;

switch (sprite_index) {
     case spr_player_down:
        sprite_index = spr_playerattack_down;
        break;
        
      case spr_player_up:
        sprite_index = spr_playerattack_up;
        break;
        
      case spr_player_right:
        sprite_index = spr_playerattack_right;
        break;
        
      case spr_player_left:
        sprite_index = spr_playerattack_left;
        break;
        
}

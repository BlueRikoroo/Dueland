#define update_scoreboard_var
///update_scoreboard_var(name,scorerelative)
if instance_exists(obj_scoreboard){
    for(var i = 0;i<array_length_1d(names);i++){
        if name[0] = argument0{
            Score[0] += argument1
            break;   
        }
    }
}else{
    show_debug_message("Error: Tried to call scoreboard update when scoreboard does not exist.")
}

#define script2
///update_scoreboard(name,scorerelative)
with(instance_create(0,0,obj_update_score)){
    if !gms_instance_created_by_sync(){
        gms_instance_sync_var_add("name",argument0);
        gms_instance_sync_var_add("score",argument1);
        gms_instance_sync(id,is_onetime)
    }
}
#define update_scoreboard_var
///update_scoreboard_var(name,scorerelative)
var s = false //successful
if instance_exists(obj_scoreboard){
    with(obj_scoreboard){
        for(var i = 0;i<array_length_1d(names);i++){
            if names[i] = argument0{
                Score[i] += argument1
                s = true
                break;   
            }
        }
        var i = 0
        while !s{
            if i = array_length_1d(names) or names[i] = ""{
                names[i] = argument0
                Score[i] = argument1
                s = true
                break;   
            }
            i++
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
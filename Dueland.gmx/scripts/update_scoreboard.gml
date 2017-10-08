#define update_scoreboard
///update_scoreboard(name,score)
var s = false //successful

if instance_exists(obj_scoreboard){
    with(obj_scoreboard){
        for(var i = 0;i<array_length_1d(names);i++){
            if names[i] = argument0{
                Score[i] = argument1
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

#define transfer_score
///transfer_score(name,relative score)
with instance_create(0,0,obj_score_update){
    gms_instance_sync_var_add("name",argument0);
    gms_instance_sync_var_add("relScore",argument1);
    gms_instance_sync(id,is_onetime)
}

#define trasnfer_currentScore
///transfer_score(name,relative score)
with instance_create(0,0,obj_scoreboard_update){
    gms_instance_sync_var_add("name",argument0);
    gms_instance_sync_var_add("Score",argument1);
    gms_instance_sync(id,is_onetime)
}

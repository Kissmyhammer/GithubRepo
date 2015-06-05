if(global.capacitors[0].beamActive == true && global.capacitors[1].beamActive == true && global.capacitors[2].beamActive == true && global.capacitors[3].beamActive == true){
    enemyShield.destroy = true;
    timeline_running = false;
    enemySpawner.alarm[0] = room_speed*20;
    for(var i = 0; i < 4; i += 1){
        global.capacitors[i].active = false;
    }
}

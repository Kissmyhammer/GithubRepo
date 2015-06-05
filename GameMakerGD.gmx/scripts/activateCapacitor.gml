noActive = true;
c = irandom(3);
while(noActive){
    if(global.capacitors[c].active == true){
            c = irandom(3);
    } else if (global.capacitors[c].active == false){            
        global.capacitors[c].active = true;
        noActive = false;
    }
}


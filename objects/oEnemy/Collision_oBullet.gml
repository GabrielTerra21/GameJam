// comeca a chase
justrun=true;

// Morte ou Inimigo perde hp
if healthenemy <= 0 {
   instance_destroy(self);
   score += 100;
}else{
if invincible = false {
   healthenemy -= 30;
   invincible=true;
   alarm_set(0,20); // Set step value to length of Attack animation
}
}


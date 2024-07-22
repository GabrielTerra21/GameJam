// AI Movement Logic

if justrun=true {
	move_towards_point(oPlayer.x,oPlayer.y,2);
} else {

// Proximity Trigger
if runaway=false && chase=false && distance_to_object(oPlayer) < 200 {
	chase=true;
	runaway=false;
}

// New proximity trigger for chase
if chase=true && runaway=false && distance_to_object(oPlayer) < 400{
	move_towards_point(oPlayer.x,oPlayer.y,);
}

// If char is more than 400 pixels away, stop chase
if chase=true && runaway=false && distance_to_object(oPlayer) > 400 {
	move_towards_point(oPlayer.x,oPlayer.y,0);

// Flee in random direction away from char after collision event with oplayer
if chase=false && runaway=true {
	move_towards_point(oPlayer.x,oPlayer.y,5);
	playerdirection = point_direction(x,y,oPlayer.x,oPlayer.y);
	direction = (playerdirection + (180 + random(40)) );
}
}

// stop and start animation
if speed = 0 {
	image_speed = 0;
} else {
	image_speed = 2;
}
}
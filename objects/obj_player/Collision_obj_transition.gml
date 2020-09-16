/// @description Transition
var oWP = instance_nearest(other.x, other.y, obj_waypoint);

target = other.target;
room_goto(target);

//Change x,y position to corresponding waypoint coordinates.
x= oWP.x;
y= oWP.y;

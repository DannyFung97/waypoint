
//Horizontal collision
if (place_meeting(x+hsp,y,o))
{
    while(!place_meeting(x+sign(hsp),y,o))
    {
    x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,o))
{
    while(!place_meeting(x,y+sign(vsp),o))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
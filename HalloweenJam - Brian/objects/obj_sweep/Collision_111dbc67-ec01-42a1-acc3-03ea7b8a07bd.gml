/*with(other)
{
	hp = hp - 0.1;
}*/

if (other.hit == 0){
	other.hit = 1;
	other.hp -= 1;
	other.alarm[0] = 12;
}
with(other)
{
	hp -= 2;
}

instance_destroy();

instance_create_layer(x,y,"Bullets",obj_potionBreaking);
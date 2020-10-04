alarm[0] = -1;

switch(room){
		
	case Country:
		transition(NASA, 1, 1, c_white);
		break;
		
	case NASA:
		transition(Chinola, 1, 1, c_white);
		break;
		
	case Chinola:
		transition(Menu, 1, 1, c_white);
		break;
	
}
/// @description Insert description here
// You can write your code in this editor

if(!fadeout){
	a=max(a-0.005,0.25);
}
else{
	a=min(a+0.005,1);
}

l+= 0.2;
print = string_copy(str,1,l);

if(keyboard_check_direct(vk_space)){
	holdspace++;
}

if(holdspace>10){
	room_goto_next()
}

if(room==room_dialouge0){
	if(l > string_length(str)+15) && (next<array_length_1d(cut0)-1){
	l = 0;
	next++;
	
	if(next==array_length_1d(cut0)-1){
		holdspace++;
	}
}
str=cut0[next];
}

if(room==room_dialouge1){
	if(l > string_length(str)+15) && (next<array_length_1d(cut1)-1){
	l = 0;
	next++;
	
	if(next==array_length_1d(cut1)-1){
		holdspace++;
	}
}
str=cut1[next];
}

if(room==room_dialouge2){
	if(l > string_length(str)+15) && (next<array_length_1d(cut2)-1){
	l = 0;
	next++;
	
	if(next==array_length_1d(cut2)-1){
		holdspace++;
	}
}
str=cut2[next];
}

if(room==room_dialouge3){
	if(l > string_length(str)+15) && (next<array_length_1d(cut3)-1){
	l = 0;
	next++;
	
	if(next==array_length_1d(cut3)-1){
		holdspace++;
	}
}
str=cut3[next];
}

if(room==room_dialouge4){
	if(l > string_length(str)+15) && (next<array_length_1d(cut4)-1){
	l = 0;
	next++;
	
	if(next==array_length_1d(cut4)-1){
		holdspace++;
	}
}
str=cut4[next];
}



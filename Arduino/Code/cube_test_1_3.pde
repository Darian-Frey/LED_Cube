
int pins[] = {42,40,27,25,35,33,44,38,29,23,37,31,50,48,26,24,43,41,52,46,28,22,45,39,5,6,34,32,51,49,4,7,36,30,53,47 ,13,12,11,10,9,8};
int cl = 42;    // colom lengh
int fl[] = { 1,2,1,1,1,1 };     // frame lengh
int fm = 6;    // frame number
int lt[] = { 1,6,1,1,1,1 };
int dt[] = { 20,20,20,20,20,20 };  // delay time for each colom
int da[] = {

0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1, 0,0,0,0,0,1,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1, 0,0,0,0,1,0,
0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0, 0,0,0,1,0,0,
0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,1,0,0,0,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,1,0,0,0,0,
1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 1,0,0,0,0,0,

};    // animation data

void setup()
{
	int i;
	for (i = 0; i < cl; i++)
		pinMode(pins[i], OUTPUT);
}

void loop()
{
	int a,b,c,d;
	
	for (a = 0; a < fm; a++)
	{
  for (d = 0; d < lt[a]; d++)
  {
		for (b = 0; b < fl[a]; b++)
		{
			for (c = 0; c < cl; c++)
			{
				if (da[a*fl[a]*cl + b*cl + c] == 0) {digitalWrite(pins[c], LOW);}
				else {digitalWrite(pins[c], HIGH);}
			}
		}
		for (c = 0; c < cl; c++)
                delay(dt[a]);
		{digitalWrite(pins[c], LOW);}
  }
		
	}
}


int pins[] = {42,40,27,25,35,33,44,38,29,23,37,31,50,48,26,24,43,41,52,46,28,22,45,39,5,6,34,32,51,49,4,7,36,30,53,47 ,13,12,11,10,9,8};
int cl = 42;    // colom lengh
int fn = 10;    // frame number
int lt[] = { 50,50000,50,50,50000,50,50,50,50,50 };   // number of times to loop X frames
int lf[] = { 1,1,1,1,1,1,1,1,1,1 };   //  number of frames to loop
int da[] = {
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,

0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,1,1,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0, 0,0,0,1,1,0,

0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,

1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 1,0,0,0,0,0,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,1,0,0,0,0,
0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,1,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0, 0,0,0,1,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1, 0,0,0,0,1,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1, 0,0,0,0,0,1,};    // animation data

void setup()
{
	int i;
	for (i = 0; i < cl; i++)
		pinMode(pins[i], OUTPUT);
}

void loop()
{
	int a,b,c,d,e;
	
	for (a = 0; a < fn; a++)    // frame number loop 0-9
	{

             for (b = 0; b < lf[a]; b++)
             {
	         for (c = 0; c < cl; c++)    // colom lenght loop  0-41
                 {
			   if (da[a*cl + c] == 0) {digitalWrite(pins[c], LOW);}
                	   else {digitalWrite(pins[c], HIGH);}
                           
		     }
                 }delayMicroseconds(5000);
             }

          }

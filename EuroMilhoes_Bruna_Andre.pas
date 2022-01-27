Program Bruna_Andre ;

var
  num,numAleat:array[1..5] of integer;
  est,estAleat:array[1..2] of integer;
  Contanum,Contaest,cont, jgrdnv:integer;
  exit: boolean;

procedure capa_euro;

begin
                                  
writeln('                 ______   _       _    _______      _______   ____       ____   ______   __       __       __   _______    ______    _______ ');
writeln('                / /____| | |     | |  |   __  \    /       \ |  |  \    / |  | |______| |  |     |  |     |  | /       \  / /____|  / _____/ ');
writeln('                | |      | |     | |  |  |  |  \   |   _   | |  | \ \__/ /|  |   |  |   |  |     |  |     |  | |   _   |  | |       | |      ');
writeln('                | |____  | |     | |  |  |__|  /   |  / \  | |  |  \____/ |  |   |  |   |  |     |  |_____|  | |  / \  |  | |____   | |____  ');
writeln('                | |____| | |     | |  |       )    |  \_/  | |  |         |  |   |  |   |  |     |   _____|  | |  \_/  |  | |____|  |_\____| ');    
writeln('                | |      | |     | |  |  ____  \   |       | |  |         |  |   |  |   |  |     |  |     |  | |       |  | |            \ | ');
writeln('                | |____  |  \___/  |  |  |   \  \  |       | |  |         |  |  _|  |_  |  |___  |  |     |  | |       |  | |____   _____/ | ');  
writeln('                \_\____|  \_______/   |__|    \__\ \_______/ |__|         |__| |______| |______| |__|     |__| \_______/  \_\____| /_______/ ');
readkey;

end;

  
Procedure ola;
Var 
   a,b,c,d:integer;
   greetings:string;
   name:string;
   message: string;
   exit:boolean;
   choise:char;
   Password,User:String[12];
   i:Byte;                                                                                 
  Begin
     ClrScr;
     writeln('Bem-vindo(a), venha ganhar o maior sonho da sua vida!');
     greetings:='Olá';
     
     Writeln('Antes de tentar a sua sorte precisava do seu nome ');
     readln(name);
     
     clrscr;
     writeln(greetings, ' ', name, ' as regras do jogo sao as seguintes:');
     writeln('');
     	writeln('Tens de escolher 5 números diferentes e 2 estrelas diferentes ');
     	writeln('Caso acertes algum dos números sorteados ser-te-á atribuído um prémio monetário ');
     	writeln('Bom Jogo! ');
     	writeln('');     	                	
     writeln('Clica no Enter para continuares');

				         
	End;	

procedure Pede_num;
Var
   i,j:integer;
Begin 
  for i :=1 to 5 do
  Begin
	 writeln('Digite o ',i,'º nº de 1 a 50: ');
	 Readln(num[i]);
	 
	 while(num[i]<1)or(num[i]>50) do
	  Begin
	      writeln('Nºinválido, Digite outro nºde 1 a 50:');
				Readln(num[i]);
	  End;
	  for j:=1 to (i-1) do
		if(num[i]=num[j]) then 
	Begin 
	  writeln('Nº repetido digite outro nº 1 a 50');  
	  Readln(num[i]);
	  while(num[i]<1)or(num[i]>50) do
	  Begin
	      write('Nºinválido, Digite outro nºde 1 a 50:');
				Readln(num[i]);
	  End;
	  j:=0;
	  End; 
	End;
End;

procedure Pede_est;
Var
   i,j:integer;
Begin 
  for i :=1 to 2 do
  Begin
	 writeln('Escolha a ',i,'º estrela de 1 a 12: '); 
	 Readln(est[i]);
	 while(est[i]<1)or(est[i]>12) do
	  Begin
	      writeln('Estrela inválida, Digite outra estrela de 1 a 12:');
				Readln(est[i]);
	  End;
	  for j:=1 to (i-1) do
		if(est[i]=est[j]) then 
	Begin 
	  writeln('Estrela repetida digite novamente de 1 a 12');
	  Readln(est[i]);
	  while(est[i]<1)or(est[i]>12) do
	  Begin
	      write('Estrela inválida , Digite outra de 1 a 12 :');
				Readln(est[i]);
	  End;
	  j:=0;
	  End; 
	End;
End;	

 Procedure bubble_sort;  
 Var
  i,j,temp:integer;
   Begin
     for i:=1 to 4 do
      for j:= i+1to 5 do
       If (num[i]>num[j])Then
       Begin
            temp:= num[i];
            num[i]:=num[j];
			      num[j]:=temp;
       End;
   End;
   
   
//************************Erro de lógica   
 Procedure bubble_sort2;  
Var
  i,j,temp:integer;
   Begin
       If (est[1]>est[2])Then
       Begin
            temp:= est[1];
            est[1]:=est[2];
			      est[2]:=temp;
       End;
   End; 
   

Procedure mostrar_numeros;
	Var
		i:integer;
	Begin
	textcolor(lightblue);
	gotoxy(10,5); writeln('numeros escolhidos');
	gotoxy(19,7); write(num[1]);
	gotoxy(19,9); write(num[2]);
	gotoxy(19,11); write(num[3]);
	gotoxy(19,13); write(num[4]);
	gotoxy(19,15); write(num[5]);
	writeln();
	End;
 
Procedure mostrar_estrelas;
	Var
		i:integer;
	Begin
	textcolor(yellow);
	gotoxy(10,18); writeln('estrelas escolhidos');
	gotoxy(19,20); write(est[1]);
	gotoxy(19,22); write(est[2]);
	writeln();	
	End;
				
Procedure gera_numeros;
var i,j:integer;
 begin
  for i:=1 to 5 do
  Begin
    numAleat[i]:=random(50)+1;
	  for j:=1 to (i-1) do
	  	if(numAleat[i]=numAleat[j]) then  
	    Begin 
	      numAleat[i]:=random(50)+1;
	      j:=0;
	    End; 
	 End;
 End;
 
procedure gera_est;
Var 
  i,j:integer;
 begin
  for i:=1 to 2 do
  Begin
	  estAleat[i]:=random(12)+1;
	   for j:=1 to (i-1) do
		  if(estAleat[i]=estAleat[j]) then 
	  Begin 
	   estAleat[i]:=random(12)+1;
	   j:=0;
	  End; 
	End;
 End;
 	
Procedure bubble_sortAleat1;  
 Var
  i,j,temp:integer;
   Begin
     for i:=1 to 4 do
      for j:= i+1to 5 do
       If (numAleat[i]>numAleat[j])Then
       Begin
            temp:= numAleat[i];
            numAleat[i]:=numAleat[j];
			      numAleat[j]:=temp;
       End;
   End;
   
//************************Erro de lógica   
 Procedure bubble_sortAleat2;  
Var
  i,j,temp:integer;
   Begin
       If (estAleat[1]>estAleat[2])Then
       Begin
            temp:= estAleat[1];
            estAleat[1]:=estAleat[2];
			      estAleat[2]:=temp;
       End;
   End;
	  

   
Procedure mostrar_numerosAleat;
	Var
		i:integer;
	Begin
	 textcolor(lightblue);
	 for i:=1 to 5 do
	 gotoxy(31,5); writeln(' numeros sorteados');
	gotoxy(40,7); write(numAleat[1]);
	gotoxy(40,9); write(numAleat[2]);
	gotoxy(40,11); write(numAleat[3]);
	gotoxy(40,13); write(numAleat[4]);
	gotoxy(40,15); write(numAleat[5]);
	writeln();
	End;
	
Procedure mostrar_estrelasAleat;
	Var
		i:integer;
	Begin
	 textcolor(yellow);
	 for i:=1 to 2 do
	 gotoxy(31,18); writeln(' estrelas sorteadas');
	gotoxy(40,20); write(estAleat[1]);
	gotoxy(40,22); write(estAleat[2]);
	textcolor(lightgreen);
	writeln();
	End;
	
Procedure Conta_num;
 Var
   i,j:integer;
 Begin
  textcolor(lightblue);
  writeln();
  writeln();
  for i:=1 to 5 do
      for j:=1 to 5 do
          If(num[i]=numAleat[j])then
            Contanum:=contanum+1;
    if (contaNum=0) then
    writeln('Má sorte :( nao acertaste em nenhum numero, tente novamente !!')
    else
      writeln('Acertou em ',Contanum , ' numero(s)  Parabéns');
 End;
   
Procedure Conta_est;
 Var
   i,j:integer;
 Begin
  textcolor(yellow);
  for i:=1 to 2 do
     for j:=1 to 2 do
         If(est[i]=estAleat[j])then
           Contaest:=contaest+1;
    if (contaest=0) then
      writeln('Nao conseguiste acertar em nenhuma estrela, boa sorte para a próxima !!')
		else 
		  writeln('Acertou em ',Contaest ,' estrelas Parabéns');			     
 End;
 
procedure premios;

Begin
  if (Contanum=0) and (Contaest=0)then
  	Begin
  	 textcolor(lightred);  
		 writeln('Perdeu 2.5 euros, Que azar :( tente novamente!');
  	 Readln();                                     
    End;
    
   if (Contanum=1) and (Contaest=0)then
  	Begin
  	 textcolor(lightred);
		 writeln('Perdeu 2.5 euros, tente novamente!');
  	 Readln();                                      
    End;
    
     if (Contanum=0) and (Contaest=1)then
  	Begin
  	 textcolor(lightred);
		 writeln('Perdeu 2.5 euros, tente novamente!');
  	 Readln();                                      
    End;
    
     if (Contanum=0) and (Contaest=2)then
  	Begin
   	textcolor(lightred);
		 writeln('Perdeu 2.5 euros, tente novamente!');
  	 Readln();                                      
    End;
    
   if (Contanum=1) and (Contaest=1)then
  	Begin
  	 textcolor(lightred);
		 writeln('Perdeu 2.5 euros, tente novamente!');
  	 Readln();                                      
    End;
    
 if (Contanum=2) and (Contaest=0)then
  	Begin
		 writeln('Ganhou 4,59 euros');
  	 Readln();                                      
    End;
 
 if (Contanum=2) and (Contaest=1) then
  	Begin
		 writeln('Ganhou 6,53 euros');                   
  	 Readln();                                        
    End;
		 
 if (Contanum=1) and (Contaest=2) then
  	Begin
		 writeln('Ganhou 7,48 euros');                    
  	 Readln();
    End;

 if (Contanum=3) and (Contaest=0) then
  	Begin
		 writeln('Ganhou 11,76 euros');                     
  	 Readln();
    End;

 if (Contanum=3) and (Contaest=1) then
  	Begin
		 writeln('Ganhou 14,63 euros');                      
  	 Readln();
    End;

 if (Contanum=2) and (Contaest=2) then
  	Begin
		 writeln('Ganhou 17,17 euros');
  	 Readln();                                           
    End;

 if (Contanum=4) and (Contaest=0) then
  	Begin
		 writeln('Ganhou 54,23 euros');
  	 Readln();                                            
    End;

 if (Contanum=3) and (Contaest=2) then
  	Begin
		 writeln('Ganhou 78,36 euros');
  	 Readln();
    End;                                                   
		
 if (Contanum=4) and (Contaest=1) then
  	Begin
		 writeln('Ganhou 162,68 euros');
  	 Readln();                                              
    End;
		
 if (Contanum=4) and (Contaest=2) then
  	Begin    
		 writeln('Ganhou 1.462,12 euros');
  	 Readln();
    End;                                                     

 if (Contanum=5) and (Contaest=0) then
  	Begin
		 writeln('Ganhou 25.348,58 euros');                            
  	 Readln();
    End;
    
 if (Contanum=5) and (Contaest=1) then
  	Begin
		 writeln('Ganhou 135.573,40 euros');                             
  	 Readln();
    End;
				
 if (Contanum=5) and (Contaest=2) then
  	Begin
		 writeln('Ganhou 30.000.000,00 euros');                              
  	 Readln();
    End;
End;

Procedure desenho;
Begin
 textcolor(white);
 gotoxy(8,3);
  write(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
 gotoxy(8,4);
  write(chr(186));
 gotoxy(8,5);
	write(chr(186));
 gotoxy(8,6);
	write(chr(186));
 gotoxy(8,7);
	Write(chr(186));
 gotoxy(8,8);
	Write(chr(186));
 gotoxy(8,9);
	write(chr(186));
 gotoxy(8,10);
  write(chr(186));
 gotoxy(8,11);
  write(chr(186));
 gotoxy(8,12);
	write(chr(186));
 gotoxy(8,13);
	write(chr(186));
 gotoxy(8,14);
	Write(chr(186));
 gotoxy(8,15);
	Write(chr(186));
 gotoxy(8,16);
	write(chr(186));
 gotoxy(8,17);
  write(chr(186));
  gotoxy(8,18);
  write(chr(186));
 gotoxy(8,19);
	write(chr(186));
 gotoxy(8,20);
	write(chr(186));
 gotoxy(8,21);
	Write(chr(186));
 gotoxy(8,22);
	Write(chr(186));
 gotoxy(8,23);
	write(chr(186));
 gotoxy(8,24);
 write (chr(186));
 gotoxy(8,25);
	Write(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
 gotoxy(52,4);
  write(chr(186));
 gotoxy(52,5);
	write(chr(186));
 gotoxy(52,6);
	write(chr(186));
 gotoxy(52,7);
	Write(chr(186));
 gotoxy(52,8);
	Write(chr(186));
 gotoxy(52,9);
	write(chr(186));
 gotoxy(52,10);
  write(chr(186));
 gotoxy(52,11);
  write(chr(186));
 gotoxy(52,12);      
	write(chr(186));
 gotoxy(52,13);
	write(chr(186));
 gotoxy(52,14);
	Write(chr(186));
 gotoxy(52,15);
	Write(chr(186));
 gotoxy(52,16);
	write(chr(186));
 gotoxy(52,17);
  write(chr(186));
 gotoxy(52,18);
  write(chr(186));
 gotoxy(52,19);
	write(chr(186));
 gotoxy(52,20);
	write(chr(186));
 gotoxy(52,21);
	Write(chr(186));
 gotoxy(52,22);
	Write(chr(186));
 gotoxy(52,23);
	write(chr(186));
 gotoxy(52,24);
 write(chr(186));
 gotoxy(30,3);
 write(chr(203));
 gotoxy(30,4);
 write(chr(186));
 gotoxy(30,5);
 write(chr(186));
 gotoxy(30,6);
 write(chr(186));
 gotoxy(30,7);
 write(chr(186));
 gotoxy(30,8);
  write(chr(186));
 gotoxy(30,9);
  write(chr(186));
 gotoxy(30,10);
  write(chr(186));
 gotoxy(30,11);
  write(chr(186));
 gotoxy(30,12);
  write(chr(186));
 gotoxy(30,13);
  write(chr(186));
 gotoxy(30,14);
  write(chr(186));
 gotoxy(30,15);
  write(chr(186));
 gotoxy(30,16);
  write(chr(186));
 gotoxy(30,17);
  write(chr(186));
 gotoxy(30,18);
  write(chr(186));
 gotoxy(30,19);
  write(chr(186));
 gotoxy(30,20);
  write(chr(186));
 gotoxy(30,21);
  write(chr(186));
 gotoxy(30,22);
  write(chr(186));
 gotoxy(30,23);
  write(chr(186));
 gotoxy(30,24);
  write(chr(186));
 gotoxy(30,25);
  write(chr(202));
	textcolor(lightgreen);	 
End;
													 	
procedure jogar_euromilhoes; 
 begin                                                              
   pede_num;
   bubble_sort;
   pede_est;
   bubble_sort2;
   clrscr;
   desenho;
   mostrar_numeros;
   mostrar_estrelas;
   gera_numeros;                               
   gera_est;
   bubble_sortAleat1;
   mostrar_numerosAleat;
   bubble_sortAleat2;
   mostrar_estrelasAleat;
   writeln(); 
   Conta_num;
   Conta_est;
   premios;
   
 end;



// Incio do programa

Begin
      capa_euro;
      ola;
      readkey;
      clrscr;
      jogar_euromilhoes;
End.
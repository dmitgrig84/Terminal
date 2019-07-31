unit draw;

interface

uses Windows;

function AnToAs(mes: string) : string;
function AnToAsi(mes: string) : string;
const
// Некоторые стандартные цвета
 YellowOnBlue = FOREGROUND_GREEN OR FOREGROUND_RED OR
                FOREGROUND_INTENSITY OR BACKGROUND_BLUE;
 WhiteOnBlue  = FOREGROUND_BLUE OR FOREGROUND_GREEN OR
                FOREGROUND_RED OR FOREGROUND_INTENSITY OR
                BACKGROUND_BLUE;
 RedOnWhite   = FOREGROUND_RED OR FOREGROUND_INTENSITY OR
                BACKGROUND_RED OR BACKGROUND_GREEN OR BACKGROUND_BLUE
                OR BACKGROUND_INTENSITY;
 WhiteOnRed   = BACKGROUND_RED OR BACKGROUND_INTENSITY OR
                FOREGROUND_RED OR FOREGROUND_GREEN OR FOREGROUND_BLUE
                OR FOREGROUND_INTENSITY;
 BlackOnWhite = 0
                OR BACKGROUND_RED OR BACKGROUND_GREEN OR BACKGROUND_BLUE OR BACKGROUND_INTENSITY;
 WhiteOnBlack = FOREGROUND_BLUE OR FOREGROUND_GREEN OR
                FOREGROUND_RED OR FOREGROUND_INTENSITY;  

implementation

//--------------------------------------
// Ansi to Ascii
//--------------------------------------
function AnToAs(mes: string) : string;
var i : integer;
begin
 for i:=1 to length(mes) do
 case mes[i] of
  'А'..'п':
  mes[i]:= Chr(Ord(mes[i]) - 64);
  'р'..'я' :
  mes[i]:= Chr (Ord(mes [i] ) -16);
 end;
 result := mes;
end;

function AnToAsi(mes: string) : string;
var i : integer;
begin
 for i:=1 to length(mes) do
 case mes[i] of
  {'А'..'Б': mes[i]:= Chr(Ord(mes[i]) + 10);
  'В'..'Г': mes[i]:= Chr(Ord(mes[i]) + 20);
  'Д'..'Е': mes[i]:= Chr(Ord(mes[i]) + 30);
  'Ж'..'З': mes[i]:= Chr(Ord(mes[i]) + 40);
  'И'..'К': mes[i]:= Chr(Ord(mes[i]) + 50);
  'Л'..'М': mes[i]:= Chr(Ord(mes[i]) + 70);
  'Н'..'О': mes[i]:= Chr(Ord(mes[i]) + 80);
  'П'..'Р': mes[i]:= Chr(Ord(mes[i]) + 90);
  'С'..'Т': mes[i]:= Chr(Ord(mes[i]) + 100);
  'У'..'Ф': mes[i]:= Chr(Ord(mes[i]) + 110);
  'Х'..'Ц': mes[i]:= Chr(Ord(mes[i]) + 120);
  'Ч'..'Ш': mes[i]:= Chr(Ord(mes[i]) + 130);
  'Щ'..'Ъ': mes[i]:= Chr(Ord(mes[i]) + 130);
  'Ы'..'Ь': mes[i]:= Chr(Ord(mes[i]) + 130);
  'Э'..'Ю': mes[i]:= Chr(Ord(mes[i]) + 140);
  'Я'..'Я': mes[i]:= Chr(Ord(mes[i]) + 150);

  'а'..'б': mes[i]:= Chr(Ord(mes[i]) + 150);
  'в'..'г': mes[i]:= Chr(Ord(mes[i]) + 160);
  'д'..'е': mes[i]:= Chr(Ord(mes[i]) + 170);
  'ж'..'з': mes[i]:= Chr(Ord(mes[i]) + 180);
  'и'..'к': mes[i]:= Chr(Ord(mes[i]) + 190);
  'л'..'м': mes[i]:= Chr(Ord(mes[i]) + 210);
  'н'..'о': mes[i]:= Chr(Ord(mes[i]) + 220);
  'п'..'р': mes[i]:= Chr(Ord(mes[i]) + 230);
  'с'..'т': mes[i]:= Chr(Ord(mes[i]) + 240);
  'у'..'ф': mes[i]:= Chr(Ord(mes[i]) + 250);
  'х'..'ц': mes[i]:= Chr(Ord(mes[i]) + 260);
  'ч'..'ш': mes[i]:= Chr(Ord(mes[i]) + 270);
  'щ'..'ъ': mes[i]:= Chr(Ord(mes[i]) + 280);
  'ы'..'ь': mes[i]:= Chr(Ord(mes[i]) + 290);
  'э'..'ю': mes[i]:= Chr(Ord(mes[i]) + 300);
  'я'..'я': mes[i]:= Chr(Ord(mes[i]) + 310);}

  'А'..'Б': mes[i]:= Chr(440);
  'В'..'Г': mes[i]:= Chr(1270);
  'Д'..'Е': mes[i]:= Chr(1260);
  'Ж'..'З': mes[i]:= Chr(1250);
  'И'..'К': mes[i]:= Chr(1240);
  'Л'..'М': mes[i]:= Chr(1230);
  'Н'..'О': mes[i]:= Chr(1220);
  'П'..'Р': mes[i]:= Chr(1210);
  'С'..'Т': mes[i]:= Chr(1200);
  'У'..'Ф': mes[i]:= Chr(1190);
  'Х'..'Ц': mes[i]:= Chr(1180);
  'Ч'..'Ш': mes[i]:= Chr(1170);
  'Щ'..'Ъ': mes[i]:= Chr(1160);
  'Ы'..'Ь': mes[i]:= Chr(1150);
  'Э'..'Ю': mes[i]:= Chr(1140);
  'Я'..'Я': mes[i]:= Chr(1130);

  'а'..'б': mes[i]:= Chr(1120);
  'в'..'г': mes[i]:= Chr(1110);
  'д'..'е': mes[i]:= Chr(1100);
  'ж'..'з': mes[i]:= Chr(1090);
  'и'..'к': mes[i]:= Chr(1080);
  'л'..'м': mes[i]:= Chr(1070);
  'н'..'о': mes[i]:= Chr(1060);
  'п'..'р': mes[i]:= Chr(1050);
  'с'..'т': mes[i]:= Chr(1040);
  'у'..'ф': mes[i]:= Chr(1030);
  'х'..'ц': mes[i]:= Chr(1020);
  'ч'..'ш': mes[i]:= Chr(1010);
  'щ'..'ъ': mes[i]:= Chr(1000);
  'ы'..'ь': mes[i]:= Chr(990);
  'э'..'ю': mes[i]:= Chr(980);
  'я'..'я': mes[i]:= Chr(970);

 end;

 result := mes;
end;

end.

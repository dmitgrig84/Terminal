unit print;

interface

uses Windows,
     Graphics,
     ExtCtrls,
     SysUtils,
     Printers,
     Classes;

procedure DrawImage(Canvas: TCanvas; DestRect: TRect; ABitmap: TBitmap);
//procedure PrintImage(Image: TImage; ZoomPercent,PlaseX,PlaseY:integer);
//procedure PrinLabel(BarcodeText,RackName,DrinkId,DrinkName,DrinkKindId,DateFactory,NumberAkzis:string;PlaseX,PlaseY:integer);
implementation
procedure DrawImage(Canvas: TCanvas; DestRect: TRect; ABitmap: TBitmap);
var
  Header, Bits: Pointer;
  HeaderSize: DWORD;
  BitsSize: DWORD;
begin
  GetDIBSizes(ABitmap.Handle, HeaderSize, BitsSize);
  Header := AllocMem(HeaderSize);
  Bits := AllocMem(BitsSize);
  try
    GetDIB(ABitmap.Handle, ABitmap.Palette, Header^, Bits^);
    StretchDIBits(Canvas.Handle, DestRect.Left, DestRect.Top,
      DestRect.Right, DestRect.Bottom,
      0, 0, ABitmap.Width, ABitmap.Height, Bits, TBitmapInfo(Header^),
      DIB_RGB_COLORS, SRCCOPY);
  finally
    FreeMem(Header, HeaderSize);
    FreeMem(Bits, BitsSize);
  end;
end;




end.
 
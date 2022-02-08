unit UnitColetaDados;

interface

uses FMX.Graphics;

type
    TColeta = record
      id: integer;
      icone : TBitmap;
      cod_usuario : string;
      data : string;
      texto : string;
      tipo : string; // T = TEXT C = INVITATION
    end;
implementation

end.

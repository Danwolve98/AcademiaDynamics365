codeunit 50120 "Horarios Codeunit"
{
    procedure OnDeleteCurso(IdCurso: Text[40])
        Horarios: Record Horarios;
    var
        myInt: Integer;
    begin

        if Horarios.FindSet() then
            repeat
                if (Horarios.Curso = IdCurso) then begin
                    Horarios.Delete();
                end;
            until Horarios.Next() = 0;

    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}
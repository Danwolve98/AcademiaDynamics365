codeunit 50145 SalariosCodeUnit
{
    var
        TotalSalarioss: Text[100];

    trigger OnRun()
    begin

    end;

    procedure HeadlineOnOpenPage()
    var

    begin
        TotalSalarioss := TotalSalarios();
        //Commit();
    end;

    procedure TotalSalarios() Salida: Text[100]
    var
        CueTable: Record "Cue Table Secretario";
        TotalProfesores: Decimal;
        TotalNoProfesores: Decimal;
        Result: Decimal;
        Texto: Text[100];
    begin

        ResetFlowField(CueTable);
        Result := CueTable."Salario Total No Docente" + CueTable."Salario Total Profesores";

        //TotalProfesores := where(CueTable."Salario Total Profesores");
        //Result := 2.3 + 1.9;
        Message(Format(Result));
        Texto := InsStr('El salario total de todos los empleados es €', Format(Result), 44);
        exit(Texto);
    end;

    procedure GetTotalSalarios(): Text[100]
    begin
        exit(TotalSalarioss);
    end;

    procedure ResetFlowField(CueTable: Record "Cue Table Secretario")
    begin
        CueTable.Reset();
        if not CueTable.Get() then begin
            CueTable.Init();
            CueTable.Insert();
        end;
    end;
}
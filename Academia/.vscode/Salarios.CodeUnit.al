codeunit 50145 SalariosCodeUnit
{
    var
        TotalSalarioss: Text[100];

    procedure HeadlineOnOpenPage()
    var

    begin
        TotalSalarioss := TotalSalarios();
    end;

    procedure TotalSalarios() Salida: Text[100]
    var
        CueTable: Record "Cue Table Secretario";
        TotalProfesores: Decimal;
        TotalNoProfesores: Decimal;
        Result: Decimal;
        Texto: Text[100];
    begin
        CueTable.CalcFields("Salario Total No Docente", "Salario Total Profesores");
        Result := CueTable."Salario Total No Docente" + CueTable."Salario Total Profesores";
        Texto := InsStr('El salario total de todos los empleados es €', Format(Result), 44);
        exit(Texto);
    end;

    procedure GetTotalSalarios(): Text[100]
    begin
        exit(TotalSalarioss);
    end;
}
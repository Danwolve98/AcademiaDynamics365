table 50142 "Cue Curso Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Cue Course Table', comment = 'ESP="Cue Curso Table"';

    fields
    {
        field(1; PrimaryKey; Integer)
        {

        }
        field(2; "Media Tarifas Cursos"; Decimal)
        {
            Caption = 'Average Course Fee', comment = 'ESP="Media Tarifas Cursos"';
            FieldClass = FlowField;
            CalcFormula = average(Cursos."Tarifa de laboratorio");
        }
        field(3; "Total Horas"; Integer)
        {
            Caption = 'Total Hours', comment = 'ESP="Total Horas"';
            FieldClass = FlowField;
            CalcFormula = sum(Cursos."Horas Totales");
        }
        field(4; "Número Cursos Informática"; Integer)
        {
            Caption = 'Nº of Informatic Courses', comment = 'ESP="Número Cursos Informática"';
            FieldClass = FlowField;
            CalcFormula = count(Cursos where(Departamento = const('Informatica')));
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }

}
table 50142 "Cue Curso Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Integer)
        {

        }
        field(2; "Media Tarifas Cursos"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(Cursos."Tarifa de laboratorio");
        }
        field(3; "Total Horas"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum(Cursos."Horas Totales");
        }
        field(4; "Número Cursos Informática"; Integer)
        {
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
table 50141 "Cue Table Secretario"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Integer)
        {
        }
        field(2; "Num. Estudiantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes);
        }
        field(3; "Num. Profesores"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Profesores);
        }
        field(4; "Salario Total Profesores"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(Profesores.Salario);
        }
        field(5; "Salario Total No Docente"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("No Docente".Salario);
        }

        field(6; "Num. Alumnnos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes where(Sexo = const("Hombre")));
        }
        field(7; "Num. Alumnnas"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes where(Sexo = const("Mujer")));
        }
        field(8; "Media Tarifas Cursos"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(Cursos."Tarifa de laboratorio");
        }
    }

    keys
    {
        key(Key1; PrimaryKey)
        {
            Clustered = true;
        }
    }

    var
        myInt: Decimal;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}

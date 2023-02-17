table 50141 "Cue Table Secretario"
{
    DataClassification = ToBeClassified;
    Caption = 'Cue Table Secretary', comment = 'ESP="Cue Table Secretario"';

    fields
    {
        field(1; PrimaryKey; Integer)
        {
        }
        field(2; "Num. Estudiantes"; Integer)
        {
            Caption = 'Number of Students', comment = 'ESP="Num. Estudiantes"';
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes);
        }
        field(3; "Num. Profesores"; Integer)
        {
            Caption = 'Number of Teachers', comment = 'ESP="Num. Profesores"';
            FieldClass = FlowField;
            CalcFormula = count(Profesores);
        }
        field(4; "Salario Total Profesores"; Decimal)
        {
            Caption = 'Total Teachers Salary', comment = 'ESP="Salario Total Profesores"';
            FieldClass = FlowField;
            CalcFormula = sum(Profesores.Salario);
        }
        field(5; "Salario Total No Docente"; Decimal)
        {
            Caption = 'Total Non-Teachers Salary', comment = 'ESP="Salario Total No Docente"';
            FieldClass = FlowField;
            CalcFormula = sum("No Docente".Salario);
        }

        field(6; "Num. Alumnnos"; Integer)
        {
            Caption = 'Number of Male Students', comment = 'ESP="Num. Alumnnos"';
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes where(Sexo = const("Hombre")));
        }
        field(7; "Num. Alumnnas"; Integer)
        {
            Caption = 'Number of Female Students', comment = 'ESP="Num. Alumnnas"';
            FieldClass = FlowField;
            CalcFormula = count(Estudiantes where(Sexo = const("Mujer")));
        }
    }

    keys
    {
        key(Key1; PrimaryKey)
        {
            Clustered = true;
        }
    }





}

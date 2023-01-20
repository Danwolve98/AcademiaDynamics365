table 50106 Profesores
{
    DataClassification = ToBeClassified;
    Caption = 'Profesores';

    fields
    {
        field(1; Id; Integer)
        {
            AutoIncrement = true;
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[40])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; Direccion; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha de Contratacion"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Salario; Decimal)
        {
            MinValue = 0;
            DataClassification = ToBeClassified;
        }
        field(6; Departamento; Text[20])
        {
            TableRelation = Departamentos;
            DataClassification = ToBeClassified;
        }
        field(7; " Num. Ayudantes"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("No Docente" where("Profesor a cargo" = field(Id), Puesto = const('Ayudante')));
        }
        field(8; " Num. Cursos"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Cursos where(Profesor = field(Id)));
            /*= field("Filtro dia")));*/

        }
        field(109; "Filtro dia"; Enum DiasSemana)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(pk; Id)
        {
            Clustered = true;
        }
    }

}
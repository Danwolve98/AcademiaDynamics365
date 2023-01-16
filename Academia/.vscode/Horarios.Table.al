table 50112 Horarios
{
    DataClassification = ToBeClassified;
    Caption = 'Horarios';

    fields
    {
        field(1; Dia; Enum DiasSemana)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Curso; Text[40])
        {
            TableRelation = Cursos;
            DataClassification = ToBeClassified;

        }
        field(3; "Hora de inicio"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Hora de finalización"; Time)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; Dia, Curso)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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
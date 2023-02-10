table 50112 Horarios
{
    DataClassification = ToBeClassified;
    Caption = 'Schedule Table', comment = 'ESP="Tabla Horarios"';
    DrillDownPageId = Horarios;

    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id', comment = 'ESP="Id"';
            AutoIncrement = true;
            Editable = false;
            DataClassification = ToBeClassified;

        }
        field(2; Dia; Enum DiasSemana)
        {
            Caption = 'Day', comment = 'ESP="Dia"';
            DataClassification = ToBeClassified;

        }
        field(3; Curso; Text[40])
        {
            Caption = 'Course', comment = 'ESP="Curso"';
            TableRelation = Cursos;
            DataClassification = ToBeClassified;

        }
        field(4; "Hora de inicio"; Time)
        {
            Caption = 'Start Time', comment = 'ESP="Hora de inicio"';
            DataClassification = ToBeClassified;
        }
        field(5; "Hora de finalización"; Time)
        {
            Caption = 'End Time', comment = 'ESP="Hora de finalizacion"';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; Id)
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
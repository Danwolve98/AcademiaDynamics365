table 50108 "No Docente"
{
    DataClassification = ToBeClassified;
    DataCaptionFields = Id, Nombre;
    Caption = 'Non-Teaching Table', comment = 'ESP="Tabla no Docente"';
    DrillDownPageId = "No Docente";

    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id', comment = 'ESP="Id"';
            AutoIncrement = true;
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[40])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; Direccion; Text[40])
        {
            Caption = 'Address', comment = 'ESP="Direccion"';
            DataClassification = ToBeClassified;
        }
        field(4; Salario; Decimal)
        {
            Caption = 'Salary', comment = 'ESP="Salario"';
            MinValue = 0;
            DataClassification = ToBeClassified;
        }
        field(5; Puesto; Text[20])
        {
            Caption = 'Position', comment = 'ESP="Puesto"';
            DataClassification = ToBeClassified;
        }
        field(6; "Profesor a cargo"; Integer)
        {
            Caption = 'Teacher in charge', comment = 'ESP="Profesor a cargo"';
            TableRelation = Profesores;
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

    fieldgroups
    {
        fieldgroup(DropDown; Nombre, Id) { Caption = 'Non-Teaching Dropdown', comment = 'ESP="Dropdown no Docente"'; ; }
    }

}
table 50109 Estudiantes
{
    DataClassification = ToBeClassified;
    LookupPageId = Estudiantes;
    Caption = 'Estudiantes';

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
        field(3; Sexo; Enum Sexo)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Dirección; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Telefono; Code[9])
        {
            Numeric = true;
            DataClassification = ToBeClassified;
        }
        field(6; "Fecha de Nacimiento"; Date)
        {
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
        fieldgroup(DropDown; Id, Nombre) { }
    }

}
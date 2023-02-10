table 50109 Estudiantes
{
    DataClassification = ToBeClassified;
    LookupPageId = Estudiantes;
    Caption = 'Students Table', comment = 'ESP="Tabla Estudiantes"';
    DataCaptionFields = Id, Nombre;
    DrillDownPageId = Estudiantes;

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
        field(3; Sexo; Enum Sexo)
        {
            Caption = 'Gender', comment = 'ESP="Sexo"';
            DataClassification = ToBeClassified;
        }
        field(4; Dirección; Text[40])
        {
            Caption = 'Address', comment = 'ESP="Dirección"';
            DataClassification = ToBeClassified;
        }
        field(5; Telefono; Code[9])
        {
            Caption = 'Phone Number', comment = 'ESP="Teléfono"';
            Numeric = true;
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Pattern,
                Value : Text;
            begin
                Pattern := '\d{9}';
                if not Regex.IsMatch(Telefono, Pattern, 0) then Error('El teléfono no es válido');
            end;
        }
        field(6; "Fecha de Nacimiento"; Date)
        {
            Caption = 'BirthDate', comment = 'ESP="Fecha de Nacimiento"';
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
        fieldgroup(DropDown; Id, Nombre) { Caption = 'DropDown Student', comment = 'ESP="DropDown Estudiante"'; }
    }

}
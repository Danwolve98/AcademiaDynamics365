table 50107 Departamentos
{
    DataClassification = ToBeClassified;
    Caption = 'Departamentos';

    fields
    {
        field(1; Nombre; Text[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; Despacho; Code[5])
        {
            CharAllowed = 'AAZZ';
            DataClassification = ToBeClassified;
        }
        field(3; "Jefe de departamento"; Integer)
        {
            TableRelation = Profesores;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; Nombre)
        {
            Clustered = true;
        }
    }

}
table 50110 Cursos
{
    DataClassification = ToBeClassified;
    LookupPageId = Cursos;
    Caption = 'Cursos';

    fields
    {
        field(1; Nombre; Text[40])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; Descripción; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Horas Totales"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Tarifa de laboratorio"; Decimal)
        {
            DecimalPlaces = 0 : 2;
            MinValue = 0;
            DataClassification = ToBeClassified;
        }
        field(5; Profesor; Integer)
        {
            TableRelation = Profesores;
            DataClassification = ToBeClassified;
        }
        field(6; Departamento; Text[20])
        {
            TableRelation = Departamentos;
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

    fieldgroups
    {
        fieldgroup(DropDown; Nombre, Departamento) { }
    }

}
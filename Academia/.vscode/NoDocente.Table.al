table 50108 "NoDocente"
{
    DataClassification = ToBeClassified;
    Caption = 'No Docente';

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
        field(4; Salario; Decimal)
        {
            MinValue = 0;
            DataClassification = ToBeClassified;
        }
        field(5; Puesto; Text[20])
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

}
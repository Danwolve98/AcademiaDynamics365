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
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Pattern,
                Value : Text;
            begin
                Pattern := '[A-Z]{3}\d{2}';
                if not Regex.IsMatch(Despacho, Pattern, 0) then Message('El patrón debe ser LAB01');
            end;
        }
        field(3; "Jefe de departamento"; Integer)
        {
            Editable = false;
            TableRelation = Profesores.Id where(Departamento = field(Nombre), "Jefe Departamento" = const(true));
        }
        field(4; "Tarifa media"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(Cursos."Tarifa de laboratorio" where(Departamento = field(Nombre)));
        }

        field(5; "Max salario"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = max(Profesores.Salario where(Departamento = field(Nombre), "Fecha de Contratacion" = field("Fecha de contratacion Filtro")));
        }

        field(100; "Fecha de contratacion Filtro"; Date)
        {
            FieldClass = FlowFilter;
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
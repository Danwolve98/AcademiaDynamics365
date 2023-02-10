table 50107 Departamentos
{
    DataClassification = ToBeClassified;
    DataCaptionFields = Nombre, Despacho;
    LookupPageId = Departamentos;
    Caption = 'Departments Table', comment = 'ESP="Tabla Departamentos"';

    fields
    {
        field(1; Nombre; Text[20])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; Despacho; Code[5])
        {
            Caption = 'Office', comment = 'ESP="Despacho"';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                Matches: Record Matches;
                Regex: Codeunit Regex;
                Pattern,
                Value : Text;
            begin
                Pattern := '[A-Z]{3}\d{2}';
                if not Regex.IsMatch(Despacho, Pattern, 0) then Error('El patrón debe ser LAB01');
            end;
        }
        field(3; "Jefe de departamento"; Integer)
        {
            Caption = 'Head of department', comment = 'ESP="Jefe de departamento"';
            Editable = true;
            TableRelation = Profesores.Id;
        }
        field(4; "Tarifa media"; Decimal)
        {
            Caption = 'Average fee', comment = 'ESP="Tarifa media"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(Cursos."Tarifa de laboratorio" where(Departamento = field(Nombre)));
        }

        field(5; "Max salario"; Decimal)
        {
            Caption = 'Max Salary', comment = 'ESP="Max Salario"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = max(Profesores.Salario where(Departamento = field(Nombre), "Fecha de Contratacion" = field("Fecha de contratacion Filtro")));
        }

        field(100; "Fecha de contratacion Filtro"; Date)
        {
            Caption = 'Date of hire', comment = 'ESP="Fecha de contratación Filtro"';
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

    fieldgroups
    {
        fieldgroup(DropDown; Nombre, "Jefe de departamento")
        {
            Caption = 'DropDown Department', comment = 'ESP="DropDown Departamento"';
        }
    }

}
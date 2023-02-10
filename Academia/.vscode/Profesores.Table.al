table 50106 Profesores
{
    DataClassification = ToBeClassified;
    LookupPageId = Profesores;
    DataCaptionFields = id, Nombre, Departamento;
    Caption = 'Teachers Table', comment = 'ESP="Tabla Profesores"';
    DrillDownPageId = Profesores;

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
        field(4; "Fecha de Contratacion"; Date)
        {
            Caption = 'Date of Hire', comment = 'ESP="Fecha de Contratacion"';
            DataClassification = ToBeClassified;
        }
        field(5; Salario; Decimal)
        {
            Caption = 'Salary', comment = 'ESP="Salario"';
            MinValue = 0;
            DataClassification = ToBeClassified;
        }
        field(6; Departamento; Text[20])
        {
            Caption = 'Department', comment = 'ESP="Departamento"';
            TableRelation = Departamentos;
            DataClassification = ToBeClassified;
        }
        field(7; " Num. Ayudantes"; Integer)
        {
            Caption = 'Num. Helpers', comment = 'ESP="Num. Ayudantes"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("No Docente" where("Profesor a cargo" = field(Id), Puesto = const('Ayudante')));
        }
        field(8; " Num. Cursos"; Integer)
        {
            Caption = 'Num. Courses', comment = 'ESP="Num. Cursos"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Cursos where(Profesor = field(Id)));
            /*= field("Filtro dia")));*/

        }
        field(109; "Filtro dia"; Enum DiasSemana)
        {
            Caption = 'Day filter', comment = 'ESP="Filtro dia"';
            FieldClass = FlowFilter;
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
        fieldgroup(DropDown; Nombre, Id) { Caption = 'Teachers Dropdown', comment = 'ESP="Dropdown Profesores"'; }
    }

}
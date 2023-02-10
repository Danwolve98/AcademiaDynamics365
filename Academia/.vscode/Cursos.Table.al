table 50110 Cursos
{
    DataClassification = ToBeClassified;
    DataCaptionFields = Nombre;
    LookupPageId = Cursos;
    Caption = 'Courses Table', comment = 'ESP="Tabla Cursos"';
    DrillDownPageId = Cursos;

    fields
    {
        field(1; Nombre; Text[40])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; Descripción; Text[200])
        {
            Caption = 'Description', comment = 'ESP="Descripción"';
            DataClassification = ToBeClassified;
        }
        field(3; "Horas Totales"; Integer)
        {
            Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
            DataClassification = ToBeClassified;
        }
        field(4; "Tarifa de laboratorio"; Decimal)
        {
            Caption = 'Lab fee', comment = 'ESP="Tarifa de laboratorio"';
            DecimalPlaces = 0 : 2;
            MinValue = 0;
            DataClassification = ToBeClassified;
        }
        field(5; Profesor; Integer)
        {
            Caption = 'Teacher', comment = 'ESP="Profesor"';
            TableRelation = Profesores;
            DataClassification = ToBeClassified;
        }
        field(6; Departamento; Text[20])
        {
            Caption = 'Department', comment = 'ESP="Departamento"';
            TableRelation = Departamentos;
            DataClassification = ToBeClassified;
        }
        field(7; "Total Alumnos"; Integer)
        {
            Caption = 'Total Students', comment = 'ESP="Total Alumnos"';
            CalcFormula = count(Matriculas where(Curso = field(Nombre)));
            FieldClass = FlowField;
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
        fieldgroup(DropDown; Nombre, Departamento) { Caption = 'DropDown Course', comment = 'ESP="DorpDown Curso"'; }
    }

}
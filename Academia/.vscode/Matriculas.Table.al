table 50111 Matriculas
{
    DataClassification = ToBeClassified;
    DataCaptionFields = Estudiante, Curso;
    LookupPageId = Matriculas;
    Caption = 'Tuitions Table', comment = 'ESP="Table Matriculas"';
    DrillDownPageId = Matriculas;

    fields
    {
        field(1; Estudiante; Integer)
        {
            Caption = 'Student', comment = 'ESP="Estudiante"';
            TableRelation = Estudiantes;
            DataClassification = ToBeClassified;
        }
        field(2; "Estudiante Nombre"; Text[40])
        {
            Caption = 'Student Name', comment = 'ESP="Nombre Estudiante"';
            TableRelation = Estudiantes;
            CalcFormula = lookup(Estudiantes.Nombre where(Id = field(Estudiante)));
            FieldClass = FlowField;
        }
        field(3; Curso; Text[40])
        {
            Caption = 'Course', comment = 'ESP="Curso"';
            TableRelation = Cursos;
            DataClassification = ToBeClassified;
        }
        field(4; "Fecha y hora de matriculación"; DateTime)
        {
            Caption = 'Date and time of registration', comment = 'ESP="Fecha y hora de la matriculacion"';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; Estudiante, Curso)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Fecha y hora de matriculación" := System.CurrentDateTime;
    end;

}
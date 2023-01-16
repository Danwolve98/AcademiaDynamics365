table 50111 Matriculas
{
    DataClassification = ToBeClassified;
    Caption = 'Matrículas';

    fields
    {
        field(1; Estudiante; Integer)
        {
            TableRelation = Estudiantes;
            DataClassification = ToBeClassified;
        }
        field(2; Curso; Text[40])
        {
            TableRelation = Cursos;
            DataClassification = ToBeClassified;
        }
        field(3; "Fecha y hora de matriculación"; DateTime)
        {
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
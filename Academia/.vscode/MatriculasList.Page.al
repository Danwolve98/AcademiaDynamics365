page 50110 Matriculas
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Matriculas;
    CardPageId = "Matriculas Card Page";
    Caption = 'Registration list', comment = 'ESP="List Matriculas"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Estudiante; Rec.Estudiante)
                {
                    Caption = 'Student', comment = 'ESP="Estudiante"';
                    ApplicationArea = All;
                }
                field("Estudiante Nombre"; Rec."Estudiante Nombre")
                {
                    Caption = 'Student Name', comment = 'ESP="Estudiante Nombre"';
                    ApplicationArea = All;
                }
                field(Curso; Rec.Curso)
                {
                    Caption = 'Course', comment = 'ESP="Curso"';
                    ApplicationArea = All;
                }
                field("Fecha y hora de matriculación"; Rec."Fecha y hora de matriculación")
                {
                    Caption = 'Date and time of registration', comment = 'ESP="Fecha y hora de matriculacion"';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
    }
}
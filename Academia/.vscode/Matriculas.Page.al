page 50110 Matriculas
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Matriculas;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Estudiante; Rec.Estudiante)
                {
                    ApplicationArea = All;
                }
                field(Curso; Rec.Curso)
                {
                    ApplicationArea = All;
                }
                field("Fecha y hora de matriculación"; Rec."Fecha y hora de matriculación")
                {
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
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
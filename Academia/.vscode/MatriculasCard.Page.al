page 50117 "Matriculas Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Matriculas;

    layout
    {
        area(Content)
        {
            group("Información General")
            {
                field("Nombre Estudiante"; Rec.Estudiante)
                {
                    ApplicationArea = All;

                }
                field("Nombre"; Rec.Curso)
                {
                    ApplicationArea = All;

                }

            }
            group("Fecha y Hora de Matrícula")
            {
                field("Fecha"; Rec."Fecha y hora de matriculación")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
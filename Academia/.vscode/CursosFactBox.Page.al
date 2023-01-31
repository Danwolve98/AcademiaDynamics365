page 50120 "Cursos FactBox Page"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = Cursos;
    Caption = 'Detalles de Curso';

    layout
    {
        area(Content)
        {
            group(Detalles)
            {
                field("Total alumnos"; Rec."Total Alumnos")
                {
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    begin
                        Page.Run(Page::Matriculas); //Falta iltrar la lista por pk de curso
                    end;
                }
            }
        }
    }

    actions
    {

    }


    var
        myInt: Integer;
}
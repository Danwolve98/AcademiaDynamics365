page 50129 "Cursos FactBoxPage"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = Cursos;
    Caption = 'Course Details', comment = 'ESP="Detalles de Curso"';

    layout
    {
        area(Content)
        {
            group(Detalles)
            {
                Caption = 'Details', comment = 'ESP="Detalles"';
                field("Total alumnos"; Rec."Total Alumnos")
                {
                    Caption = 'Total Students', comment = 'ESP="Total Alumnos"';
                    ApplicationArea = All;
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
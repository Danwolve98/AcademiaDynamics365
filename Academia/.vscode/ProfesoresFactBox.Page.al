page 50123 "Profesores FactBox Page"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = Profesores;
    Caption = 'Teacher Details', comment = 'ESP="Detalles del Profesor"';

    layout
    {
        area(Content)
        {
            group(Estadísticas)
            {
                Caption = 'Statistics', comment = 'ESP="Estadisticas"';
                field("Num. Ayudantes"; Rec." Num. Ayudantes")
                {
                    Caption = 'Num. Helpers', comment = 'ESP="Num. Ayudantes"';
                    ApplicationArea = All;
                }
                field("Num. de cursos que imparte"; Rec." Num. Cursos")
                {
                    Caption = 'Num. Courses', comment = 'ESP="Num. Cursos"';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
        }
    }
    var
        myInt: Integer;
}
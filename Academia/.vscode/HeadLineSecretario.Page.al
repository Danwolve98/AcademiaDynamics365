page 50128 "Headline Secretario"
{
    PageType = HeadlinePart;
    RefreshOnActivate = true;
    Caption = 'Headline Secretario', comment = 'ESP="Cabecera Secretario"';
    layout
    {
        area(Content)
        {
            group(Control1)
            {
                field("Saludo"; '¡Bienvenido de nuevo!')
                {
                    Caption = 'Welcome back!', comment = 'ESP="¡Bienvenido de nuevo!"';
                    ApplicationArea = All;

                }
                field("Salario"; CodeUnitSalaries.GetTotalSalarios())
                {
                    Caption = 'Total salaries', comment = 'ESP="Total Salarios"';
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }
    }

    trigger OnOpenPage()
    var
        Datos: Record "Cue Table Secretario";
    begin
        Datos.CalcFields("Salario Total No Docente", "Salario Total Profesores");
        CodeUnitSalaries.HeadlineOnOpenPage();
    end;


    var
        CodeUnitSalaries: Codeunit SalariosCodeUnit;
}
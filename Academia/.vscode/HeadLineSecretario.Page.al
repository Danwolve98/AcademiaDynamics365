page 50128 "Headline Secretario"
{
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(Control1)
            {
                field("Saludo"; '¡Bienvenido de nuevo!')
                {
                    ApplicationArea = All;

                }
                field("Salario"; CodeUnitSalaries.GetTotalSalarios())
                {
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }
    }

    /*trigger OnInit()
    var
        cu: Codeunit SalariosCodeUnit;
    begin
        cu.TotalSalarios();
    end;*/

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        CodeUnitSalaries.HeadlineOnOpenPage();
    end;


    var
        CodeUnitSalaries: Codeunit SalariosCodeUnit;
}
page 50119 "Estudiantes Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Estudiantes;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Sexo; Rec.Sexo)
                {
                    ApplicationArea = All;
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                }
                field("Telefono"; Rec.Telefono)
                {
                    ApplicationArea = All;
                }
                field("Fecha de Nacimiento"; Rec."Fecha de Nacimiento")
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
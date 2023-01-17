page 50112 Estudiantes
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiantes;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
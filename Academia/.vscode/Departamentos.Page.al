page 50113 Departamentos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamentos;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Despacho; Rec.Despacho)
                {
                    ApplicationArea = All;
                }
                field("Jefe de departamento"; Rec."Jefe de departamento")
                {
                    ApplicationArea = All;
                }
                field("Tarifa media"; Rec."Tarifa media")
                {
                    ApplicationArea = All;
                }

                field("Max Salario"; Rec."Max salario")
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
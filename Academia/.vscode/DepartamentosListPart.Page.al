page 50136 "Departamentos ListPart"
{
    Caption = 'Departments', comment = 'ESP="Departamentos"';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Departamentos Card Page";
    SourceTable = Departamentos;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Nombre; rec.Nombre)
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
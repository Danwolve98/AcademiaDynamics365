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
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Id; Rec.Id)
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
page 50111 Cursos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;

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
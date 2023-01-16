page 50114 Profesores
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Profesores;

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
            }
        }
        area(Factboxes)
        {

        }
    }
}
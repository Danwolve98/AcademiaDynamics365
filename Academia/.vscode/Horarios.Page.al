page 50115 Horarios
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Horarios;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Curso; Rec.Curso)
                {
                    ApplicationArea = All;
                }
                field(Dia; Rec.Dia)
                {
                    ApplicationArea = All;
                }
                field("Hora de inicio"; Rec."Hora de inicio")
                {
                    ApplicationArea = All;
                }
                field("Hora de finalización"; Rec."Hora de finalización")
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
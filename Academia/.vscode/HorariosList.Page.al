page 50115 Horarios
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Horarios;
    Caption = 'Schedule List', comment = 'ESP="Lista Horarios"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Dia; Rec.Dia)
                {
                    Caption = 'Day', comment = 'ESP="Dia"';
                    ApplicationArea = All;
                }
                field(Curso; Rec.Curso)
                {
                    Caption = 'Course', comment = 'ESP="Curso"';
                    ApplicationArea = All;
                }
                field("Hora de inicio"; Rec."Hora de inicio")
                {
                    Caption = 'Start Time', comment = 'ESP="Hora de inicio"';
                    ApplicationArea = All;
                }
                field("Hora de finalización"; Rec."Hora de finalización")
                {
                    Caption = 'End Time', comment = 'ESP="Hora de finalizacion"';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}
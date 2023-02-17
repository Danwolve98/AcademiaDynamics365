page 50125 "Subpágina Horarios"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = Horarios;
    Caption = 'Subpage Schedules', comment = 'ESP="Subpagina Horarios"';

    layout
    {
        area(Content)
        {
            repeater(Schedule)
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
                    Editable = false;
                }
                field("Hora de inicio"; Rec."Hora de inicio")
                {
                    Caption = 'Start Time', comment = 'ESP="Hora de inicio"';
                    ApplicationArea = All;
                }
                field("Hora de finalización"; Rec."Hora de finalización")
                {
                    Caption = 'Ending Time', comment = 'ESP="Hora de finalizacion"';
                    ApplicationArea = All;
                }
            }
        }
    }
}
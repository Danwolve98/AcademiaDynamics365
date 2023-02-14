page 50131 "Cue Cursos Page"
{
    PageType = CardPart;
    SourceTable = "Cue Curso Table";
    layout
    {
        area(Content)
        {
            cuegroup("Courses Data")
            {
                field("Media Tarifa Cursos"; Rec."Media Tarifas Cursos")
                {
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Total Horas"; Rec."Total Horas")
                {
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Número Cursos Informática"; Rec."Número Cursos Informática")
                {
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Course")
            {
                Caption = 'Create Course', comment = 'ESP="Crear Curso"';
                ApplicationArea = All;
                RunObject = page "Cursos Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
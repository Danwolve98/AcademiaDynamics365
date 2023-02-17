page 50131 "Cue Cursos Page"
{
    Caption = 'Cue Courses Page', comment = 'ESP="Cue Cursos Page"';
    PageType = CardPart;
    SourceTable = "Cue Curso Table";
    layout
    {
        area(Content)
        {
            cuegroup("Courses Data")
            {
                Caption = 'Courses Data', comment = 'ESP="Datos de cursos"';
                field("Media Tarifa Cursos"; Rec."Media Tarifas Cursos")
                {
                    Caption = 'Average Tuition Fee', comment = 'ESP="Media Tarifa Cursos"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Total Horas"; Rec."Total Horas")
                {
                    Caption = 'Total Hours', comment = 'ESP="Total Horas"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Número Cursos Informática"; Rec."Número Cursos Informática")
                {
                    Caption = 'Nº of Informatic Courses', comment = 'ESP="Número Cursos Informática"';
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
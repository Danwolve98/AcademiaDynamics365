page 50130 "Cue Card Secretario"
{
    Caption = 'Secretary', comment = 'ESP="Secretario"';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Cue Table Secretario";
    PromotedActionCategories = 'New,Process,Report,Create', comment = 'ESP="Nuevo,Procesar,Informe,Crear"';

    layout
    {
        area(Content)
        {
            cuegroup("Datos Trabajadores")
            {
                Caption = 'Workers data', comment = 'ESP="Datos Trabajadores"';
                field("Num. Profesores"; Rec."Num. Profesores")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Num. Profesores"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                }
                field("Salarios Total Profesores"; Rec."Salario Total Profesores")
                {
                    Caption = 'Teachers Total salaries', comment = 'ESP="Salarios Total Profesores"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                }

                field("Salarios Total No Docentes"; Rec."Salario Total No Docente")
                {
                    Caption = 'Non-Teachers Total salaries', comment = 'ESP="Salarios Total No Docentes"';
                    ApplicationArea = All;
                    DrillDownPageId = "No Docente";
                }

            }
            cuegroup("Datos Estudiantes")
            {
                Caption = 'Student data', comment = 'ESP="Datos Estudiantes"';
                field("Num. Estudiantes"; Rec."Num. Estudiantes")
                {
                    Caption = 'Number of estudents', comment = 'ESP="Num. Estudiantes"';
                    ApplicationArea = All;
                    DrillDownPageId = Estudiantes;
                }
                field("Num. Alumnnos"; Rec."Num. Alumnnos")
                {
                    Caption = 'Number of male estudents', comment = 'ESP="Num. Alumnos"';
                    ApplicationArea = All;
                    DrillDownPageId = Estudiantes;
                }
                field("Num. Alumnnas"; Rec."Num. Alumnnas")
                {
                    Caption = 'Number of female estudents', comment = 'ESP="Num. Alumnas"';
                    ApplicationArea = All;
                    DrillDownPageId = Estudiantes;
                }
                field("Media Tarifas Cursos"; Rec."Media Tarifas Cursos")
                {
                    Caption = 'Average course fee', comment = 'ESP="Media Tarifas Cursos"';
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
            action("Create Teacher")
            {
                Caption = 'Create Teacher', comment = 'ESP="Crear Profesor"';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category4;
                RunObject = page "Profesores Card Page";
                RunPageMode = Create;
                Image = PersonInCharge;
            }
            action("Create Non-Teacher")
            {
                Caption = 'Create Non-Teacher', comment = 'ESP="Crear No Docente"';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category4;
                RunObject = page "No Docente Card Page";
                RunPageMode = Create;
                Image = ContactPerson;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;


}

profile "Secretario"
{
    Caption = 'Secretary', comment = 'ESP="Secretario"';
    Enabled = true;
    ProfileDescription = 'Perfil Secretario';
    Promoted = true;
    RoleCenter = "Secretario Role Center";
}
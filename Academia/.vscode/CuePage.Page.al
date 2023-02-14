page 50130 "Cue Card Secretario"
{
    Caption = 'Secretary', comment = 'ESP="Secretario"';
    PageType = CardPart;
    SourceTable = "Cue Table Secretario";
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
                    Caption = 'Number of students', comment = 'ESP="Num. Estudiantes"';
                    ApplicationArea = All;
                    DrillDownPageId = Estudiantes;
                }
                field("Num. Alumnnos"; Rec."Num. Alumnnos")
                {
                    Caption = 'Number of male students', comment = 'ESP="Num. Alumnos"';
                    ApplicationArea = All;
                    DrillDownPageId = Estudiantes;
                }
                field("Num. Alumnnas"; Rec."Num. Alumnnas")
                {
                    Caption = 'Number of female students', comment = 'ESP="Num. Alumnas"';
                    ApplicationArea = All;
                    DrillDownPageId = Estudiantes;
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
                RunObject = page "Profesores Card Page";
                RunPageMode = Create;
                Image = PersonInCharge;
            }
            action("Create Non-Teacher")
            {
                Caption = 'Create Non-Teacher', comment = 'ESP="Crear No Docente"';
                ApplicationArea = All;
                RunObject = page "No Docente Card Page";
                RunPageMode = Create;
                Image = ContactPerson;
            }
            action("Create Student")
            {
                Caption = 'Create Student', comment = 'ESP="Crear Estudiante"';
                ApplicationArea = All;
                RunObject = page "Estudiantes Card Page";
                RunPageMode = Create;
                Image = CoupledContactPerson;
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

profile "Secretario"
{
    Caption = 'Secretary', comment = 'ESP="Secretario"';
    Enabled = true;
    ProfileDescription = 'Perfil Secretario';
    Promoted = true;
    RoleCenter = "Secretario Role Center";
}
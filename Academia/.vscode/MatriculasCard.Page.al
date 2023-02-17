page 50117 "Matriculas Card Page"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Matriculas;
    Caption = 'Registration Card', comment = 'ESP="Ficha Matricula"';

    layout
    {
        area(Content)
        {
            group("Información General")
            {
                Caption = 'General Information', comment = 'ESP="Informacion General"';
                field("Id Estudiante"; Rec.Estudiante)
                {
                    Caption = 'Id Student', comment = 'ESP="Id Estudiante"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }

                field("Curso "; Rec.Curso)
                {
                    Caption = 'Course', comment = 'ESP="Curso"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }

            }
            group("Fecha y Hora de Matrícula")
            {
                Caption = 'Date and time of registration', comment = 'ESP="Fecha y hora de la matricula"';
                field("Fecha"; Rec."Fecha y hora de matriculación")
                {
                    Caption = 'Date', comment = 'ESP="Fecha"';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group(Informacion)
            {
                Caption = 'Information', comment = 'ESP="Informacion"';
                action("Curso")
                {
                    Caption = 'Course', comment = 'ESP="Curso"';
                    ApplicationArea = All;
                    RunObject = page "Cursos Card Page";
                    RunPageLink = Nombre = field(Curso);
                    Image = BookingsLogo;
                }
            }
            group(Estudiante)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                action("Datos")
                {
                    Caption = 'Data', comment = 'ESP="Datos"';
                    ApplicationArea = All;
                    RunObject = page "Estudiantes Card Page";
                    RunPageLink = Id = field(Estudiante);
                    Image = Customer;
                }
                action("Matriculas")
                {
                    Caption = 'Tuitions', comment = 'ESP="Matriculas"';
                    ApplicationArea = All;
                    RunObject = page Matriculas;
                    RunPageLink = Estudiante = field(Estudiante);
                    Image = "8ball";
                }
            }



        }
    }
}
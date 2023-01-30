page 50117 "Matriculas Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Matriculas;

    layout
    {
        area(Content)
        {
            group("Información General")
            {
                field("Id Estudiante"; Rec.Estudiante)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }

                field("Curso "; Rec.Curso)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }

            }
            group("Fecha y Hora de Matrícula")
            {
                field("Fecha"; Rec."Fecha y hora de matriculación")
                {
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
                action("Curso")
                {
                    ApplicationArea = All;
                    RunObject = page "Cursos Card Page";
                    RunPageLink = Nombre = field(Curso);
                    Image = BookingsLogo;
                }
            }
            group(Estudiante)
            {
                action("Datos")
                {
                    ApplicationArea = All;
                    RunObject = page "Estudiantes Card Page";
                    RunPageLink = Id = field(Estudiante);
                    Image = Customer;
                }
                action("Matriculas")
                {
                    ApplicationArea = All;
                    RunObject = page Matriculas;
                    RunPageLink = Estudiante = field(Estudiante);
                    Image = "8ball";
                }
            }



        }
    }

    var
        myInt: Integer;
}
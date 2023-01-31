page 50118 "Cursos Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Cursos;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Descripción; Rec.Descripción)
                {
                    ApplicationArea = All;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    ApplicationArea = All;
                }
                field("Tarifa de laboratorio"; Rec."Tarifa de laboratorio")
                {
                    ApplicationArea = All;
                }
            }

            group("Profesor asociado")
            {
                field("Profesor"; Rec.Profesor)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Departamento; Rec.Departamento)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
            }
        }
        area(FactBoxes)
        {
            part("Información extra"; "Cursos FactBox Page")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
        }
    }

    var
        myInt: Integer;
}
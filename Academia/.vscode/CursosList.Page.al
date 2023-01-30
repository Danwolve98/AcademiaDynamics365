page 50111 Cursos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;
    CardPageId = "Cursos Card Page";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
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
                field("Profesor"; Rec.Profesor)
                {
                    ApplicationArea = All;
                }
                field(Departamento; Rec.Departamento)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
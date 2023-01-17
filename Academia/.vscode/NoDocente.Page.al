page 50116 "No Docente"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "No Docente";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Direccion; Rec.Direccion)
                {
                    ApplicationArea = All;
                }
                field(Salario; Rec.Salario)
                {
                    ApplicationArea = All;
                }
                field(Puesto; Rec.Puesto)
                {
                    ApplicationArea = All;
                }
                field("Profesor a cargo"; Rec."Profesor a cargo")
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
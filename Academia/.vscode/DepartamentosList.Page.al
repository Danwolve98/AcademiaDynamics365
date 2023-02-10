page 50113 Departamentos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamentos;
    CardPageId = "Departamentos Card Page";
    Caption = 'Departments List', comment = 'ESP="Lista Departamentos"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field(Despacho; Rec.Despacho)
                {
                    Caption = 'Office', comment = 'ESP="Despacho"';
                    ApplicationArea = All;
                }
                field("Jefe de departamento"; Rec."Jefe de departamento")
                {
                    Caption = 'Head of department', comment = 'ESP="Jefe de departamento"';
                    ApplicationArea = All;
                }
                field("Tarifa media"; Rec."Tarifa media")
                {
                    Caption = 'Average fee', comment = 'ESP="Tarifa media"';
                    ApplicationArea = All;
                }

                field("Max Salario"; Rec."Max salario")
                {
                    Caption = 'Max Salary', comment = 'ESP="Max Salario"';
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
    }
}
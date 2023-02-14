page 50134 "Profesores ListPart"
{
    Caption = 'Teachers', comment = 'ESP="Profesores"';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Profesores Card Page";
    SourceTable = Profesores;

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
                field(Salario; Rec.Salario)
                {
                    ApplicationArea = All;

                }
                field(Departamento; Rec.Departamento)
                {
                    ApplicationArea = all;
                }
            }
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
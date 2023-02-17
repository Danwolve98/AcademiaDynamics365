page 50134 "Profesores ListPart"
{
    Caption = 'Teachers', comment = 'ESP="Profesores"';
    PageType = ListPart;
    UsageCategory = None;
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
                    Caption = 'Id', comment = 'ESP="Id"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field(Salario; Rec.Salario)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;

                }
                field(Departamento; Rec.Departamento)
                {
                    Caption = 'Department', comment = 'ESP="Departamento"';
                    ApplicationArea = all;
                }
            }
        }
    }
}
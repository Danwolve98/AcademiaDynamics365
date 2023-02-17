page 50114 Profesores
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Profesores;
    CardPageId = "Profesores Card Page";
    Caption = 'Teachers List', comment = 'ESP="Lista Profesores"';

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
                field(Direccion; Rec.Direccion)
                {
                    Caption = 'Address', comment = 'ESP="Direccion"';
                    ApplicationArea = All;
                }
                field("Fecha de Contratacion"; Rec."Fecha de Contratacion")
                {
                    Caption = 'Date of Hire', comment = 'ESP="Fecha de Contratacion"';
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
                    ApplicationArea = All;
                }
                field(" Num. Ayudantes"; Rec." Num. Ayudantes")
                {
                    Caption = 'Num. Helpers', comment = 'ESP="Num. Ayudantes"';
                    ApplicationArea = All;
                }
                field(" Num. Cursos"; Rec." Num. Cursos")
                {
                    Caption = 'Courses', comment = 'ESP="Cursos"';
                    ApplicationArea = All;
                }
            }
        }
    }
}
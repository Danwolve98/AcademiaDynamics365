page 50114 Profesores
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
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
                field(Direccion; Rec.Direccion)
                {
                    ApplicationArea = All;
                }
                field("Fecha de Contratacion"; Rec."Fecha de Contratacion")
                {
                    ApplicationArea = All;
                }
                field(Salario; Rec.Salario)
                {
                    ApplicationArea = All;
                }
                field(Departamento; Rec.Departamento)
                {
                    ApplicationArea = All;
                }
                field("Jefe Departamento"; Rec."Jefe Departamento")
                {
                    ApplicationArea = All;
                }
                field(" Num. Ayudantes"; Rec." Num. Ayudantes")
                {
                    ApplicationArea = All;
                }
                field(" Num. Cursos"; Rec." Num. Cursos")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}
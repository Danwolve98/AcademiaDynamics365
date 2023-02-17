page 50121 "Profesores Card Page"
{
    PageType = Card;
    UsageCategory = None;
    Caption = 'Teacher Card', comment = 'ESP="Ficha Profesor"';
    SourceTable = Profesores;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Group', comment = 'ESP="Grupo"';
                field(Id; Rec.Id)
                {
                    Caption = 'Id', comment = 'ESP="Id"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Direccion; Rec.Direccion)
                {
                    Caption = 'Address', comment = 'ESP="Direccion"';
                    ApplicationArea = All;
                }
            }
            group(Laboral)
            {
                Caption = 'Labor', comment = 'ESP="Laboral"';
                field("Fecha de Contratacion"; Rec."Fecha de Contratacion")
                {
                    Caption = 'Hiring', comment = 'ESP="Contratacion"';
                    ApplicationArea = All;
                    Importance = Promoted;
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
                    Importance = Promoted;
                }
                field(" Num. Ayudantes"; Rec." Num. Ayudantes")
                {
                    Caption = 'Num. Helpers', comment = 'ESP="Num. Ayudantes"';
                    ApplicationArea = All;
                }
                field(" Num. Cursos"; Rec." Num. Cursos")
                {
                    Caption = 'Num. Courses', comment = 'ESP="Num. Cursos"';
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            part("Información extra"; "Profesores FactBox Page")
            {
                Caption = 'Extra Information', comment = 'ESP="Informacion Extra"';
                ApplicationArea = all;
                SubPageLink = Id = field(Id);
            }
        }
    }
}
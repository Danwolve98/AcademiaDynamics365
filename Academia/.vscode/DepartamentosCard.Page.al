page 50124 "Departamentos Card Page"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Departamentos;
    Caption = 'Department Card', comment = 'ESP="Ficha Departamento"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
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
            group(Comunicacion)
            {
                Caption = 'Comunication', comment = 'ESP="Comunicacion"';
                field(Despacho; Rec.Despacho)
                {
                    Caption = 'Office', comment = 'ESP="Despacho"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Jefe de departamento"; Rec."Jefe de departamento")
                {
                    Caption = 'Head of department', comment = 'ESP="Jefe de departamento"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
            }
            group(Cursos)
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                part("Lista Cursos"; "Cursos Subpage")
                {
                    Caption = 'Courses List', comment = 'ESP="Lista Cursos"';
                    SubPageLink = Departamento = field(Nombre);
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Profesores)
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                ApplicationArea = All;
                RunObject = page Profesores;
                RunPageLink = Departamento = field(Nombre);
                Image = PersonInCharge;
            }

            action(Coordinador)
            {
                Caption = 'Coordinator', comment = 'ESP="Coordinador"';
                ApplicationArea = All;
                RunObject = page "Profesores Card Page";
                RunPageLink = Id = field("Jefe de departamento");
                Image = ContactPerson;
            }
        }
    }

    var
        myInt: Integer;
}
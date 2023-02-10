page 50132 "No Docente Card Page"
{
    PageType = Card;
    UsageCategory = None;
    Caption = 'Non-Teaching Card', comment = 'ESP="Ficha No Docente"';
    SourceTable = "No Docente";

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
                field(Salario; Rec.Salario)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;
                }
                field(Puesto; Rec.Puesto)
                {
                    Caption = 'Num. Helpers', comment = 'ESP="Num. Ayudantes"';
                    ApplicationArea = All;
                }
                field("Profesor a cargo"; Rec."Profesor a cargo")
                {
                    Caption = '', comment = 'ESP="Profesor a cargo"';
                    ApplicationArea = All;
                }
                //////////////////////////////////////////////////////////////////////////////////////////
            }
        }
    }

    actions
    {
        area(Processing)
        {
        }
    }

    var
        myInt: Integer;
}
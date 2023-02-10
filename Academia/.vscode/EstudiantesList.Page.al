page 50112 Estudiantes
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiantes;
    CardPageId = "Estudiantes Card Page";
    Caption = 'Student List', comment = 'ESP="Lista Estudiantes"';

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
                field(Sexo; Rec.Sexo)
                {
                    Caption = 'Gender', comment = 'ESP="Sexo"';
                    ApplicationArea = All;
                }
                field("Dirección"; Rec."Dirección")
                {
                    Caption = 'Address', comment = 'ESP="Direccion"';
                    ApplicationArea = All;
                }
                field("Telefono"; Rec.Telefono)
                {
                    Caption = 'Phone Number', comment = 'ESP="Telefono"';
                    ApplicationArea = All;
                }
                field("Fecha de Nacimiento"; Rec."Fecha de Nacimiento")
                {
                    Caption = 'Birthdate', comment = 'ESP="Fecha de Nacimiento"';
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
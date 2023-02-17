page 50116 "No Docente"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "No Docente";
    CardPageId = "No Docente Card Page";
    Caption = 'Non-Teaching List', comment = 'ESP="Lista no Docente"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'GroupName', comment = 'ESP="Nombre Grupo"';
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
                field(Salario; Rec.Salario)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;
                }
                field(Puesto; Rec.Puesto)
                {
                    Caption = 'Position', comment = 'ESP="Puesto"';
                    ApplicationArea = All;
                }
                field("Profesor a cargo"; Rec."Profesor a cargo")
                {
                    Caption = 'Teacher in charge', comment = 'ESP="Profesor a cargo"';
                    ApplicationArea = All;
                }
            }
        }
    }
}
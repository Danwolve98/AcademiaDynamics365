page 50136 "Departamentos ListPart"
{
    Caption = 'Departments', comment = 'ESP="Departamentos"';
    PageType = ListPart;
    UsageCategory = None;
    CardPageId = "Departamentos Card Page";
    SourceTable = Departamentos;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Nombre; rec.Nombre)
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
            }
        }
    }
}
page 50111 Cursos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;
    CardPageId = "Cursos Card Page";
    Caption = 'Courses List', comment = 'ESP="Lista Cursos"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field(Descripción; Rec.Descripción)
                {
                    Caption = 'Description', comment = 'ESP="Descripción"';
                    ApplicationArea = All;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                }
                field("Tarifa de laboratorio"; Rec."Tarifa de laboratorio")
                {
                    Caption = 'Lab fee', comment = 'ESP="Tarifa de laboratorio"';
                    ApplicationArea = All;
                }
                field("Profesor"; Rec.Profesor)
                {
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                    ApplicationArea = All;
                }
                field(Departamento; Rec.Departamento)
                {
                    Caption = 'Department', comment = 'ESP="Departamento"';
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
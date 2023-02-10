page 50118 "Cursos Card Page"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Cursos;
    Caption = 'Course Card', comment = 'ESP="Ficha Curso"';

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
            }

            group("Profesor asociado")
            {
                Caption = 'Associated teacher Group', comment = 'ESP="Grupo profesor asociado"';
                field("Profesor"; Rec.Profesor)
                {
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Departamento; Rec.Departamento)
                {
                    Caption = 'Department', comment = 'ESP="Departamento"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
            }
            group(Horario)
            {
                Caption = 'Schedule', comment = 'ESP="Horario"';
                part("Horarios"; "Subpágina Horarios")
                {
                    Caption = 'Schedule', comment = 'ESP="Horario"';
                    SubPageLink = Curso = field(Nombre);
                }
            }
        }
        area(FactBoxes)
        {
            part("Información extra"; "Cursos FactBoxPage")
            {
                Caption = 'Extra Information', comment = 'ESP="Información extra"';
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
        }
    }

    var
        myInt: Integer;
}
page 50126 "Cursos Subpage"
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = Cursos;
    Caption = 'SubPage Courses', comment = 'ESP="Subpágina Cursos"';

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
                field(Departamento; Rec.Departamento)
                {
                    Caption = 'Department', comment = 'ESP="Departamento"';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Curso)
            {
                Caption = 'Course', comment = 'ESP="Curso"';
                action(Matriculas)
                {
                    Caption = 'Tuitions', comment = 'ESP="Matriculas"';
                    ApplicationArea = All;
                    RunObject = page Matriculas;
                    Image = MailAttachment;
                    RunPageLink = Curso = field(Nombre);
                    RunPageMode = View;
                }
                action(Datos)
                {
                    Caption = 'Data', comment = 'ESP="Datos"';
                    ApplicationArea = All;
                    RunObject = page "Cursos Card Page";
                    Image = SuggestItemPrice;
                    RunPageLink = Nombre = field(Nombre);
                    RunPageMode = View;
                }
            }

        }
    }
}
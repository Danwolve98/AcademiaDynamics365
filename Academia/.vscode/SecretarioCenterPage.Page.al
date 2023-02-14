page 50141 "Secretario Role Center"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline Secretario")
            {
                ApplicationArea = all;
            }
            part("Cue Card Secretario"; "Cue Card Secretario")
            {
                ApplicationArea = All;
            }
            part("Cue Card Cursos"; "Cue Cursos Page")
            {
                ApplicationArea = All;
            }
            part("Profesores"; "Profesores ListPart")
            {
                ApplicationArea = all;
            }
            part("Departamentos"; "Departamentos ListPart")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        area(Creation)
        {
            action("New Courses")
            {
                Caption = 'New Course', comment = 'ESP="Nuevo Curso"';
                ApplicationArea = All;
                RunObject = page "Cursos Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
            action("New Teacher")
            {
                Caption = 'New Teacher', comment = 'ESP="Nuevo Profesor"';
                ApplicationArea = All;
                RunObject = page "Profesores Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
            action("New Department")
            {
                Caption = 'New Department', comment = 'ESP="Nuevo Departamento"';
                ApplicationArea = All;
                RunObject = page "Departamentos Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
            action("New Student")
            {
                Caption = 'New Student', comment = 'ESP="Nuevo Estudiante"';
                ApplicationArea = All;
                RunObject = page "Estudiantes Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
            action("New Tuition")
            {
                Caption = 'New Tuition', comment = 'ESP="Nueva Matrícula"';
                ApplicationArea = All;
                RunObject = page "Matriculas Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
            action("New Non-teacher")
            {
                Caption = 'New Non-teacher', comment = 'ESP="Nueva No Docente"';
                ApplicationArea = All;
                RunObject = page "No Docente Card Page";
                RunPageMode = Create;
                Image = ExportMessage;
            }
        }
        area(Embedding)
        {
            action("Departments2")
            {
                Caption = ' Departments', comment = 'ESP=" Departamentos"';
                ApplicationArea = All;
                RunObject = page Departamentos;
            }
            action("Teachers2")
            {
                Caption = ' Teachers', comment = 'ESP=" Profesores"';
                ApplicationArea = All;
                RunObject = page Profesores;
            }
            action("Students2")
            {
                Caption = ' Students', comment = 'ESP=" Estudiantes"';
                ApplicationArea = All;
                RunObject = page Estudiantes;
                RunPageMode = Create;
            }
        }
        area(Sections)
        {

            group(Departments)
            {
                action("Departments3")
                {
                    Caption = ' Departments', comment = 'ESP=" Departamentos"';
                    ApplicationArea = All;
                    RunObject = page Departamentos;
                }
                action("Teachers")
                {
                    Caption = ' Teachers', comment = 'ESP=" Profesores"';
                    ApplicationArea = All;
                    RunObject = page Profesores;
                }
            }

            group(Students)
            {
                action(" Students")
                {
                    Caption = ' Students', comment = 'ESP=" Estudiantes"';
                    ApplicationArea = All;
                    RunObject = page Estudiantes;
                    RunPageMode = Create;
                }

                action(" Tuitions")
                {
                    Caption = ' Tuitions', comment = 'ESP=" Matriculas"';
                    ApplicationArea = All;
                    RunObject = page Matriculas;
                }
            }
            group("Non-Teachers")
            {
                action(" Non-Teachers")
                {
                    Caption = ' Non-Teachers', comment = 'ESP=" No Docentes"';
                    ApplicationArea = All;
                    RunObject = page "No Docente";
                }
            }
            group(Courses)
            {
                action(" Courses")
                {
                    Caption = ' Courses', comment = 'ESP=" Cursos"';
                    ApplicationArea = All;
                    RunObject = page Cursos;
                    RunPageMode = Create;
                }
                action(" Tuitions2")
                {
                    Caption = ' Tuitions', comment = 'ESP=" Matriculas"';
                    ApplicationArea = All;
                    RunObject = page Matriculas;
                }
                action(" Schedules")
                {
                    Caption = ' Schedules', comment = 'ESP=" Horarios"';
                    ApplicationArea = All;
                    RunObject = page Horarios;
                }
            }
        }
    }
    trigger OnInit()
    var
        codigo: Codeunit SalariosCodeUnit;
    begin
        TotalSalarios := codigo.TotalSalarios();
    end;

    var
        TotalSalarios: Text[100];
}
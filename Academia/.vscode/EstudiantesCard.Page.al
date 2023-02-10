page 50119 "Estudiantes Card Page"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Estudiantes;
    Caption = 'Student Card', comment = 'ESP="Ficha Estudiante"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field(Id; Rec.Id)
                {
                    Caption = 'Id', comment = 'ESP="Id"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Sexo; Rec.Sexo)
                {
                    Caption = 'Gender', comment = 'ESP="Sexo"';
                    ApplicationArea = All;
                }

                field("Fecha de Nacimiento"; Rec."Fecha de Nacimiento")
                {
                    Caption = 'Birthdate', comment = 'ESP="Fecha de Nacimiento"';
                    ApplicationArea = All;
                }
            }
            group(Comunicación)
            {
                Caption = 'Communication', comment = 'ESP="Comunicacion"';
                field("Dirección"; Rec."Dirección")
                {
                    Caption = 'Addres', comment = 'ESP="Direccion"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Telefono"; Rec.Telefono)
                {
                    Caption = 'Phone Number', comment = 'ESP="Telefono"';
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Nueva Matrícula")
            {
                Caption = 'New Registration', comment = 'ESP="Nueva Matricula"';
                ApplicationArea = All;
                RunObject = page "Matriculas Card Page";
                RunPageLink = Estudiante = field(Id);
                Image = Bank;
                RunPageMode = Create;
                Promoted = true;
            }
        }
        area(Navigation)
        {
            action("Mostrar Matrículas")
            {
                Caption = 'Show Tuitions', comment = 'ESP="Mostrar Matriculas"';
                ApplicationArea = All;
                RunObject = page Matriculas;
                RunPageLink = Estudiante = field(Id);
                Image = Accounts;
                Promoted = true;
            }
        }
    }

    var
        myInt: Integer;
}
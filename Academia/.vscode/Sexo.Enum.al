enum 50101 Sexo
{
    Extensible = true;
    Caption = 'Gender', comment = 'ESP="Sexo"';

    value(0; "")
    {
        Caption = '', comment = 'ESP=""';
    }
    value(1; "Hombre")
    {
        Caption = 'Men', comment = 'ESP="Hombre"';
    }
    value(2; "Mujer")
    {
        Caption = 'Women', comment = 'ESP="Mujer"';
    }
}
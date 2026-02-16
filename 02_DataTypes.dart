main(){
    //========== numeros ==============
        int a = 10;
        double b = 3.14;
        int? c;
        late int d;
        d = 20;

        print(a);
        print(b);
        print(c);
        print(d);
        print(a + b);

    //========== cadenas ==============
    String nombre = 'caro';
    String apellido = "Piz";
    String apellidoRandom = 'O\'Connor';
    String? cadenaVacia;
    String nombreCompleto = '$nombre $apellido';
    String multiLinea = 
    '''
    hOLA mundo
        ¿Cómo estas $nombre $apellido?
        Ya me quiero ir papa $apellido
    ''';


    print(nombre);
    print(apellido);
    print(nombreCompleto);
    print(cadenaVacia); 
    print(apellidoRandom);
    print(multiLinea);


    //========== booleanos ==============

    bool isActive = true;
    bool isNotActive = !isActive;

    print(isActive);
    print(isNotActive);

    //========== listas / Arrays ==============
    var general = ['Lex Luthor', 'Red Skull', 'Doom', 1, true, 3.14];
    List<String> villanos = ['Lex Luthor', 'Red Skull', 'Doom'];
    villanos[0] = 'Bizarro';
    print(general);
    print(villanos);
    villanos.add ('Siniestro');
    villanos.add ('Siniestro');
    villanos.add ('Siniestro');
    villanos.add ('Siniestro');
    print(villanos);

    
    //========== conjuntos / sets ==============
    var villanosSet = {'Lex Luthor', 'Red Skull', 'Doom', 1, true, 3.14};
    Set<String> villanosSetString = ['Lex Luthor', 'Red Skull', 'Doom'];
    print(villanosSet);
    print(villanosSetString);

    villanosSetString.add ('Siniestro');
    villanosSetString.add ('Siniestro');
    villanosSetString.add ('Siniestro');
    villanosSetString.add ('Siniestro');
    print(villanosSetString);

    var villanosSet2 = villanos.toSet();
    print(villanosSet2.toList());

    
    //========== mapas / diccionarios ==============}
    var ironman = {
        'nombre': 'Tony Stark',
        'poder': 'Inteligencia y el dinero',
        'edad': 40,
        };

        Map<String, dynamic> warMachine = {
        'nombre': 'Steve',
        'poder': 'tactico y tecnologia',
        'edad': 40,
        };

        Map<String, dynamic> capinAmerica = Map() {(
        capitanAmerica['nombre'] = 'Steve Rogers';
        capitanAmerica.addAll{
        'nombre': 'Steve',
        'poder': 'fuera, agilidad y resitencia',
        'edad': 102,)
        };
        };

        print(ironman)
        print(warMachine);
        print(ironman['nombre']);
        print(capinAmerica['nombre']);

}

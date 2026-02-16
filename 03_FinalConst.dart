main(){
    var a = 10;
    final double b = 10;
    const double c = 10;

    print(a);
    print(b);
    print(c);

    //final persoasFinal = ['Caro', 'Piz'];
    //const personasConst = ['Caro2', 'Piz2'];
    final List<String> personasFinal = ['Caro', 'Piz'];
    List<String> personasConst = const['Caro2', 'Piz2'];

    //personasfinal = ['Nuevo', 'Nuevo2'];
    //personasConst = ['Nuevo', 'Nuevo2']; 

    personasFinal.add('piz');
    personasConst.add('piz2');

    print(personasFinal);
    print(personasConst);
}


// var = valor variable
// final = valor final, que ya no se va a modificar. Se puede modificar en runtime, pero una vez asignado no puede cambiar su valor
// const = valor constante. No se puede modificar en runtime
// late = La asignación del valor, se hace en runtime ANTES de que la variable se utilize

void main() {
  const int a = 6;
  //a = 7;

  void assignRuntimeValue(int b) {
    final String runtimeFinal = b == 5 ? "Five" : "Other";
    // runtimeFinal = "Override value";
    print(runtimeFinal);
  }

  // assignRuntimeValue(a);
}

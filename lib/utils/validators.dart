class Validators {
  static String? validateRequired(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Campo obligatorio';
    }
    return null;
  }

  static String? validatePositiveNumber(String? value) {
    final number = int.tryParse(value ?? '');
    if (number == null || number <= 0) {
      return 'Debe ser un número positivo';
    }
    return null;
  }
}

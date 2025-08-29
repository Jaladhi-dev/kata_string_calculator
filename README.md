# Flutter String Calculator (TDD Kata)

A Flutter app that implements the classic **String Calculator** kata using a Test-Driven
Development (TDD) approach. Designed to reinforce core TDD principles while also leveraging
Flutter’s project structure and tooling.

## 🔨 What the Calculator Does

The central method, `int add(String numbers)`, handles:

1. **Empty input** → returns `0`.
2. **Single number input**, e.g. `"1"` → returns `1`.
3. **Two numbers separated by commas**, e.g. `"1,5"` → returns `6`.
4. **Multiple numbers**, comma-separated.
5. **New lines as separators**, e.g. `"1\n2,3"` → returns `6`.
6. **Custom delimiters**, using the format like `"//;\n1;2"` → returns `3`.
7. **Negatives**: throws an exception with all negative values listed, e.g.
   `"negative numbers not allowed: -2, -5"`.

---

## Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/Jaladhi-dev/kata_string_calculator.git
```

### 2. Run Tests as You Go

```bash
flutter test
```

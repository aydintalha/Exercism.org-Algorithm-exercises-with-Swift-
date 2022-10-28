func dailyRateFrom(hourlyRate: Int) -> Double {
   return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return ((Double(hourlyRate) * 8.0 * 22.0) * (100.0 - discount) / 100.0).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
     return (budget / ((Double(hourlyRate) * 8) * (100.0 - discount) / 100.0)).rounded(.down)
}

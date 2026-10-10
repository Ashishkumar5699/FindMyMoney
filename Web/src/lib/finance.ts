// A card bill payment settles card spends that are already recorded one by one; counting it as spending double counts them.
export const isCardBillPayment = (e: { category: string }) => e.category === 'Credit Card Bill';

// Only EMIs not yet paid for the month: paid ones are already recorded as "EMI" expenses.
export function emisDue(emis: { emiAmount: number; nextDueDate: string }[], year: number, month: number): number {
  const nextMonthStart = new Date(year, month, 1);
  return emis
    .filter(e => new Date(e.nextDueDate) < nextMonthStart)
    .reduce((s, e) => s + e.emiAmount, 0);
}

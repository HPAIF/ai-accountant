# Registers — the company's financial memory

All registers are **append-only tables**. Add rows; to change a status, update the status cell
and add an event line under "Events" with the date (so history is never lost). Every row points
to the file in `documents/` (relative path). IDs never get reused. When the company has more than
one product, add the product slug in a `project` note so revenue and costs can be split.

| Register | IDs | What |
|---|---|---|
| contracts.md | C-0001 | financial side of every contract |
| invoices-out.md | INV-O-YYYY-0001 | invoices / acts issued to customers |
| invoices-in.md | INV-I-YYYY-0001 | invoices / bills / receipts from suppliers |
| bank.md | BS-YYYY-MM-bank | bank accounts + imported statements |
| payroll.md | P-YYYY-MM | employees, contractors, monthly runs |
| assets.md | A-0001 | fixed & intangible assets, depreciation |
| filings.md | F-0001 | every tax return / report: prepared, submitted, paid |

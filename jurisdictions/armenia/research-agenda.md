# Research agenda — what to research, verify and keep watching

> Seeded from the AI accountant's Armenia pack for a typical Armenian IT / SaaS company.
> **Adapt it:** remove rows that don't apply, add rows the company's products trigger
> (see `ai-team/company/products/`).
> No law content here — only *what* to research and *why it matters*. When a topic is researched,
> create a card in `regulations/` (`add-regulation`) and/or a memo in `research/`, then set Status
> to `card` / `memo` and fill "Last verified".
> Priority: **P1** before incorporation · **P2** first 3 months of operation · **P3** when the
> trigger happens. `tax-watch` monitors every row with status other than `n/a`.

| # | Topic (act / area) | Why it matters | Trigger | Prio | Status | Card / memo | Last verified |
|---|---|---|---|---|---|---|---|
| P1-1 | **Tax Code (Հարկային օրենսգիրք) — tax regimes**: general (profit tax + VAT), turnover tax, micro-entrepreneurship; eligibility, excluded activities, ceilings, how and when to elect, switching rules | Biggest money decision; some regimes exclude certain IT/consulting activities | before registration | P1 | todo | | |
| P1-2 | **IT-sector state support** — status of the former IT-certificate regime (Law on State Support to the IT Sector) and any current replacement (income-tax refunds, grants, high-tech programs) | Could cut payroll/profit tax a lot; conditions may shape company set-up | before registration | P1 | todo | | |
| P1-3 | **Law on Accounting (Հաշվապահական հաշվառման մասին)** — who may keep books, entity size categories, framework (IFRS / IFRS for SMEs / simplified), primary documents, retention period, annual financial statements | Whether the founder may keep the books personally; reporting load | before registration | P1 | todo | | |
| P1-4 | **Law on LLCs + state duty for registration** — share capital, payment of capital, founder decisions, dividends procedure | Set-up costs and how founder money enters the company | before registration | P1 | todo | | |
| P1-5 | **Founder pay**: salary vs dividends vs nothing — income tax, social/pension payments, stamp duty, dividend tax; tax residency of the founder | Year-one cash and tax cost for the founder | before registration | P1 | todo | | |
| P1-6 | **VAT basics**: registration threshold, voluntary registration, VAT on B2B SaaS in Armenia, invoicing requirements, VAT period | Pricing (VAT on top or included) and regime choice | before first invoice | P1 | todo | | |
| P1-7 | **Primary documents & e-invoicing** — acts of acceptance, electronic tax invoices (SRC e-invoicing), when mandatory, deadlines for issuing, e-signature (Law on Electronic Document and Electronic Digital Signature) | Every recurring subscription needs correct documents | before first invoice | P1 | todo | | |
| P1-8 | **Services bought from non-residents** (foreign cloud/SaaS suppliers — e.g. hosting, CDN, code hosting, app stores, AI tools): VAT as tax agent / reverse charge, withholding tax on payments to non-residents, double tax treaties (check which exist for each supplier country) | IT companies depend on foreign services from day one; easy to miss obligations | first foreign payment | P1 | todo | | |
| P2-1 | **Payroll**: Labour Code (Աշխատանքային օրենսգիրք) basics, income tax, funded pension contributions, stamp duty, the unified monthly calculation (եկամտային հարկի և սոցիալական վճարի միասնական հաշվարկ) and its deadline | First hire or founder salary | first payment to a person | P2 | todo | | |
| P2-2 | **Contractors**: civil-law contracts with individuals, sole entrepreneurs, foreign freelancers — withholding, reporting, IP assignment (with the lawyer member) | Development may be outsourced | first contractor | P2 | todo | | |
| P2-3 | **Cash registers (ՀԴՄ / e-HDM)** — does the company need one for B2B services paid by bank transfer / card? Exemptions | Fines for missing fiscal receipts are a common SRC finding | before first payment received | P2 | todo | | |
| P2-4 | **Currency regulation & exchange rates** — invoicing in USD/EUR vs AMD, which CBA rate/date applies for accounting and VAT, foreign-currency accounts | Foreign costs now, maybe foreign customers later | first FX transaction | P2 | todo | | |
| P2-5 | **Profit tax** — deductible expenses (cloud, devices, home office, travel), losses carry-forward, advance payments, annual return deadline | Year-end and quarterly cash | first revenue | P2 | todo | | |
| P2-6 | **Fixed & intangible assets** — devices, laptops, capitalising software development, depreciation rates (tax vs accounting) | Software companies build intangible assets and buy hardware | first asset purchase | P2 | todo | | |
| P2-7 | **Tax administration**: tax calendar, penalties and fines for late filing/payment, tax audits procedure, statute of limitations, how to request an official clarification from SRC | Avoid penalties; know rights in an audit | after registration | P2 | todo | | |
| P2-8 | **Statistical reporting** (Armstat) obligations for small IT companies | Often forgotten | after registration | P2 | todo | | |
| P2-9 | **Related-party transactions with the founder** (founder loans, using a personal card for company costs, reimbursements) | Very common in early stage | first such payment | P2 | todo | | |
| P3-1 | **Supplying hardware** (devices, cards, terminals) with the service: goods vs service, VAT, customs/EAEU import rules, warranty provisions | Only if the company buys/sells/leases devices | hardware decision | P3 | todo | | |
| P3-2 | **Money passing through the company** (prepaid balances, collecting on behalf of customers, payouts): payment services / e-money rules (CBA), AML — with the lawyer member | Could require a licence; changes accounting completely | if a product handles money | P3 | todo | | |
| P3-3 | **Customers' own tax obligations the product touches** — reports, fiscal receipts or e-invoices customers must produce that the software generates or feeds | Product opportunity + risk if the software produces their tax data; possible software certification requirements | product roadmap | P3 | todo | | |
| P3-4 | **Selling abroad** (Georgia, EAEU, EU…): export of services VAT treatment, foreign withholding, permanent establishment, treaties | Expansion | first foreign customer | P3 | todo | | |
| P3-5 | **Grants & subsidies accounting** (startup grants, state programs) — taxability and recognition | If a grant is received | grant | P3 | todo | | |
| P3-6 | **Audit & entity size thresholds** — mandatory audit, size changes | Growth | approaching thresholds | P3 | todo | | |
| P3-7 | **Foreign holding / investors** — transfer pricing, controlled transactions, non-resident shareholders' dividends | Fund-raising | investor talks | P3 | todo | | |

Monitoring keywords for `tax-watch` are in the pack `README.md`.

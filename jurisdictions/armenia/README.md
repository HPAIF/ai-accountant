# Jurisdiction pack — Republic of Armenia (RA)

How tax and accounting rules are published and verified in Armenia. Load this with
`sources.md` before any tax or accounting work for an Armenian company. Also covers EAEU rules
where they apply (VAT/customs on imports from EAEU members) and foreign rules only when the
company pays or sells abroad (double tax treaties, VAT on foreign services).

- **Official language:** Armenian. The Armenian text of any act is the only authoritative one;
  English/Russian versions on ARLIS are translations and may be older.
- **Naming:** give the Armenian name of a law, form or body in brackets the first time, e.g.
  Tax Code (Հարկային օրենսգիրք), State Revenue Committee (ՊԵԿ / SRC).
- **Currency:** AMD (Armenian dram). Use AMD wherever the generic skills say "local currency".
- **Tax authority:** State Revenue Committee (Պետական եկամուտների կոմիտե, SRC) — src.am.
- **Central bank:** Central Bank of Armenia (CBA) — cba.am (official exchange rates).

## How to verify a rule here (used by `verify-regulation`)

1. **ARLIS** (https://www.arlis.am) is the primary source for every rule. Search by Armenian
   title first (fallback English/Russian). Act pages: `arlis.am/hy/acts/<id>` (official) and
   `arlis.am/en/acts/<id>` (translation). Fetch the page; never rely on remembered text.
2. **Status block:** in force / lost force / partly in force; the date of the edition you are
   reading; the list of amending acts; transitional provisions ("see Article N").
3. **Timing:** Tax Code amendments very often take effect on **1 January** or **1 July**. Check
   the amending laws of the current and previous year, and which edition applied on the
   transaction date.
4. **Translation check:** if you read the English/Russian edition, compare its edition date with
   the Armenian one; if older, say so and work from Armenian.
5. **SRC practice:** search src.am for official clarifications (պարզաբանումներ), instructions and
   forms. Record the clarification **number and date**. If SRC guidance differs from the law, the
   law prevails legally; SRC practice shows audit risk.
6. **Coming changes:** parliament.am (bills, readings, adopted laws not yet published) and
   e-draft.am (government drafts in public discussion, usually ≥15 days, with comment deadlines).
7. **Court practice:** Court of Cassation decisions on datalex.am (Cassation interpretations bind
   lower courts in similar facts — Armenia's "precedent"); Constitutional Court decisions on
   concourt.am.
8. **Exchange rates:** CBA official rate (cba.am) for the date the law requires — record the rate,
   its date and the rule that chose that date.

## What tax-watch scans (weekly)

- **parliament.am** — bills/adopted laws amending the Tax Code, Law on Accounting, IT-sector
  support, labour/social payments, cash registers (ՀԴՄ / e-HDM), electronic documents.
- **e-draft.am** — drafts in public discussion on those topics (note comment deadlines).
- **arlis.am** — new editions of acts with cards; `pending_changes` whose date has passed.
- **src.am** — news, new clarifications, new/changed forms, e-invoicing and ՀԴՄ notices, tax
  calendar changes.
- **minfin.am** (accounting/IFRS), **hightech.gov.am** (IT incentives, grants),
  **gov.am / e-gov.am** (government decisions on rates/procedures), **cba.am** only if FX or
  payment questions are open.

## Monitoring keywords (WebSearch — leads only)

- **Armenian:** Հարկային օրենսգիրք փոփոխություն · ԱԱՀ · շրջանառության հարկ ·
  միկրոձեռնարկատիրություն · եկամտային հարկ · սոցիալական վճար · ՀԴՄ ·
  էլեկտրոնային հաշիվ-ապրանքագիր · հաշվապահական հաշվառում · ՏՏ ոլորտ արտոնություն ·
  ՊԵԿ պարզաբանում
- **English:** Armenia Tax Code amendments · Armenia VAT · Armenia turnover tax · Armenia IT tax
  incentives · Armenia e-invoicing · Armenia cash register
- **Russian:** Налоговый кодекс Армении изменения · НДС Армения · ИТ льготы Армения

## Documents and filings to know (verify names, forms and deadlines before use)

- Act of acceptance (ընդունման-հանձնման ակտ) and electronic tax invoice (էլեկտրոնային
  հաշիվ-ապրանքագիր) via the SRC e-invoicing system.
- Unified monthly calculation of income tax and social payment (եկամտային հարկի և սոցիալական
  վճարի միասնական հաշվարկ) — payroll.
- VAT returns (if a VAT payer), turnover-tax returns (if on turnover tax), profit-tax advance
  payments and the annual profit-tax return, annual financial statements under the Law on
  Accounting, statistical reports (Armstat) where applicable.
- Cash register receipts (ՀԴՄ / e-HDM) where payments are received in ways that require them.

None of the above is verified here: every name, form, rate and deadline must go through
`verify-regulation` before it is used.

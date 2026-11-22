# Regulation cards

One file per act, tax-authority clarification or rate table the company relies on long-term
(`add-regulation` creates them from the plugin's `templates/regulation-card.md`). File name:
`<short-slug>.md` (e.g. `tax-code-vat.md`, `clarification-2027-001.md`).

A card is a **snapshot with a date**, never proof. `verify-regulation` must re-check the source
every time the card is used; the session hook lists cards not verified in 30+ days.

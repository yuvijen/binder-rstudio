# McNemar test (Binder example)

This repository is prepared for use with **Binder** (mybinder.org). It includes:

- `mcnemar.R` — example R script that runs McNemar test (uses base `stats::mcnemar.test` and optionally `exact2x2::mcnemar.exact`).
- `install.R` — packages to install during the Binder build (`exact2x2`).
- `runtime.txt` — requested R runtime.

## How to use

1. Create a **public** GitHub repository (for example: `mcnemar-binder`) and push these files.
2. Open https://mybinder.org and paste the GitHub repo URL, or use a direct Binder launch URL:

   ```
   https://mybinder.org/v2/gh/YourUsername/mcnemar-binder/main?urlpath=rstudio
   ```

3. Click **Launch**. Binder will build the environment (first build may take 1-3 minutes).
4. Binder opens **RStudio** in the browser — open `mcnemar.R` and run it.

## Binder badge (embed this in your Quarto/README)

```markdown
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/YourUsername/mcnemar-binder/main?urlpath=rstudio)
```

Replace `YourUsername` and `mcnemar-binder` with your GitHub username and repo name.

## Notes / Limitations
- Binder sessions are ephemeral (no persistence). Users should download outputs they want to keep.
- If build fails due to runtime mismatch, try removing `runtime.txt` or changing the R version to a different tag.

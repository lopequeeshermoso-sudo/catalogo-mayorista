@echo off
title ACTUALIZAR CATALOGO ESTABLE

echo =================================
echo ACTUALIZAR CATALOGO (ESTABLE)
echo =================================
echo.

python -c "import pandas as pd, json; from pathlib import Path; df=pd.read_excel('precios_mayoristas_PRO_x12.xlsx'); df.columns=[str(c).strip() for c in df.columns]; Path('precios.json').write_text(json.dumps(df.fillna('').to_dict(orient='records'), ensure_ascii=False, indent=2), encoding='utf-8'); print('OK: precios.json actualizado')"

echo.
pause
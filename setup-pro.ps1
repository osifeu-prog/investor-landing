# ---------------------------------------------------------
#   SLH INVESTOR LANDING  PRO AUTOMATION SYSTEM
# ---------------------------------------------------------

# 1. מעבר לתיקייה הנכונה
Set-Location "D:\investor-landing"

# 2. יצירת תיקיית גיבויים אם לא קיימת
if (!(Test-Path "backups")) {
    New-Item -ItemType Directory -Path "backups" | Out-Null
}

# 3. יצירת גיבוי לפני כל שינוי
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
Compress-Archive -Path *.html -DestinationPath "backups\backup_$timestamp.zip" -Force

# 4. יצירת לוג
$log = "log_$timestamp.txt"
"Starting PRO update at $timestamp" | Out-File $log -Encoding UTF8

# ---------------------------------------------------------
#   יצירת כל קבצי האתר מחדש
# ---------------------------------------------------------

# index.html
Set-Content -Encoding UTF8 index.html @"
<!DOCTYPE html>
<html lang='he' dir='rtl'>
<head>
<meta charset='UTF-8'>
<title>הארנק הכשר  דף משקיעים</title>
<style>
body { font-family: Arial; background:#0b0f19; color:#fff; margin:0; padding:0; }
header { background:#111827; padding:20px; position:sticky; top:0; }
nav a { color:#fff; margin-left:15px; text-decoration:none; font-weight:bold; }
nav a:hover { color:#3b82f6; }
section { padding:20px; max-width:900px; margin:0 auto; }
.card { background:#111827; padding:15px; border-radius:10px; border:1px solid #1f2937; margin-bottom:15px; }
.btn { background:#3b82f6; padding:10px 15px; border-radius:6px; color:#fff; text-decoration:none; }
</style>
</head>
<body>

<header>
<nav>
<a href='index.html'>דף הבית</a>
<a href='about.html'>אודות</a>
<a href='faq.html'>שאלות נפוצות</a>
<a href='contracts.html'>חוזים</a>
<a href='contact.html'>יצירת קשר</a>
</nav>
</header>

<section>
<h1>הארנק הכשר  הזדמנות השקעה</h1>
<p>מכשיר ESP כשר, ארנק קריפטו ומערכת השקעות מותאמת לציבור החרדי.</p>
<a class='btn' href='contact.html'>אני רוצה להשקיע</a>
<a class='btn' href='https://wa.me/972584203384' style='background:#22c55e;'>וואטסאפ</a>
</section>

<section>
<h2>מסלולי השקעה</h2>

<div class='card'>
<h3>מסלול מיקרו‑השקעה</h3>
<p>השקעה: 1,00010,000 </p>
<p>מודל: חוזים עתידיים על מכירות.</p>
</div>

<div class='card'>
<h3>מסלול משקיע בינוני</h3>
<p>השקעה: 10,00080,000 </p>
<p>מודל: שותפות ברווחים.</p>
</div>

<div class='card'>
<h3>מסלול אסטרטגי</h3>
<p>השקעה: 80,000500,000 </p>
<p>מודל: אחוז בעלות בחברה.</p>
</div>

</section>

<section>
<h2>תחזיות רווח</h2>
<ul>
<li>שמרני: 600,000  לשנה</li>
<li>בינוני: 3,600,000  לשנה</li>
<li>אגרסיבי: 12,000,000  לשנה</li>
</ul>
</section>

<footer>
© כל הזכויות שמורות  הארנק הכשר
</footer>

</body>
</html>
"@

# about.html
Set-Content -Encoding UTF8 about.html @"
<!DOCTYPE html>
<html lang='he' dir='rtl'>
<head><meta charset='UTF-8'><title>אודות</title></head>
<body>
<header><nav>
<a href='index.html'>דף הבית</a>
<a href='about.html'>אודות</a>
<a href='faq.html'>שאלות נפוצות</a>
<a href='contracts.html'>חוזים</a>
<a href='contact.html'>יצירת קשר</a>
</nav></header>

<h1>אודות הארנק הכשר</h1>
<p>הארנק הכשר הוא פתרון טכנולוגי חדשני המיועד לציבור החרדי.</p>
<p>האתר הראשי: <a href='https://slh-nft.com'>SLH-NFT.com</a></p>

</body>
</html>
"@

# faq.html
Set-Content -Encoding UTF8 faq.html @"
<!DOCTYPE html>
<html lang='he' dir='rtl'>
<head><meta charset='UTF-8'><title>שאלות נפוצות</title></head>
<body>
<header><nav>
<a href='index.html'>דף הבית</a>
<a href='about.html'>אודות</a>
<a href='faq.html'>שאלות נפוצות</a>
<a href='contracts.html'>חוזים</a>
<a href='contact.html'>יצירת קשר</a>
</nav></header>

<h1>שאלות נפוצות</h1>
<h3>האם המכשיר כשר?</h3><p>כן. ללא אינטרנט, ללא דפדפן, ללא אפליקציות.</p>
<h3>איך משקיעים?</h3><p>באמצעות אחד משלושת המסלולים.</p>
<h3>האם יש מוצר עובד?</h3><p>כן. פיתוח החומרה הושלם.</p>

</body>
</html>
"@

# contracts.html
Set-Content -Encoding UTF8 contracts.html @"
<!DOCTYPE html>
<html lang='he' dir='rtl'>
<head><meta charset='UTF-8'><title>חוזים</title></head>
<body>
<header><nav>
<a href='index.html'>דף הבית</a>
<a href='about.html'>אודות</a>
<a href='faq.html'>שאלות נפוצות</a>
<a href='contracts.html'>חוזים</a>
<a href='contact.html'>יצירת קשר</a>
</nav></header>

<h1>חוזי השקעה</h1>

<h2>מסלול מיקרו‑השקעה</h2>
<p>השקעה: 1,00010,000 </p>

<h2>מסלול משקיע בינוני</h2>
<p>השקעה: 10,00080,000 </p>

<h2>מסלול אסטרטגי</h2>
<p>השקעה: 80,000500,000 </p>

</body>
</html>
"@

# contact.html
Set-Content -Encoding UTF8 contact.html @"
<!DOCTYPE html>
<html lang='he' dir='rtl'>
<head><meta charset='UTF-8'><title>יצירת קשר</title></head>
<body>
<header><nav>
<a href='index.html'>דף הבית</a>
<a href='about.html'>אודות</a>
<a href='faq.html'>שאלות נפוצות</a>
<a href='contracts.html'>חוזים</a>
<a href='contact.html'>יצירת קשר</a>
</nav></header>

<h1>יצירת קשר</h1>
<p><b>וואטסאפ:</b> <a href='https://wa.me/972584203384'>שלח הודעה</a></p>
<p><b>טלפון:</b> <a href='tel:0584203384'>058‑420‑3384</a></p>
<p><b>אימייל:</b> <a href='mailto:kaufmanungar@gmail.com'>kaufmanungar@gmail.com</a></p>

</body>
</html>
"@

# ---------------------------------------------------------
#   Git  Commit & Push
# ---------------------------------------------------------
git add .
git commit -m "PRO auto update"
git push

# ---------------------------------------------------------
#   בדיקת אתר
# ---------------------------------------------------------
"Checking site status..." | Out-File $log -Append
try {
    $resp = Invoke-WebRequest -Uri "https://slh-nft.com/investor-landing/" -TimeoutSec 10
    "HTTP Status: $($resp.StatusCode)" | Out-File $log -Append
} catch {
    "ERROR: Site unreachable" | Out-File $log -Append
}

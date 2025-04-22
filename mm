<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>בר מצווה של מוישי</title>
    <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Assistant', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            text-align: center;
            padding: 20px;
        }
        .container {
            background: #fff;
            border: 2px solid #d4af37;
            border-radius: 12px;
            padding: 30px;
            max-width: 500px;
            margin: auto;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        h1 {
            color: #d4af37;
            font-size: 28px;
            margin-bottom: 10px;
        }
        h2 {
            font-size: 20px;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        input, button {
            padding: 12px;
            font-size: 16px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #d4af37;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }
        button:hover {
            background-color: #bfa133;
        }
        .tefillin-icon {
            width: 80px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Tefillin.png" alt="תפילין" class="tefillin-icon">
        <h1>בר מצווה של מוישי</h1>
        <h2>יט' בסיון תשפ"ה | 15.6.2025<br>אולם סמינר 'בית יעקב' רח' חרמון 10, חיפה</h2>

        <form id="rsvp-form">
            <input type="text" name="שם פרטי ומשפחה" placeholder="שם פרטי ומשפחה" required>
            <input type="number" name="מספר משתתפים" placeholder="מספר משתתפים" required min="1">
            <button type="submit">מאשר הגעה בשמחה</button>
        </form>

        <div id="thank-you" style="display:none; margin-top:20px; color:green; font-weight:bold;">תודה על אישור ההגעה!</div>
    </div>

    <script>
        const form = document.getElementById('rsvp-form');
        const thankYou = document.getElementById('thank-you');

        form.addEventListener('submit', async (e) => {
            e.preventDefault();
            
            const formData = new FormData(form);
            const data = Object.fromEntries(formData.entries());

            // שלח נתונים ל-Google Sheets דרך Web App
            await fetch('YOUR_GOOGLE_APPS_SCRIPT_URL', {
                method: 'POST',
                mode: 'no-cors',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            });

            form.style.display = 'none';
            thankYou.style.display = 'block';
        });
    </script>
</body>
</html>

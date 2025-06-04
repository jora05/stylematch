# StyleMatch

StyleMatch is a web app that analyses a user's fashion style based on the images they select. 

---

## Project Structure

- `app.py` – Main Flask app handling routing, session management, and logic.
- `database.py` – Manages PostgreSQL database connection and initialization.
- `stylematch.sql` – SQL initialization script that creates required tables:
  - `matches(photo_id, style_id)`
  - `styles(style_id, style_name)`
  - `collected(photo_id, style_id)`

- `templates/` – HTML templates:
  - `password.html` – Entry page where the user enters their name (used for session tracking).
  - `index.html` – Homepage where users select images.
  - `[style].html` – Result pages, one per style.

- `static/` – Static resources:
  - `static/Uploads/` – Fashion images shown in the selection grid.
  - `static/extra_glam/`, `static/StreetWear/`, etc. – Style-specific result images.
  - `static/audio/`, `static/gif/` – Audio clips and GIFs used on result pages.
  - `static/styles.css` – Custom CSS for styling all pages.

---

## Tech Stack

- Python 
- Flask
- PostgreSQL
- HTML/CSS

---

## E/R Diagram

## How to Compile
1. Create and activate a virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
  
2. Install required packages:
   ```bash
    pip install -r requirements.txt

3. Set up the PostgreSQL database:
    -  Open pgAdmin and create a database called stylematch.
    -  If needed, edit the password on line 7 of database.py to match your local PostgreSQL password.
    
4. Ensure all project files are correctly located as described in the structure above.


## How to run

- From the terminal, run:
  ```bash
  python app.py
- Then open a browser and go to:
  ```Cpp
  http://127.0.0.1:5000

1. Enter your name to begin.
2. Select 1–10 fashion images from the grid.
3. Receive a personalised style page based on your choices.








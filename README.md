# StyleMatch

StyleMatch is a web app that analyses a user's fashion style based on the images they select.  

---

## Project Structure

- `app.py` - Main Flask app handling routing, session management, and logic.
- `database.py` - Manages PostgreSQL database connection and initialization.
- `stylematch.sql` - SQL initialization script that creates required tables:
  - `photos(photo_id, photo_name, photo_url)`
  - `styles(style_id, style_name)`
  - `matches(photo_id, style_id)`
  - `collected(photo_id, style_id)`

- `templates/` - HTML templates:
  - `password.html` - Entry page where the user enters their name (used for session tracking).
  - `index.html` - Homepage where users select images.
  - `[style].html` - Result pages, one per style.

- `static/` - Static resources:
  - `static/Uploads/` - Fashion images shown in the selection grid.
  - `static/extra_glam/`, `static/StreetWear/`, etc. - Style-specific result images.
  - `static/audio/`, `static/gif/` - Audio clips and GIFs used on result pages.
  - `static/styles.css` - Custom CSS for styling all pages.

---

## Tech Stack

- Python 
- Flask
- PostgreSQL
- HTML/CSS

---

## E/R Diagram

![ER_diagram](https://github.com/user-attachments/assets/6641b92d-cacb-47bc-bfbe-2b2a289604e8)


## How to Compile
1. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
  
2. Install required packages:
   ```bash
    pip install -r requirements.txt

3. Set up the PostgreSQL database:
    -  Open pgAdmin and create a database called stylematch.
    -  If needed, edit the password on line 7 of database.py to match your local PostgreSQL password.
    
4. Ensure all project files are correctly located as described in the structure above.


## How to run
- Open a terminal and navigate to the StyleMatch directory
- From the terminal, run:
  ```bash
  python app.py
  ```
  This will compile and run the web-app (e.g. initialize the database and so on)
- Then open a browser and go to:
  ```Cpp
  http://127.0.0.1:5000
- Now you can interact with the web-app like so:
  1. Enter your name to begin.
  2. Select 1–10 fashion images from the grid.
  3. Receive a personalised style page based on your choices.








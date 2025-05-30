from flask import Flask, render_template, request, redirect, url_for, session 
import os
import re
import random 
from database import init_db, db_connection

init_db()

def choose_style(image_ls):
    conn = db_connection()
    cur = conn.cursor()
    cur.execute('SELECT photo_id, style_id FROM matches WHERE photo_id = ANY(%s)', (image_ls,))
    collected_ls = cur.fetchall()
    for photo_id, style_id in collected_ls:
        cur.execute('INSERT INTO collected(photo_id, style_id) VALUES (%s, %s)', (photo_id, style_id))

    cur.execute('SELECT s.style_name FROM collected c JOIN styles s ON c.style_id = s.style_id GROUP BY s.style_id, s.style_name ORDER BY COUNT(*) DESC LIMIT 1')
    collected_style = cur.fetchone()

    cur.close()
    conn.close()
    return collected_style

def image_list():
    selected_images = request.form.getlist('selected_images')
    # Use regex to extract just the image name without extension
    image_names = []
    pattern = r'/([^/]+)\.[a-zA-Z0-9]+$'  # Captures the filename without extension
    for img in selected_images:
        match = re.search(pattern, img)
        if match:
            image_names.append(match.group(1))
    image_ids = [int(image) for image in image_names]
    return image_ids
       

app = Flask(__name__)
UPLOAD_FOLDER = 'static/uploads'
app.secret_key = 'JACS'


@app.route('/', methods=['GET', 'POST'])
def password():
    if request.method == 'POST':
        given_name = request.form.get('nameInput', '')
        pattern = r"^[A-Za-z\-]+$"
        if re.match(pattern, given_name):
            session['user_name'] = given_name
            return redirect(url_for('index'))
        else:
            return render_template('password.html', error="Invalid name: Only letters and hyphens are allowed.")
    return render_template('password.html')

@app.route('/pictures')
def index():
    given_name = session.get('user_name', 'Guest')
    image_files = os.listdir(UPLOAD_FOLDER)
    image_urls = [f'/static/uploads/{filename}' for filename in image_files]
    random.shuffle(image_urls)
    return render_template('index.html', images=image_urls, name=given_name)

@app.route('/submit-selection', methods=['POST'])
def submit_selection():
    given_name = session.get('user_name', 'Guest')
    selected_images = request.form.getlist('selected_images')
    if len(selected_images) > 10 or len(selected_images)<1:
        return "<h2>Error: You must select at least one picture.</h2><a href='/'>Go Back</a>"
    image_names = image_list()
    style = choose_style(image_names)
    return render_template(style[0] + '.html', name=given_name)


if __name__ == '__main__':
    app.run(debug=True)

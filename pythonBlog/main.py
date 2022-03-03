from flask import Flask, render_template, request, url_for
from flask_mysqldb import MySQL
from werkzeug.utils import redirect

# CONEXIÓN CON LA BASE DE DATOS MYSQL
app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'blog'
mysql = MySQL(app)

#Con este método y su ruta hacemos una consulta a la bd para que nos devuelva una lista de entradas.
@app.route('/')
def index():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM entrada ORDER BY id DESC LIMIT 5")
    data = cursor.fetchall()
    return render_template('landing.html', contacts=data)

#Con este método y su ruta hacemos una consulta a la bd para que nos devuelva la información correspondiente a la
#entrada clickada en una url diferente para cada entrada.
@app.route("/entrada/<string:id>")
def entrada(id):
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM entrada WHERE id={0}".format(id))
    result = cursor.fetchone()
    cursor.close()
    return render_template("elements.html", contact=result)

#Con este método y su ruta hacemos una consulta de inserción a la bd para introducir los datos de la nueva entrada.
@app.route("/crear", methods=["GET", "POST"])
def crear():
    if request.method == "POST":
        titulo = request.form.get("titulo", False)
        descripcion = request.form.get("descripcion", False)
        contenido = request.form.get("contenido", False)
        autor = request.form.get("autor", False)
        cursor = mysql.connection.cursor()
        cursor.execute("INSERT INTO entrada (titulo,descripcion,contenido,autor) VALUES (%s,%s,%s,%s)",
                       (titulo, descripcion, contenido, autor))
        mysql.connection.commit()
        cursor.close()
        return redirect(url_for("index"))

    else:
        return render_template("landing.html")

#Con este metodo y su ruta hacemos una consulta a la bd para ver si está la entrada en ella y nos remite a la
#página de edición de la entrada.
@app.route("/edit/<id>")
def edit(id):
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM entrada WHERE id = %s", [id])
    data = cursor.fetchall()
    cursor.close()
    return render_template("generic.html", contact=data[0])

#Con este método y su ruta hacemos una consulta de actualizacion a la bd para introducir nuevos valores
#en una entrada ya creada anteriormente.
@app.route("/actualizar/<id>", methods=["POST"])
def actualizar(id):
        if request.method == "POST":
            titulo = request.form.get("titulo", False)
            descripcion = request.form.get("descripcion", False)
            contenido = request.form.get("contenido", False)
            autor = request.form.get("autor", False)
            cursor = mysql.connection.cursor()
            cursor.execute("""UPDATE entrada 
                                SET titulo=%s, descripcion=%s, contenido=%s, autor=%s 
                                WHERE id = %s""", (titulo, descripcion, contenido, autor, id))
            mysql.connection.commit()
            cursor.close()
            return redirect(url_for("index"))

        else:
            return render_template("landing.html")

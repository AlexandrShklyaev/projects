from flask import render_template, request, Flask

from app.database import db
from app.models import Employeer


def init_views(app: Flask) -> None:
    """ замыкание маршрутов """

    @app.get('/')
    def al_users() -> str:
        employees = Employeer.query.all()
        return render_template(
            # 'index.html',
            'index.html',
            employees=employees,
        )

    @app.post('/insert')
    def insert() -> str:
        user = Employeer(name=request.form['name'], email=request.form['email'], phone=request.form['phone'])
        db.session.add(user)
        db.session.commit()

        return al_users()

    @app.post('/update')
    def update() -> str:
        user = Employeer.query.get(int(request.form['id']))
        user.name = request.form['name']
        user.email = request.form['email']
        user.phone = request.form['phone']
        db.session.add(user)
        db.session.commit()

        return al_users()

    @app.route('/delete/<int:id>')
    def delete(id: int) -> str:
        user = Employeer.query.get(id)
        db.session.delete(user)
        db.session.commit()

        return al_users()

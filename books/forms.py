from .models import User
from .views import session

from wtforms import TextField, PasswordField, SubmitField, SelectField
from flask.ext.wtf import Form
from wtforms.validators import Required, Email, Length


class SigninForm(Form):
    email = TextField("Email", [
                       Required("Please enter your email address."),
                       Email("Please enter your email address.")])
    password = PasswordField('Password',
                             [Required("Please enter a password.")])
    submit = SubmitField("Sign In")

    def __init__(self, *args, **kwargs):
        Form.__init__(self, *args, **kwargs)

    def validate(self):
        is_signed = False

        if not Form.validate(self):
            return False

        user = session.query(User).filter_by(email = self.email.data.lower()).first()
        if user and user.check_password(self.password.data):
            is_signed = True
            return True
        else:
            self.email.errors.append("Invalid e-mail or password")
            return False


class SearchForm(Form):
    search = TextField("search", [
                        Required("Please enter query between 3 and 25 chars."),
                        Length(min=3, max=25)])
    search_by = SelectField('Search by', coerce=int, choices=[(1, 'Book title'), (2, 'Author name')])
    submit = SubmitField("Search")

    def __init__(self, *args, **kwargs):
        Form.__init__(self, *args, **kwargs)
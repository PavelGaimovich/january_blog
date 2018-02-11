pavel = User.create(
  username: 'Pavel',
  email: 'pavel@mail.com',
  password: '1password!'
)

pavel.add_role :redactor

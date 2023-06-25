function createUserQueryValues(user) {
  return `(
        '${user.name}',
        '${user.email}',
        '${user.password}',
        '${user.phoneNum}'
    )`;
}

const users = [
  {
    name: "Ivan Vlasov",
    email: "vlasoff.ivan95@gmail.com",
    password: "Qwerty12",
    phoneNum: "095-57-99-657",
  },
  {
    name: "Ivan Hucpov",
    email: "vlasoff.ivan95222@gmail.com",
    password: "Qwerty312",
    phoneNum: "095-57-99-6537-12",
  },
  {
    name: "Anatolii Sharij",
    email: "rodadebara5@gmail.com",
    password: "Qwerty1223Donni",
    phoneNum: "093-57-91-6537",
  },
];

export const mapUsers = (users) => {
  const usersElems = users.map(createUserQueryValues);
  return usersElems.join(',');
};

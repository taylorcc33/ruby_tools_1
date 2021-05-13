let contacts = [
  {
    first_name: "Bruce",
    last_name: "wayne",
    phone: "888-516-7365",
  },
  {
    first_name: "Steve",
    last_name: "Rogers",
    phone: "212-970-4133",
  },
  {
    first_name: "Wade",
    last_name: "Wilson",
    phone: "914-555-1407",
  },
];

const mainMenu = () => {
  console.log("Please choose an option");
  console.log("1 Add a contact");
  console.log("2 view contacts");
  console.log("3 Update a contact");
  console.log("4 delete a contact");

  userInput = prompt(":");

  if (userInput == 1) {
    addContact();
  } else if (userInput == 2) {
  } else if (userInput == 3) {
  }
};

const addContact = () => {
  console.log("Please type in contact name");

  nameInput = prompt(":");
};

const test_function = () => {
  let x = "Taylor";

  console.log(x);
};

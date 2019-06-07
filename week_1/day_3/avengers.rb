avengers = {
  Ironman: {
    Name: "Tony Stark",
    moves: {
      punch: 10,
      kick: 100
    }
  },
  Hulk: {
    Name: "Bruce Banner",
    moves: {
      smash: 1000,
      roll: 500
    }
  }
}

p avengers[:Hulk][:moves][:smash]

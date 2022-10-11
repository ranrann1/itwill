// 변수 선언부

const allMenu = document.querySelectorAll(".selectAllMenu");
const favoMenu = document.querySelectorAll(".selectFavoriteMenu");
const menuDesktopLi = document.querySelector(".menu-selective-desktop > ul");
const yellowBarMenu = document.querySelectorAll(".menu-button-desktop > ul li");
const favo = document.querySelector(".favo");
const menu = document.querySelectorAll(".menu-selective-desktop > ul li");
const mainContents = document.querySelectorAll(".mainContents > ul a");
const button = document.querySelector(".slide-button div > label > input");
const label = document.querySelector(".slide-button div > label");
const ball = document.querySelector(".toggleSwitchBall");

const menuNames = [
  "chicken",
  "dessert",
  "western",
  "korean",
  "chinese",
  "pizza",
  "hamburger",
  "meat",
  "tteokbokki"
];

let menuState = [];

// 함수 선언부(이벤트리스너 포함)

favoMenu[1].addEventListener("click", (e) => {
  for (let i = 0; i < 9; i++) {
    if (menuDesktopLi.children[i].classList.contains("favo")) {
      continue;
    } else {
      menuDesktopLi.children[i].classList.add("hidden");
    }
  }
});

allMenu[1].addEventListener("click", () => {
  for (let i = 0; i < 9; i++) {
    if (menuDesktopLi.children[i].classList.contains("hidden")) {
      menuDesktopLi.children[i].classList.remove("hidden");
    } else {
      continue;
    }
  }
});

yellowBarMenu[0].addEventListener("click", () => {
  if (yellowBarMenu[0].classList.contains("bottom_bordered")) {
    return;
  } else {
    yellowBarMenu[1].classList.remove("bottom_bordered");
    yellowBarMenu[0].classList.add("bottom_bordered");
  }
});
yellowBarMenu[1].addEventListener("click", () => {
  if (yellowBarMenu[1].classList.contains("bottom_bordered")) {
    return;
  } else {
    yellowBarMenu[0].classList.remove("bottom_bordered");
    yellowBarMenu[1].classList.add("bottom_bordered");
  }
});

button.addEventListener("click", () => {
  ball.classList.toggle("ball_button_clicked");
  label.classList.toggle("ball_button_clicked_with_background");
  for (let i = 0; i < mainContents.length; i++) {
    if (!mainContents[i].classList.contains("isRecruit")) {
      mainContents[i].classList.toggle("hidden");
    }
  }
});

function menuAddEvent(idx, menuName) {
  menu[idx].addEventListener("click", (e) => {
    if (menu[idx].clicked === false) {
      menu[idx].clicked = true;
      menu[idx].classList.add("clicked");
      for (let i = 0; i < mainContents.length; i++) {
        if (mainContents[i].classList.contains(menuName)) {
          continue;
        } else {
          mainContents[i].classList.add("hidden");
        }
      }
    } else {
      menu[idx].clicked = false;
      menu[idx].classList.remove("clicked");
      for (let i = 0; i < mainContents.length; i++) {
        if (mainContents[i].classList.contains(menuName)) {
          continue;
        } else {
          mainContents[i].classList.remove("hidden");
        }
      }
    }
  });
}

// 스크립트 embed시 동작부

for (let i = 0; i < menuNames.length; i++) {
  menuAddEvent(i, menuNames[i]);
}

for (let i = 0; i < menu.length; i++) {
  menu[i] = Object.assign(menu[i], { clicked: false, menuId: i });
}

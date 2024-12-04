// JavaScript for the Book Opening Effect
let clickCount = 0;

function openBook() {
  clickCount++;
  
  if (clickCount === 1) {
    setTimeout(() => {
      alert("Step 1: 3 clicks completed! Now wait for 6 clicks.");
    }, 3000);
  }
  if (clickCount === 7) {
    setTimeout(() => {
      alert("Step 2: 6 clicks completed! Now wait for 9 clicks.");
    }, 6000);
  }
  if (clickCount === 16) {
    setTimeout(() => {
      alert("Step 3: 9 clicks completed! The Book of Life is now OPEN.");
      document.getElementById("bookCover").classList.add("glow");
    }, 9000);
  }
}

// JavaScript for the Pope Image Click Effect
let popeClickCount = 0;

function revealLink() {
  popeClickCount++;
  if (popeClickCount === 3) {
    document.getElementById("hidden-link").style.display = "block"; // Reveal hidden link
    alert("You unlocked the hidden link! Check your inbox soon.");
  }
}

// Initialize click counter
let clickCount = 0;
let bookEmblem = document.getElementById('bookEmblem'); // The image or button to click for opening the book
let bookContent = document.getElementById('book-content'); // The content of the book that will appear

// Listen for clicks on the emblem
bookEmblem.addEventListener('click', function() {
  clickCount++;
  
  // If 3 clicks in 3 seconds
  if (clickCount === 3) {
    setTimeout(function() {
      clickCount = 0; // Reset after 3 seconds
    }, 3000); // Wait 3 seconds after 3 clicks
  }
  
  // If 6 clicks in 6 seconds
  if (clickCount === 6) {
    setTimeout(function() {
      clickCount = 0; // Reset after 6 seconds
    }, 6000); // Wait 6 seconds after 6 clicks
  }

  // If 9 clicks in 9 seconds, the book opens
  if (clickCount === 9) {
    setTimeout(function() {
      clickCount = 0; // Reset after 9 seconds
      bookContent.style.display = 'block'; // Reveal the book content
      bookContent.innerHTML = "<h2>The Book of Life has been opened!</h2>" + bookContent.innerHTML; // Add message
    }, 9000); // Wait 9 seconds after 9 clicks
  }
});

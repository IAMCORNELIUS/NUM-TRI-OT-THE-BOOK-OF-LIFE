<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Book of Life</title>
  <style>
    /* Basic styling */
    body {
      font-family: Arial, sans-serif;
      background-color: #f7f7f7;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      text-align: center;
    }
    #book {
      background-color: #fff;
      border: 2px solid #000;
      width: 300px;
      height: 400px;
      margin-top: 50px;
      position: relative;
      cursor: pointer;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }
    #book img {
      width: 150px;
      height: auto;
    }
    #popeImage {
      position: absolute;
      bottom: 10px;
      right: 10px;
      width: 100px;
      cursor: pointer;
    }
    #book-content {
      display: none;
      background-color: #f0f0f0;
      padding: 20px;
      margin-top: 20px;
      border: 2px solid #000;
      border-radius: 8px;
      text-align: left;
      width: 80%;
      max-width: 400px;
    }
    .section {
      margin-bottom: 15px;
    }
  </style>
</head>
<body>
  <div id="book">
    <h1>The Book of Life</h1>
    <p>Click the emblem to open the book using the 3-6-9 sequence.</p>
    <img src="book-emblem.jpg" alt="Book Emblem" id="bookEmblem">
  </div>

  <!-- Pope image in bottom right corner -->
  <img src="pope-image.jpg" alt="Pope Image" id="popeImage">

  <!-- Hidden content that will be displayed once the book opens -->
  <div id="book-content">
    <h2>Names of the Saved</h2>
    <div class="section"><strong>John Doe</strong> | Saved by God 1 | Perks: Power, Wisdom | Spells to Use: Spell 1 | Extras: Extra 1</div>
    <div class="section"><strong>Jane Smith</strong> | Saved by God 2 | Perks: Protection, Strength | Spells to Use: Spell 2 | Extras: Extra 2</div>
    <!-- Add more names, perks, spells, etc. as needed -->
  </div>

  <script>
    // 3-6-9 Sequence for opening the book
    let clickCount = 0;
    let bookEmblem = document.getElementById('bookEmblem');
    let bookContent = document.getElementById('book-content');

    bookEmblem.addEventListener('click', function() {
      clickCount++;
      if (clickCount === 3) {
        setTimeout(function() {
          clickCount = 0;
        }, 3000); // Wait 3 seconds before next clicks
      }
      if (clickCount === 6) {
        setTimeout(function() {
          clickCount = 0;
        }, 6000); // Wait 6 seconds before next clicks
      }
      if (clickCount === 9) {
        setTimeout(function() {
          clickCount = 0;
          bookContent.style.display = 'block'; // Open the book
          bookContent.innerHTML = "<h2>The Book of Life has been opened!</h2>" + bookContent.innerHTML;
        }, 9000); // Wait 9 seconds before opening the book
      }
    });

    // Pope Image Clicks for Hidden Link
    let popeClickCount = 0;
    let popeImage = document.getElementById('popeImage');
    
    popeImage.addEventListener('click', function() {
      popeClickCount++;
      if (popeClickCount === 3) {
        alert('Hidden link unlocked! Please answer the questionnaire.');
        // You can redirect to the questionnaire or send an email here
      }
    });
  </script>
</body>
</html>
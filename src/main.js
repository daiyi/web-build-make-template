window.addEventListener('load', () => {
    document.querySelector('h1').append(['hello', 'potato'].reduce((str, word) => str += `${word}! `, ''))
  }
);

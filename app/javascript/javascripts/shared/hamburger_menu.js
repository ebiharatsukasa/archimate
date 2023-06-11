document.addEventListener('turbolinks:load', () => {
  const button = document.querySelector('#button');

  button.addEventListener('click', event => {
    bars.classList.toggle('hidden');
    xmark.classList.toggle('hidden');
    menu.classList.toggle('translate-x-full');
  })
})
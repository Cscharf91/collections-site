window.addEventListener('turbolinks:load', () => {
    const menu = document.querySelector('.mobile-menu');
    const grid = document.querySelector('.nav-grid');
    const navList = document.querySelector('.nav-list')
    menu.addEventListener('click', () => {
        console.log('clicked!');
        menu.classList.toggle('active-menu');
        navList.classList.toggle('hidden-menu');
        grid.classList.toggle('short-grid');
        grid.classList.toggle('long-grid');
    })
})
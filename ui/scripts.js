let hideTimeout = null;

window.addEventListener('message', (event) => {
    const data = event.data;
    const notification = document.getElementsByClassName('containerHelp')[0];
    if (!notification) {
        return;
    }

    if (data.action === 'open' || data.action === 'update') {
        clearTimeout(hideTimeout);
        notification.innerHTML = `<div class="text">${data.firstText}<span class="containerLetter">${data.letter}</span> ${data.secondText}</div>`;
        notification.style.display = 'flex';
        if (data.timeoutDuration && data.timeoutDuration > 0) {
            hideTimeout = setTimeout(() => {
                notification.style.display = 'none';
            }, data.timeoutDuration);
        }
    } else if (data.action === 'close') {
        clearTimeout(hideTimeout);
        notification.style.display = 'none';
    }
});

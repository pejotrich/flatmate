const greyBackground = () => {
  const modal = document.querySelector('.grey-background');
  const background = document.querySelector('.page-container');

  if (modal != null && modal.classList.contains('d-block')) {

    background.style.background = 'rgba(0,0,0,0.7)';
    background.style.opacity = '0.5';
  }
}
}
export { greyBackground };

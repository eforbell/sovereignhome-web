// Scroll reveal
(function () {
  const els = document.querySelectorAll('.reveal');
  if (!('IntersectionObserver' in window)) {
    els.forEach(el => el.classList.add('visible'));
    return;
  }
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });
  els.forEach(el => observer.observe(el));
})();

// Intro film: poster play button and chapter seeking
(function () {
  const video = document.getElementById('intro-video');
  if (!video) return;
  const playBtn = document.querySelector('.film-play');
  const chapters = Array.from(document.querySelectorAll('.film-chapters button[data-t]'));

  // With preload="none" there is no metadata yet, so defer the seek until it arrives.
  function seek(t) {
    if (video.readyState >= 1) video.currentTime = t;
    else video.addEventListener('loadedmetadata', () => { video.currentTime = t; }, { once: true });
  }

  function play() {
    const p = video.play();
    if (p && p.catch) p.catch(() => {});
  }

  if (playBtn) {
    // Show the clean poster until first play; native controls return with playback.
    video.controls = false;
    playBtn.hidden = false;
    playBtn.addEventListener('click', play);
    video.addEventListener('play', () => {
      playBtn.hidden = true;
      video.controls = true;
    }, { once: true });
  }

  chapters.forEach(btn => {
    btn.addEventListener('click', () => {
      seek(parseFloat(btn.dataset.t));
      play();
      const r = video.getBoundingClientRect();
      if (r.top < 0 || r.bottom > window.innerHeight) {
        video.scrollIntoView({ behavior: 'smooth', block: 'center' });
      }
    });
  });

  let current = null;
  video.addEventListener('timeupdate', () => {
    let active = null;
    chapters.forEach(btn => { if (parseFloat(btn.dataset.t) <= video.currentTime + 0.05) active = btn; });
    if (active === current) return;
    if (current) current.removeAttribute('aria-current');
    if (active) active.setAttribute('aria-current', 'true');
    current = active;
  });
})();

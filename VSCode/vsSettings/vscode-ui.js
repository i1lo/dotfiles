let lastActive = null;

function findActiveRow() {
 return document.querySelector('.monaco-list-row[aria-selected="true"]');
}

function markActiveFileSafe() {
 const row = findActiveRow();
 if (!row || row === lastActive) return;

 if (lastActive) {
  const old = lastActive.querySelector(".hax-star");
  if (old) old.remove();
 }

 const label =
  row.querySelector(".monaco-icon-label") ||
  row.querySelector(".label-name");

 if (!label) return;

 const star = document.createElement("span");
 star.className = "hax-star";
 star.textContent = " ✗";

 label.appendChild(star);
 lastActive = row;
}

const observer = new MutationObserver(() => {
 requestAnimationFrame(markActiveFileSafe);
});

observer.observe(document.body, {
 attributes: true,
 subtree: true,
 attributeFilter: ["class", "aria-selected"]
});

markActiveFileSafe();

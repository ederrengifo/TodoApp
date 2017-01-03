
window.onClick = function(event) {
  if (!event.target.matches('.project-menu-btn')) {
    var dropdowns = document.getElementsByClassName("dropdown-project-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

window.onClick = function(event) {
  if (!event.target.matches('.task-options-btn')) {
    var dropdowns = document.getElementsByClassName("task-options-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show2')) {
        openDropdown.classList.remove('show2');
      }
    }
  }
}

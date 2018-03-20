const stepForm = () => {
  const step = document.getElementById("step-1");
  const next = document.getElementById("next");
  const step2 = document.getElementById("step-2");
    // console.log("hello")
  if (step) {
    next.addEventListener("click", (event) => {
      event.preventDefault();
      // event.stopPropagation();
      step.classList.add('hidden');
      step2.classList.remove('hidden');

    });
  }
}

const stepForm2 = () => {
  const step2 = document.getElementById("step-2");
  const next = document.getElementById("next2");
  const step3 = document.getElementById("step-3");
    // console.log("hello")
  if (step2) {
    next.addEventListener("click", (event) => {
      event.preventDefault();
      // event.stopPropagation();
      step2.classList.add('hidden');
      step3.classList.remove('hidden');

    });
  }
}


const stepBack = () => {
  const step2 = document.getElementById("step-2");
  const previous = document.getElementById("previous");
  const step = document.getElementById("step-1");
  if (previous) {
    previous.addEventListener("click", (event) => {
      event.preventDefault();
      step2.classList.add("hidden");
      step.classList.remove("hidden");
    });
  }

}

export  { stepForm, stepBack, stepForm2 };


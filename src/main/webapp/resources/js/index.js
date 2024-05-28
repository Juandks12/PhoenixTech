const d = document
 const $themeBtn = d.querySelector(".dark-theme-btn");
 const $selectors = d.querySelectorAll("[data-dark]") // ESLA DATA QUE SE CREO  y al poner los corchetes 
                                                      // Es como decira que todos los elemetnos que tengan ese query
//console.log($themeBtn.textContent)
const classDark = "dark-mode";
 const sun = "☀️";
 const moon = "🌙";
 const lightMode = () => {
        $selectors.forEach(el => el.classList.remove(classDark));
        $themeBtn.textContent = moon
  };
 const darkMode = () => {
        $selectors.forEach(el => el.classList.add(classDark));
        $themeBtn.textContent = sun
  };


  d.addEventListener("click", (e) =>{

  if(e.target.matches(".dark-theme-btn")){
    if($themeBtn.textContent === moon){
      darkMode()
    }else{
      lightMode()
    }
  }
  })


  function moveSlider(direction) {
    const cardsWrapper = document.querySelector('.cards-wrapper');
    const cardWidth = document.querySelector('.card').offsetWidth;
    const scrollAmount = cardWidth + 20; // Ancho de la carta más el espacio entre ellas

    cardsWrapper.scrollBy({
        left: direction * scrollAmount,
        behavior: 'smooth'
    });
}
//mecadopago
const mp = new MercadoPago('TEST-03112ee0-d05c-4612-a1fc-d29cd516f28f', {
    locale: 'es-CO'
});

  const MP = async () => {
      try{
          miArticulo ={}
          miArticulo.title = 'consola';
          miArticulo.quantity = 1;
          miArticulo.unit_price = 1500000;


          const response = await fetch('api/mp', {
              method: 'POST',
              headers: {
                  'Accept': 'Application/json',
                  'Content-Type': 'Application/json'
              },
                body: JSON.stringify(miArticulo)
          })
          const preference = await response.text()
          createCheckoutButton(preference)
      } catch (e){alert('error '+ e)}
  }

  const createCheckoutButton = (preferenceId_OK) => {
      const bricksBuilder = mp.bricks();
      const generateButton = async () => {
          if(window.checkoutButton) window.checkoutButton.unmount()
          bricksBuilder.create("wallet", "wallet_container", {
              initialization: {
                  preferenceId: preferenceId_OK,
              },
          });
      }
      generateButton()
  }



 

  
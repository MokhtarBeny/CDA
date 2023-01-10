// exo 1

// var reponse1 = window.prompt("Saisissez un nombre");

// if ( reponse1 % 2) 

// { 
//     alert("Ce nombre est impair!");
    
// }

// else 

// {
//     alert("Ce nombre est pair!");

// }


//exo2

// var age = window.prompt("Saisissez votre âge");


// if ( age > 18 )

// {   alert( age)
//     alert("Vous êtres majeur")
// }

// else {
//     alert( age)
//     alert("Vous êtes mineur")
// }

//exo3

// var number = window.prompt("Saisissez votre premier nombre");
// var number2 = window.prompt("Saisissez votre second nombre");

// var operateur = window.prompt("Saisissez l'opérateur [+ - * / ]");


// switch(operateur)
// {

//     case "+" :
//         alert(number+number2);
//         break;
//     case "-" :
//         alert(number-number2);
//         break;
//     case "*" :
//         alert(number*number2);
//         break;
//     case "/" :
//       alert(number/number2);
//       break;
//     default :
//         alert("Merci de saisir un opérateur correct")        

// }

//exo4 

 var pu = window.prompt("Saisissez votre le prix de l'article");
 var qtecom = window.prompt("Saisissez la quantité d'article");

 pap = pu * qtecom;

port= 0;

$rem=0;

 if (pap > 500 ) 
 
 {
   alert("Vos frais de port sont offerts")

 }
if( pap < 100)
{
    port=6;
}
if (pap >100 &&  pap<200)

{
 rem = pap * 1.05;
}
if (pap <100)

{
 rem = 0;
}
if (pap > 500)

{
 rem = pap * 1.10;
}

else 

 {
  port = pap *1,02;
  alert( "Vos frais de port sont de ".port )

 }






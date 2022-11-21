<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<?php

//exo 1 ---------------------------------------------------------------------
  $a = 1;
  echo $a % 2;   
    
for($n = 0 ; $n <150 ; $n++)
{
   $result = $n % 2;
   if($result == 1)
   {
    echo $n."<br>";
   }
}


//exo 2--------------------------------------------------------------------------
$v = 0;

for ($p = 1;  $p <= 500; $p++) 
{
    $v++;
    echo $v." "."Je dois faire des sauvegardes régulières de mes fichiers.<br>";
}

//exo3-----------------------------------------------------------------------

$NbrCol = 9;
$NbrLigne = 9;
?>
<table border="10" width="500">
<tr>
<td></td>
<?php
for ($j=0; $j<=$NbrCol; $j++) {
echo '<td font-weight:bold  >'.$j.'</td>';
}
echo '</tr>';

for ($i=0; $i<=$NbrLigne; $i++) {
echo '<tr>';
for ($j=0; $j<=$NbrCol; $j++) {

if ($j==0) {
echo '<td font-weight:bold  >'.$i.'</td>';
}

if ($i==$j) {
echo '<td>';
} else {
echo '<td>';
}

echo $i*$j;

echo '</td>';
}
echo '</tr>';
$j=1;
}
echo '</table>';

//exo tableau  1  

$mois = array("January"=>31,
              "February"=>28,
              "March"=>31,
              "April"=>30,
              "May"=>31,
              "June"=>30,
              "July"=>31,
              "August"=>31,
              "September"=>30,
              "October"=>31,
              "November"=>30,
              "December"=>31);
?>
<table border : 2px>

<?php foreach ($mois as $m => $value) {  ?>

<tr>
  <td> <?= $m ?> </td>
  <td> <?= $value ?> </td>

</tr>
        
<?php }

?>
</table>

<!-- tableau exo 2 ---------------------------------------------------------------->

<?php

$capitales = array(
    "Bucarest" => "Roumanie",
    "Bruxelles" => "Belgique",
    "Oslo" => "Norvège",
    "Ottawa" => "Canada",
    "Paris" => "France",
    "Port-au-Prince" => "Haïti",
    "Port-d'Espagne" => "Trinité-et-Tobago",
    "Prague" => "République tchèque",
    "Rabat" => "Maroc",
    "Riga" => "Lettonie",
    "Rome" => "Italie",
    "San José" => "Costa Rica",
    "Santiago" => "Chili",
    "Sofia" => "Bulgarie",
    "Alger" => "Algérie",
    "Amsterdam" => "Pays-Bas",
    "Andorre-la-Vieille" => "Andorre",
    "Asuncion" => "Paraguay",
    "Athènes" => "Grèce",
    "Bagdad" => "Irak",
    "Bamako" => "Mali",
    "Berlin" => "Allemagne",
    "Bogota" => "Colombie",
    "Brasilia" => "Brésil",
    "Bratislava" => "Slovaquie",
    "Varsovie" => "Pologne",
    "Budapest" => "Hongrie",
    "Le Caire" => "Egypte",
    "Canberra" => "Australie",
    "Caracas" => "Venezuela",
    "Jakarta" => "Indonésie",
    "Kiev" => "Ukraine",
    "Kigali" => "Rwanda",
    "Kingston" => "Jamaïque",
    "Lima" => "Pérou",
    "Londres" => "Royaume-Uni",
    "Madrid" => "Espagne",
    "Malé" => "Maldives",
    "Mexico" => "Mexique",
    "Minsk" => "Biélorussie",
    "Moscou" => "Russie",
    "Nairobi" => "Kenya",
    "New Delhi" => "Inde",
    "Stockholm" => "Suède",
    "Téhéran" => "Iran",
    "Tokyo" => "Japon",
    "Tunis" => "Tunisie",
    "Copenhague" => "Danemark",
    "Dakar" => "Sénégal",
    "Damas" => "Syrie",
    "Dublin" => "Irlande",
    "Erevan" => "Arménie",
    "La Havane" => "Cuba",
    "Helsinki" => "Finlande",
    "Islamabad" => "Pakistan",
    "Vienne" => "Autriche",
    "Vilnius" => "Lituanie",
    "Zagreb" => "Croatie"
);

// partie 1 

/* ksort($capitales) ;

foreach ($capitales as $key => $value) {
  echo $key."=".$value."<br>";
}
 */

 // partie 2

 /*  asort($capitales) ;
 foreach ($capitales as $key => $value) {
  echo $value."=".$key."<br>";
  
}

parite 3
echo count($capitales);   nommé le tableau dans le count afin de calculer le nombre de key
 */

 //partie 4

/* 
 foreach ($capitales as $key => $value) {
   if (substr($key, 0, 1) == "B")
   echo $key."=".$value."<br>";
 }
 */

 // partie département

 $departements = array(
  "Hauts-de-france" => array("Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"),
  "Bretagne" => array("Côtes d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"),
  "Grand-Est" => array("Ardennes", "Aube", "Marne", "Haute-Marne", "Meurthe-et-Moselle", "Meuse", "Moselle", "Bas-Rhin", "Haut-Rhin", "Vosges"),
  "Normandie" => array("Calvados", "Eure", "Manche", "Orne", "Seine-Maritime")
);

ksort($departements);

/* foreach ($departements  as $region => $departement) {
  echo"<strong>". $region."</strong><br>";
  foreach ($departement as $dep1) {
    echo $dep1."<br>";
  }
} */

foreach ($departements  as $region => $departement) {
  echo"<strong>". $region."    >>>>     ".count($departement)."</strong><br>";
  
}

/* $texte = ucfirst("bonjour le monde");
echo $texte; */

function bonjour($prenom, $nom)
{
    echo "Bonjour mr Jones"." ".$prenom." ".$nom."<br>";
}   

bonjour("le premier du nom : Nabi","Aries") ;

function Test1 () 
{ 
   static $a=0; 
   echo "$a<br />"; 
   $a++;
} 

// Appel de la fonction (3 fois)
Test1(); 
Test1(); 
Test1();  


link()

?>

<a href="https://www.reddit.com/">Reddit Hug</a>

</body>
</html>



<?php

namespace App\DataFixtures;

use App\Entity\Categorie;
use App\Entity\SousCategorie;
use App\Entity\Produit;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $Categorie1 = new Categorie();
        $Categorie1->setCategorieNom("Homme");
        $Categorie1->setCategorieType("Type1");
        $Categorie1->setImagesrc("imgcat1.jpg");
        $manager->persist($Categorie1);

        $Categorie2 = new Categorie();
        $Categorie2->setCategorieNom("Femme");
        $Categorie2->setCategorieType("Type2");
        $Categorie2->setImagesrc("imgcat2.png");
        $manager->persist($Categorie2);

        $Categorie3 = new Categorie();
        $Categorie3->setCategorieNom("Enfant");
        $Categorie3->setCategorieType("Type3");
        $Categorie3->setImagesrc("imgcat3.png");
        $manager->persist($Categorie3);


                $SousCategorie1 = new SousCategorie();
                $SousCategorie1->setSousCategorieNom("Sneakers");
                $SousCategorie1->setSousCategorieType("Street");
                $SousCategorie1->setImagesrc("imgsouscat1.jpg");
                $SousCategorie1->setCategorie($Categorie1);
                $manager->persist($SousCategorie1);

                $SousCategorie2 = new SousCategorie();
                $SousCategorie2->setSousCategorieNom("Running");
                $SousCategorie2->setSousCategorieType("Sport");
                $SousCategorie2->setImagesrc("imgsouscat2.jpg");
                $SousCategorie2->setCategorie($Categorie1);
                $manager->persist($SousCategorie2);
                
                $SousCategorie3 = new SousCategorie();
                $SousCategorie3->setSousCategorieNom("Sneakers");
                $SousCategorie3->setSousCategorieType("Street");
                $SousCategorie3->setImagesrc("imgsouscat3.jpg");
                $SousCategorie3->setCategorie($Categorie2);
                $manager->persist($SousCategorie3);

                $SousCategorie4 = new SousCategorie();
                $SousCategorie4->setSousCategorieNom("Running");
                $SousCategorie4->setSousCategorieType("Sport");
                $SousCategorie4->setImagesrc("imgsouscat4.jpg");
                $SousCategorie4->setCategorie($Categorie2);
                $manager->persist($SousCategorie4);

                $SousCategorie5 = new SousCategorie();
                $SousCategorie5->setSousCategorieNom("Sneakers");
                $SousCategorie5->setSousCategorieType("Street");
                $SousCategorie5->setImagesrc("imgsouscat5.jpg");
                $SousCategorie5->setCategorie($Categorie3);
                $manager->persist($SousCategorie5);

                $SousCategorie6 = new SousCategorie();
                $SousCategorie6->setSousCategorieNom("Running");
                $SousCategorie6->setSousCategorieType("Sport");
                $SousCategorie6->setImagesrc("imgsouscat6.jpg");
                $SousCategorie6->setCategorie($Categorie3);
                $manager->persist($SousCategorie6);

                

                    $Produit1 = new Produit();
                    $Produit1->setNom("Air Jordan1");
                    $Produit1->setStockPhysique("12");
                    $Produit1->setDescription("stylé et confort");
                    $Produit1->setImage("#1");
                    $Produit1->setActif(0);
                    $Produit1->setPrix(90);
                    $Produit1->setSousCategorie($SousCategorie1);
                    $manager->persist($Produit1);

                    $Produit2 = new Produit();
                    $Produit2->setNom("Oasics1");
                    $Produit2->setStockPhysique("14");
                    $Produit2->setDescription("Pour courir vite");
                    $Produit2->setImage("#2");              
                    $Produit2->setActif(0);
                    $Produit2->setPrix(60);
                    $Produit2->setSousCategorie($SousCategorie2);
                    $manager->persist($Produit2);

                    $Produit3 = new Produit();
                    $Produit3->setNom("Air Jordan2");
                    $Produit3->setStockPhysique("10");
                    $Produit3->setDescription("stylé et confort");
                    $Produit3->setImage("#3");
                    $Produit3->setActif(0);
                    $Produit3->setPrix(100);
                    $Produit3->setSousCategorie($SousCategorie3);
                    $manager->persist($Produit3);

                    $Produit4 = new Produit();
                    $Produit4->setNom("Oasics2");
                    $Produit4->setStockPhysique("8");
                    $Produit4->setDescription("Pour courir vite");
                    $Produit4->setImage("#4");
                    $Produit4->setActif(0);
                    $Produit4->setPrix(70);
                    $Produit4->setSousCategorie($SousCategorie4);
                    $manager->persist($Produit4);

                

                    $Produit5 = new Produit();
                    $Produit5->setNom("Air Jordan3");
                    $Produit5->setStockPhysique("15");
                    $Produit5->setDescription("stylé et confort");
                    $Produit5->setImage("#5");
                    $Produit5->setActif(0);
                    $Produit5->setPrix(80);
                    $Produit5->setSousCategorie($SousCategorie5);
                    $manager->persist($Produit5);

                    $Produit6 = new Produit();
                    $Produit6->setNom("Oasics3");
                    $Produit6->setStockPhysique("9");
                    $Produit6->setDescription("Pour courir vite");
                    $Produit6->setImage("#6");
                    $Produit6->setActif(0);
                    $Produit6->setPrix(80);
                    $Produit6->setSousCategorie($SousCategorie6);
                    $manager->persist($Produit6);

      $manager->flush();
    }
}
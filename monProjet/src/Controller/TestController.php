<?php

namespace App\Controller;


use App\Entity\Categorie;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TestController extends AbstractController
{
    #[Route('/{categorie}', name: 'accueil')]
    public function accueil(): Response
    {
        return $this->render('accueil/index.html.twig', [
            "categorie" => $categorie
            
        ]);
    }

    
    #[Route('/categorie/{categorie}', name: 'categorie')]
    public function categorie(Categorie $categorie): Response
    {
        

        return $this->render('accueil/categorie.html.twig', [
            "categorie" => $categorie
        ]);
    }

    #[Route('/souscategorie/{souscategorie}', name: 'Produit')]
    public function produits(SousCategorie $souscategorie ): Response
    {

       
        return $this->render('accueil/souscategorie.html.twig', [
            "produits" => $souscategorie->getProduits()
            
        ]);
    }

    #[Route('/apropos', name: 'apropos')]
    public function apropos(): Response
    {
        return $this->render('accueil/apropos.html.twig', [
            
        ]);
    }

    /* #[Route('/apropos', name: 'apropos')]
    public function apropos(): Response
    {
        return $this->render('accueil/apropos.html.twig', [
            
        ]);
    }

    #[Route('/apropos', name: 'apropos')]
    public function apropos(): Response
    {
        return $this->render('accueil/apropos.html.twig', [
            
        ]);
    }

    #[Route('/apropos', name: 'apropos')]
    public function apropos(): Response
    {
        return $this->render('accueil/apropos.html.twig', [
            
        ]);
    } */


}



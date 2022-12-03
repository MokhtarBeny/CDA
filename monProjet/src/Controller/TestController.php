<?php

namespace App\Controller;

use App\Entity\Categorie;
use App\Repository\CategorieRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TestController extends AbstractController
{
    #[Route('/', name: 'accueil')]
    public function accueil(CategorieRepository $repo): Response
    {
        $categories =$repo->findAll();

        return $this->render('accueil/index.html.twig', [
            "categorie" => $categories
            
        ]);
    }

    
    #[Route('/categorie/{categorie}', name: 'categorie')]
    public function categorie(Categorie $categorie): Response
    {
        

        return $this->render('accueil/categorie.html.twig', [
            "categorie" => $categorie
        ]);
    }

    #[Route('/souscategorie/{souscategorie}', name: 'souscategorie')]
    public function souscategorie(SousCategorie $souscategorie): Response
    {
        

        return $this->render('accueil/souscategorie.html.twig', [
            "souscategorie" => $souscategorie
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



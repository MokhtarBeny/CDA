<?php

namespace App\Controller;


use App\Entity\Produit;
use App\Entity\Categorie;
use App\Entity\SousCategorie;
use App\Repository\ProduitRepository;
use App\Repository\CategorieRepository;
use App\Repository\SousCategorieRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TestController extends AbstractController
{
       #[Route('/', name: 'accueil')]
    public function cat( CategorieRepository $categorieRepository): Response
    {
       
        return $this->render('accueil/index.html.twig', [

            "categories" => $categorieRepository->findAll()       

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

     #[Route('/produit/{produit}', name: 'produit')]
    public function produit(ProduitRepository $repo, Produit $produit): Response

    {
        $produit = $repo->find($produit);
        return $this->render('produit/produit_desc.html.twig', [
            'liste_des_produits' => $produit
            
        ]);
    }
    #[Route('/apropos', name: 'apropos')]
    public function apropos(): Response
    {
        return $this->render('accueil/apropos.html.twig', [
            
        ]);
    }

    
    }


    /*

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
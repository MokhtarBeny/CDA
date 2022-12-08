<?php

namespace App\Controller;


use App\Entity\Produit;
use App\Repository\CategorieRepository;
use App\Repository\ProduitRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PanierController extends AbstractController
{   
    #[Route('/add/{id}', name: 'app_add')]
    public function add(SessionInterface $session, Produit $id): Response
    {
        $panier = $session->get("panier", []);

        
        $p = null;
        foreach ( $panier as $pro ) {
            if ($pro->getId() == $id->getId()) {
                $p = $pro;
            }
        }
        
        if ($p==null) {  // le produit n'existe pas dans le panier

            $id->quantite = 1;
            $panier[] = $id;
        }
        else { // Le produit existe déjà
            $p->quantite++;
        }

        $session->set("panier", $panier);

        return $this->redirect("/panier");
    }

    #[Route('/panier', name: 'app_panier')]
    public function index( ProduitRepository $produitRepository, CategorieRepository $categorieRepository, SessionInterface $session): Response
    {
        $categories = $categorieRepository->findAll();

        $panier = $session->get("panier", []); 
        
        //On fabrique les données
        $datapanier = [];
        $total = 0;
        //dd($panier);
        
        foreach($panier as $id => $produit)
            {
            // $product = $produitRepository->find($id);
            $datapanier[] = [
                "produit" => $produit,
                "quantite" => $produit->quantite
            ];
            $total += $produit->getPrix() * $produit->quantite;
            }

        return $this->render('panier/index.html.twig',  
        [
            "datapanier" => $datapanier,
            "total" => $total,
            'panier' => $panier,
            'categories' => $categories
            
        ]);
    }

    #[Route('/clear', name: 'app_clear')]
    public function clear(SessionInterface $session): Response
    {
        $session->set("panier", []);

        return $this->redirect("/panier");
    }
}

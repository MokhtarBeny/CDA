<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    #[Route('/', name: 'acceuil')]
    public function acceuil(): Response
    {
        return $this->render('acceuil/index.html.twig', [
            
        ]);
    }


    #[Route('/categorie', name: 'categorie')]
    public function categorie(): Response
    {
        return $this->render('acceuil/categorie.html.twig', [
           
        ]);
    }

    #[Route('/apropos', name: 'apropos')]
    public function apropos(): Response
    {
        return $this->render('acceuil/apropos.html.twig', [
            
        ]);
    }


}

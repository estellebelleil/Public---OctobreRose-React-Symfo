<?php

namespace App\Controller\Api;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class AuthorController extends AbstractController
{
    #[Route('/api/author', name: 'app_api_author')]
    public function index(): Response
    {
        return $this->render('api/author/index.html.twig', [
            'controller_name' => 'AuthorController',
        ]);
    }
}

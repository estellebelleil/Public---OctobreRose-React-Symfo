<?php

namespace App\Controller\Api;

use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ArticleController extends AbstractController
{
    /**
     * Liste de tous les articles
     * sur serveur : http://0.0.0.0:8080/api/article/list
     */
    #[Route('/api/article/list', name: 'api_article_list')]
    public function list(ArticleRepository $articleRepository)
    {
        $articles = $articleRepository->findAll();
        return $this->json(
            $articles,
            200,
            [''],
            ['groups' => 'get_articles'] 
        );
    }
}

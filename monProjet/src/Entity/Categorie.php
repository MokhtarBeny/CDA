<?php

namespace App\Entity;

use App\Repository\CategorieRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CategorieRepository::class)]
class Categorie
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 50)]
    private ?string $CategorieNom = null;

    #[ORM\Column(length: 50)]
    private ?string $categorieType = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategorieNom(): ?string
    {
        return $this->CategorieNom;
    }

    public function setCategorieNom(string $CategorieNom): self
    {
        $this->CategorieNom = $CategorieNom;

        return $this;
    }

    public function getCategorieType(): ?string
    {
        return $this->categorieType;
    }

    public function setCategorieType(string $categorieType): self
    {
        $this->categorieType = $categorieType;

        return $this;
    }
}

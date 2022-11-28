<?php

namespace App\Entity;

use App\Repository\ProduitRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ProduitRepository::class)]
class Produit
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(nullable: true)]
    private ?float $stockPhysique = null;

    #[ORM\Column(length: 255)]
    private ?string $description = null;

    #[ORM\Column(length: 200)]
    private ?string $image = null;

    #[ORM\Column]
    private ?bool $actif = null;

    
    #[ORM\ManyToOne(inversedBy: 'produits')]
    private ?SousCategorie $SousCategorie = null;

    #[ORM\Column(nullable: true)]
    private ?float $Prix = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getStockPhysique(): ?float
    {
        return $this->stockPhysique;
    }

    public function setStockPhysique(?float $stockPhysique): self
    {
        $this->stockPhysique = $stockPhysique;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function isActif(): ?bool
    {
        return $this->actif;
    }

    public function setActif(bool $actif): self
    {
        $this->actif = $actif;

        return $this;
    }

    
    public function getSousCategorie(): ?SousCategorie
    {
        return $this->SousCategorie;
    }

    public function setSousCategorie(?SousCategorie $SousCategorie): self
    {
        $this->SousCategorie = $SousCategorie;

        return $this;
    }

    public function getPrix(): ?float
    {
        return $this->Prix;
    }

    public function setPrix(?float $Prix): self
    {
        $this->Prix = $Prix;

        return $this;
    }
}

<?php

namespace OperateurBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Inventaire
 *
 * @ORM\Table(name="inventaire")
 * @ORM\Entity(repositoryClass="OperateurBundle\Repository\InventaireRepository")
 */
class Inventaire
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;


    /**
     * @ORM\ManyToOne(targetEntity="AdminBundle\Entity\User")
     */
    private $operateur;

    /**
     * @var string
     *
     * @ORM\Column(name="numero", type="string", length=50)
     */
    private $numero;


    /**
     * @var string
     *
     * @ORM\Column(name="etat", type="string", length=4)
     */
    private $etat;

    /**
     * @ORM\Column(name="nbr_piece", type="smallint")
     */
    private $nbrPiece;


    /**
     * @ORM\Column(name="nbr_page", type="smallint")
     */
    private $nbrPage;

    /**
     * @ORM\Column(name="statut", type="smallint")
     */
    private $statut;

    /**
     * @var string
     *
     * @ORM\Column(name="commetaire", type="string", length=255,nullable=true)
     */
    private $commetaire;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created", type="datetime")
     */
    private $created;


    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getOperateur()
    {
        return $this->operateur;
    }

    /**
     * @param mixed $operateur
     */
    public function setOperateur($operateur): void
    {
        $this->operateur = $operateur;
    }

    /**
     * @return string
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * @param string $numero
     */
    public function setNumero(string $numero): void
    {
        $this->numero = $numero;
    }

    /**
     * @return string
     */
    public function getEtat()
    {
        return $this->etat;
    }

    /**
     * @param string $etat
     */
    public function setEtat(string $etat): void
    {
        $this->etat = $etat;
    }

    /**
     * @return mixed
     */
    public function getNbrPiece()
    {
        return $this->nbrPiece;
    }

    /**
     * @param mixed $nbrPiece
     */
    public function setNbrPiece($nbrPiece): void
    {
        $this->nbrPiece = $nbrPiece;
    }

    /**
     * @return mixed
     */
    public function getNbrPage()
    {
        return $this->nbrPage;
    }

    /**
     * @param mixed $nbrPage
     */
    public function setNbrPage($nbrPage): void
    {
        $this->nbrPage = $nbrPage;
    }

    /**
     * @return mixed
     */
    public function getStatut()
    {
        return $this->statut;
    }

    /**
     * @param mixed $statut
     */
    public function setStatut($statut): void
    {
        $this->statut = $statut;
    }

    /**
     * @return string
     */
    public function getCommetaire()
    {
        return $this->commetaire;
    }

    /**
     * @param string $commetaire
     */
    public function setCommetaire(string $commetaire): void
    {
        $this->commetaire = $commetaire;
    }

    /**
     * @return \DateTime
     */
    public function getCreated(): \DateTime
    {
        return $this->created;
    }

    /**
     * @param \DateTime $created
     */
    public function setCreated(\DateTime $created): void
    {
        $this->created = $created;
    }


}

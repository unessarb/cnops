<?php

namespace ControleurBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class InventaireType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('numero', TextType::class, array('label' => 'N° Dossier *'))
            ->add('etat', TextType::class, array('label' => 'Etat du dossier *'))
            ->add('nbrPiece', TextType::class, array('label' => 'Nbre de pièce *'))
            ->add('nbrPage', TextType::class, array('label' => 'Nbre de page *'))
            ->add('statut', ChoiceType::class, [
                'choices' => [
                    'En attente' => 0,
                    'Conforme' => 1,
                    'Non conforme' => 2,
                ],
            ])
            ->add('commetaire', TextareaType::class, array('label' => 'Commentaire','required'   => false))
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'OperateurBundle\Entity\Inventaire',
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'operateurbundle_inventaire';
    }


}

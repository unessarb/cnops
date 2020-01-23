<?php

namespace OperateurBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
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
            ->add('numero', TextType::class, array('label' => 'N° Dossier *' ))
            ->add('etat', ChoiceType::class, array('label' => 'Etat du dossier *',
                'choices' => [
                    'Etat 1' => 'Etat 1',
                    'Etat 2' => 'Etat 2',
                    'Etat 3' => 'Etat 3',
                ]))
            ->add('nbrPiece', TextType::class, array('label' => 'Nbre de pièce *' ))
            ->add('nbrPage', TextType::class, array('label' => 'Nbre de page *' ));
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

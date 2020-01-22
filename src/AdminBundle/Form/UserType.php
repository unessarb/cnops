<?php

namespace AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Length;

class UserType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('username', TextType::class, array('label' => 'register.username' ))
            ->add('prenom', TextType::class, array('label' => 'register.prenom' ))
            ->add('nom', TextType::class, array('label' => 'register.nom' ))
            ->add('password', RepeatedType::class, array(
                'type' => PasswordType::class,
                'options' => array(
                    'attr' => array(
                        'autocomplete' => 'new-password',
                    ),
                ),
                'constraints' => [new Length(['min' => 6,'max'=>20])],
                'first_options' => array('label' => 'register.password'),
                'second_options' => array('label' => 'register.password_confirmation'),
                'invalid_message' => 'fos_user.password.mismatch',
            ))
            ->add('email', EmailType::class, array('label' => 'register.email' ))
            ->add('role', ChoiceType::class, array(
                'label' => 'default.role' ,
                'choices'  => array(
                    'default.admin' => 1,
                    'default.acheteur' => 2,
                    'default.offreur' => 3
                ),
            ))
            ->add('image', FileType::class, array('label' => 'default.image', 'data_class' => null, 'required' => false ));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AdminBundle\Entity\User',
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'adminbundle_user';
    }


}

<?php

namespace OperateurBundle\Controller;

use OperateurBundle\Entity\Inventaire;
use OperateurBundle\Form\InventaireType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/operateur/inventaire",name="mes_inventaire")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository("OperateurBundle:Inventaire");

        /*CurrentUser*/
        $user = $this->container->get('security.token_storage')->getToken()->getUser();

        $invetaires = $repository->findByOperateur($user,['created'=>'desc']);

        return $this->render('OperateurBundle:Default:index.html.twig',['inventaires'=>$invetaires]);
    }

    /**
     * @Route("/operateur/inventaire/add", name="ajouter_inventaire")
     */
    public function ajouterAction(Request $request) {

        $inventaire = new Inventaire();
        $form = $this->createForm(InventaireType::class,$inventaire);
        $form->handleRequest($request);
        /*CurrentUser*/
        $user = $this->container->get('security.token_storage')->getToken()->getUser();
        if ($form->isSubmitted() && $form->isValid()) {

            $inventaire = $form->getData();
            $inventaire->setCreated(new \DateTime());
            $inventaire->setStatut(0);
            $inventaire->setOperateur($user);
            $em = $this->getDoctrine()->getManager();
            $em->persist($inventaire);
            $em->flush();
            $this->addFlash(
                'success',
                'Bien enregistrée.'
            );
            return $this->redirectToRoute('mes_inventaire');
        }


        return $this->render('OperateurBundle:Default:add.html.twig', array(
            'form' => $form->createView(),
        ));
    }

    /**
     *
     * @Route("/operateur/inventaire/{id}", name="edit_inventaire")
     */
    public function editAction(Request $request, Inventaire $inventaire) {


        $em = $this->getDoctrine()->getManager();

        $form = $this->createForm(InventaireType::class, $inventaire);
        $form->handleRequest($request);


        if ($form->isSubmitted()) {

            $em->flush();
            $this->addFlash(
                'success',
                'Bien modifiée.'
            );
            return $this->redirectToRoute('mes_inventaire');

        }
        return $this->render('OperateurBundle:Default:edit.html.twig', array(
            'form' => $form->createView(),
        ));
    }

    /**
     *
     * @Route("/operateur/inventaire/{id}", name="supprimer_inventaire")
     */
    public function removeAction(Inventaire $inventaire){

        $em = $this->getDoctrine()->getManager();

        try {

            $em->remove($inventaire);
            $em->flush();


        } catch(\Exception $e) {
            $this->addFlash(
                'error',
                'une erreur est survenu !.'
            );
            return $this->redirect($this->generateUrl('mes_inventaire'));
        }

        return $this->redirectToRoute('mes_inventaire');
    }

}

<?php

namespace ControleurBundle\Controller;

use ControleurBundle\Form\InventaireType;
use OperateurBundle\Entity\Inventaire;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{

    /**
     * @Route("/controleur/inventaire",name="inventaires")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository("OperateurBundle:Inventaire");


        $invetaires = $repository->findBy([],['created'=>'desc']);

        return $this->render('ControleurBundle:Default:index.html.twig',['inventaires'=>$invetaires]);
    }

    /**
     *
     * @Route("/controleur/inventaire/{id}", name="edit_inventaires")
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
            return $this->redirectToRoute('inventaires');

        }
        return $this->render('ControleurBundle:Default:edit.html.twig', array(
            'form' => $form->createView(),
        ));
    }

    /**
     *
     * @Route("/controleur/inventaire/{id}", name="supprimer_inventaires")
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
            return $this->redirect($this->generateUrl('inventaires'));
        }

        return $this->redirectToRoute('inventaires');
    }
}

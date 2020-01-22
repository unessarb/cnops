<?php

namespace AdminBundle\Controller;

use AdminBundle\Entity\User;
use AdminBundle\Form\UserType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();
        $users = $em->getRepository('AdminBundle:User')->findByRole(3);
        $acheteurs = $em->getRepository('AdminBundle:User')->findByRole(2);


        return $this->render('AdminBundle:Default:index.html.twig', array());
    }

    /**
     * @Route("/admin/ajouter_utilisateur", name="ajouter_user")
     */
    public function ajouterUserAction(Request $request)
    {


        $form = $this->createForm(UserType::class);
        $form->handleRequest($request);


        //var_dump($this->get('kernel')->getRootDir()); exit();
        if ($form->isSubmitted()) {

            $em = $this->getDoctrine()->getManager();

            $user = new User();
            $username = $form["username"]->getData();
            $email = $form["email"]->getData();

            $repository = $em->getRepository("AdminBundle:User");
            $user2 = $em->getRepository('AdminBundle:User')->findByUsername($username);
            $user3 = $em->getRepository('AdminBundle:User')->findByEmail($email);

            if ($user2) {
                $this->addFlash(
                    'message',
                    'Identifiant existe déja dans la BD, veuillez choisir un autre.'
                );
                return $this->render('AdminBundle:Default:register.html.twig', array(
                    'form' => $form->createView(),
                ));
            }

            if ($user3) {
                $this->addFlash(
                    'message',
                    'Email existe déja dans la BD, veuillez choisir un autre.'
                );
                return $this->render('AdminBundle:Default:register.html.twig', array(
                    'form' => $form->createView(),
                ));
            }


            $nom = $form["nom"]->getData();
            $prenom = $form["prenom"]->getData();
            $password = $form["password"]->getData();
            $role = $form['role']->getData();

            $file = $form["image"]->getData();

            $user->setUsername($username);
            $user->setEmail($email);
            $user->setNom($nom);
            $user->setPrenom($prenom);
            $user->setEnabled(1);
            $user->setRole($role);

            if ($role === 1) {
                $roles = 'ROLE_ADMIN';
            } elseif ($role === 2) {
                $roles = 'ROLE_ACHETEUR';
            } else {
                $roles = 'ROLE_FOURNISSEUR';
            }
            $user->setRoles([$roles]);

            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $charactersLength = strlen($characters);
            $randomString = '';
            for ($i = 0; $i < 10; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }

            $user->setSalt($randomString);


            $encoder = $this->get('security.encoder_factory')->getEncoder($user);
            $encodedPassword = $encoder->encodePassword($password, $user->getSalt());
            $user->setPassword($encodedPassword);


            if ($file != null) {

                $fileName = md5(uniqid()) . '.' . $file->guessExtension();

                try {
                    $file->move(
                        $this->getParameter('images_directory'),
                        $fileName
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }

                //$temp = "http://" . $request->getHost() ."/pmp/pmp-api/web/assets/files/images/" . $fileName;
                $user->setImage($fileName);
            }

            $em->persist($user);
            $em->flush();


            return $this->redirectToRoute('list_users');
        }

        return $this->render('AdminBundle:Default:register.html.twig', array(
            'form' => $form->createView(),
        ));
    }

    /**
     * @Route("/admin/liste_utilisateur", name="list_users")
     */
    public function listUserAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository("AdminBundle:User");

        $users = $repository->findBy([],['id'=>'desc']);

        return $this->render('AdminBundle:Default:listusers.html.twig', array(
            'users' => $users,
        ));
    }

    /**
     *
     * @Route("/admin/supprimer_utilisateur/{id}", name="remove_user")
     */
    public function removeUserAction(User $user)
    {

        $em = $this->getDoctrine()->getManager();

        try {

            $em->remove($user);
            $em->flush();
            $fileSystem = new Filesystem();
            //$end = array_slice(explode('/', $user->getImage()), -1)[0];
            if ($user->getImage() != null) {
                $path = $this->getParameter('images_directory') . "/" . $user->getImage();
                $fileSystem->remove($path);
            }

        } catch (\Doctrine\DBAL\DBALException $e) {
            $this->addFlash(
                'message',
                'une erreur est survenu !.'
            );
            return $this->redirect($this->generateUrl('list_users'));
        }

        return $this->redirectToRoute('list_users');
    }

    /**
     *
     * @Route("/admin/modifier_utilisateur/{id}", name="edit_user")
     */
    public function editRegisterAction(Request $request, User $user)
    {


        $em = $this->getDoctrine()->getManager();

        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        $session = $this->get('session');

        if ($form->isSubmitted()) {

            $oldusername = $session->get('oldusername');
            $oldemail = $session->get('oldemail');
            $oldimage = $session->get('oldimage');

            if (strcmp($oldusername, $form["username"]->getData()) !== 0) {

                $otherUser = $em->getRepository('AdminBundle:User')->findByUsername($form["username"]->getData());

                if ($otherUser) {
                    $this->addFlash(
                        'message',
                        'Identifiant existe déja dans la BD, veuillez choisir un autre.'
                    );
                    return $this->render('AdminBundle:Default:modifieruser.html.twig', array(
                        'form' => $form->createView(),
                    ));
                }
            }

            if (strcmp($oldemail, $form["email"]->getData()) !== 0) {

                $otherUser = $em->getRepository('AdminBundle:User')->findByEmail($form["email"]->getData());

                if ($otherUser) {
                    $this->addFlash(
                        'message',
                        'Email existe déja dans la BD, veuillez choisir un autre.'
                    );
                    return $this->render('AdminBundle:Default:modifieruser.html.twig', array(
                        'form' => $form->createView(),
                    ));
                }
            }

            $password = $form["password"]->getData();
            $role = $form['role']->getData();

            $encoder = $this->get('security.encoder_factory')->getEncoder($user);
            $encodedPassword = $encoder->encodePassword($password, $user->getSalt());
            $user->setPassword($encodedPassword);

            $user->setRole($role);


            if ($role === 1) {
                $roles = 'ROLE_ADMIN';
            } elseif ($role === 2) {
                $roles = 'ROLE_ACHETEUR';
            } else {
                $roles = 'ROLE_FOURNISSEUR';
            }
            $user->setRoles([$roles]);

            $file = $user->getImage();
            if ($file != null) {
                $fileName = md5(uniqid()) . '.' . $file->guessExtension();

                try {
                    $file->move(
                        $this->getParameter('images_directory'),
                        $fileName
                    );
                } catch (FileException $e) {
                }

                //$temp = "http://" . $request->getHost() ."/pmp/pmp-api/web/assets/files/images/" . $fileName;
                $user->setImage($fileName);
            } else {
                $user->setImage($oldimage);
            }


            $em->flush();

            return $this->redirectToRoute('list_users');


        } else {
            $session->set('oldusername', $user->getUsername());
            $session->set('oldemail', $user->getEmail());
            $session->set('oldimage', $user->getImage());
        }
        return $this->render('AdminBundle:Default:modifieruser.html.twig', array(
            'form' => $form->createView(),
        ));
    }


    /**
     *
     * @Route("/admin/blocker_utilisateur/{id}", name="blocker_user")
     */
    public function blockerUserAction(User $user)
    {

        $em = $this->getDoctrine()->getManager();
        $user->setEnabled(false);
        $em->persist($user);
        $em->flush();

        return $this->redirectToRoute('list_users');
    }

    /**
     *
     * @Route("/admin/activer_utilisateur/{id}", name="activer_user")
     */
    public function activerUserAction(User $user)
    {

        $em = $this->getDoctrine()->getManager();
        $user->setEnabled(true);
        $em->persist($user);
        $em->flush();

        return $this->redirectToRoute('list_users');
    }

    /**
     *
     * @Route("/admin/trace", name="trace")
     */
    public function traceAction()
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository("AdminBundle:Trace");

        $traces = $repository->findBy([],['created'=>'desc']);

        return $this->render('AdminBundle:Trace:index.html.twig', array(
            'traces' => $traces,
        ));

    }
}

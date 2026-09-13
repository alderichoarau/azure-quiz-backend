INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('ed4097fd-714d-4159-acc3-5c0947e35f12', '00000000-0000-0000-0000-000000000002', 'module-02-identities-governance-revision-fr', 'Module 2 (FR) - Révision : Identités et gouvernance',
        NULL, 13);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1ba8131d-6277-437c-8ebe-184035231a13', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Qu''est-ce que Microsoft Entra ID ?',
        'Microsoft Entra ID est le service cloud de gestion des identités et des accès de Microsoft. Il authentifie les utilisateurs et génère un jeton d''accès qui détermine les ressources auxquelles ils peuvent accéder.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5d305ddf-3c32-4fa1-a524-35a12d41d142', '1ba8131d-6277-437c-8ebe-184035231a13', 'Un outil de sauvegarde des machines virtuelles', FALSE, 1),
    ('070ace80-c840-4f35-8804-b5b3f8e3389d', '1ba8131d-6277-437c-8ebe-184035231a13', 'Un service de gestion des identités et des accès basé sur le cloud', TRUE, 2),
    ('595a74b5-9aff-4516-8e3c-6cd543fd8836', '1ba8131d-6277-437c-8ebe-184035231a13', 'Un service de stockage de fichiers dans le cloud', FALSE, 3),
    ('4006261d-a9b1-4ac4-b7bd-221c1f5c2608', '1ba8131d-6277-437c-8ebe-184035231a13', 'Un pare-feu réseau virtuel', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6aa4d017-f544-49b9-b86e-1d495fc0d79d', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Contrairement à Windows Server Active Directory Domain Services (AD DS), Microsoft Entra ID...',
        'AD DS s''organise en domaines, arborescences et forêts avec des UO et des stratégies de groupe. Microsoft Entra ID, à l''inverse, utilise une structure plate d''annuaire optimisée pour l''authentification cloud et SaaS.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b562ed7b-a3b8-4caf-935e-5365d38ca27e', '6aa4d017-f544-49b9-b86e-1d495fc0d79d', 'Ne prend en charge que les applications locales', FALSE, 1),
    ('f076542d-3115-40d4-813c-2a800b4178bf', '6aa4d017-f544-49b9-b86e-1d495fc0d79d', 'Nécessite un contrôleur de domaine physique', FALSE, 2),
    ('9b737ac1-6354-457d-8b9d-dc3efbd9b46d', '6aa4d017-f544-49b9-b86e-1d495fc0d79d', 'Utilise uniquement le protocole Kerberos pour l''authentification', FALSE, 3),
    ('7f3ab68f-22fa-42d8-b0ce-4f7f90f2766a', '6aa4d017-f544-49b9-b86e-1d495fc0d79d', 'Utilise une structure plate sans unités d''organisation (UO) ni objets de stratégie de groupe', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('afa8a3bf-d17a-48a1-8f81-b047a6934b87', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quels protocoles Microsoft Entra ID utilise-t-il principalement pour authentifier les utilisateurs auprès des applications cloud et SaaS ?',
        'Contrairement à AD DS qui repose sur Kerberos/NTLM pour les ressources locales, Microsoft Entra ID s''appuie sur des protocoles web ouverts standard (SAML, OAuth, OpenID Connect) adaptés à l''authentification cloud et SaaS.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7513e4a6-a7de-45d0-a8eb-54c1a7327d7b', 'afa8a3bf-d17a-48a1-8f81-b047a6934b87', 'NTLM et Kerberos uniquement', FALSE, 1),
    ('80d220e0-96e2-4550-bf5b-b450ebf160a6', 'afa8a3bf-d17a-48a1-8f81-b047a6934b87', 'IPsec', FALSE, 2),
    ('e1f99aa9-4ec6-4da8-ba46-a5871def6764', 'afa8a3bf-d17a-48a1-8f81-b047a6934b87', 'Des protocoles ouverts comme SAML, OAuth et OpenID Connect', TRUE, 3),
    ('bd34b20a-3abc-4a88-90c0-10a7acc43840', 'afa8a3bf-d17a-48a1-8f81-b047a6934b87', 'SNMP', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1a7d32f9-e9fd-4565-b57b-3c6025df3208', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle licence Microsoft Entra ID est nécessaire pour utiliser les groupes dynamiques ?',
        'L''appartenance dynamique à un groupe, qui ajoute ou retire automatiquement des membres selon des règles, nécessite une licence Microsoft Entra ID P1 (ou Intune pour l''éducation pour les règles basées sur les appareils).', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2c0bbd7f-80d8-4438-99f5-f8ffcd9ec1fd', '1a7d32f9-e9fd-4565-b57b-3c6025df3208', 'Windows Server uniquement', FALSE, 1),
    ('e48948c7-63cd-401a-bfdd-01b1996a9683', '1a7d32f9-e9fd-4565-b57b-3c6025df3208', 'Microsoft Entra ID Free', FALSE, 2),
    ('becbaae0-63a1-42a0-b27d-2899960c2e37', '1a7d32f9-e9fd-4565-b57b-3c6025df3208', 'Aucune licence n''est requise', FALSE, 3),
    ('7bb4bfcc-dc93-4afb-b306-351756ecf6c3', '1a7d32f9-e9fd-4565-b57b-3c6025df3208', 'Microsoft Entra ID P1 ou supérieure', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('daf54af6-5a2f-4b37-98e1-c4dcade5b830', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle fonctionnalité est disponible uniquement avec Microsoft Entra ID P2 (et non P1) ?',
        'Identity Protection (détection des risques de connexion) et Privileged Identity Management (accès juste-à-temps aux rôles privilégiés) sont exclusifs à l''édition Microsoft Entra ID P2, contrairement à SSPR et l''accès conditionnel disponibles dès P1.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a47294d8-4f50-4530-acfa-d736431add4f', 'daf54af6-5a2f-4b37-98e1-c4dcade5b830', 'La réinitialisation de mot de passe en libre-service', FALSE, 1),
    ('32a08983-7c74-44fc-8fcd-c034bd5692fe', 'daf54af6-5a2f-4b37-98e1-c4dcade5b830', 'La synchronisation avec Active Directory local', FALSE, 2),
    ('705a1674-190d-43fa-b406-6cd8b7f22a3a', 'daf54af6-5a2f-4b37-98e1-c4dcade5b830', 'Microsoft Entra Identity Protection et Privileged Identity Management (PIM)', TRUE, 3),
    ('4504071d-393b-4072-bdad-8815d311230d', 'daf54af6-5a2f-4b37-98e1-c4dcade5b830', 'L''accès conditionnel basique', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d220ae59-4c0a-4659-b1d3-69102b91609c', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que permet Microsoft Entra Domain Services ?',
        'Microsoft Entra Domain Services fournit des services de domaine managés (jointure de domaine, LDAP, Kerberos/NTLM, stratégie de groupe) compatibles Windows Server AD, sans que l''administrateur ait à déployer ou gérer de contrôleurs de domaine.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e77ebb9f-8a89-4f86-8bf2-26b1ee4ce4db', 'd220ae59-4c0a-4659-b1d3-69102b91609c', 'De fournir des services de domaine compatibles Windows Server AD (jointure de domaine, LDAP, Kerberos/NTLM) sans gérer de contrôleurs de domaine', TRUE, 1),
    ('2658e843-af1d-407b-94d6-ba9246d7be07', 'd220ae59-4c0a-4659-b1d3-69102b91609c', 'De remplacer complètement Microsoft Entra ID', FALSE, 2),
    ('092a8c4f-762a-4785-83ad-e2f4380010f5', 'd220ae59-4c0a-4659-b1d3-69102b91609c', 'De stocker des sauvegardes de bases de données', FALSE, 3),
    ('7bec4b36-20a3-4378-a75c-8b68735658da', 'd220ae59-4c0a-4659-b1d3-69102b91609c', 'De créer des machines virtuelles Linux uniquement', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4aed362d-5bba-4e97-9371-c609229116e1', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Une organisation qui migre des applications héritées nécessitant une authentification LDAP vers Azure devrait utiliser :',
        'Microsoft Entra ID ne prend pas en charge nativement LDAP ou Kerberos/NTLM. Microsoft Entra Domain Services comble cet écart en fournissant ces protocoles hérités pour les applications qui en dépendent encore.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e65b2b28-e4c0-456d-be73-2a8dfb0db2bf', '4aed362d-5bba-4e97-9371-c609229116e1', 'Microsoft Entra ID seul', FALSE, 1),
    ('527a8cee-5947-4ef7-8973-96818f6e734c', '4aed362d-5bba-4e97-9371-c609229116e1', 'Azure Key Vault', FALSE, 2),
    ('94248b1e-8851-4646-b764-b8765d442bb2', '4aed362d-5bba-4e97-9371-c609229116e1', 'Azure Policy', FALSE, 3),
    ('1db84e45-0418-41ad-8dd7-a68fa3e9f8da', '4aed362d-5bba-4e97-9371-c609229116e1', 'Microsoft Entra Domain Services', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c8cf5810-9555-4bc9-9b64-43932d2f6b94', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel est l''un des principaux cas d''usage de Microsoft Entra ID pour les organisations ?',
        'Microsoft Entra ID est conçu pour permettre aux utilisateurs de s''authentifier une seule fois (SSO) puis d''accéder à de nombreuses applications cloud et SaaS sans se reconnecter à chaque fois.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6833dbae-83f4-4fd7-a5f5-0feba9f63936', 'c8cf5810-9555-4bc9-9b64-43932d2f6b94', 'Gérer le stockage Blob', FALSE, 1),
    ('01d5804d-e909-40f2-98b8-26c56f7c9c83', 'c8cf5810-9555-4bc9-9b64-43932d2f6b94', 'Fournir un accès unique (SSO) aux applications SaaS et cloud', TRUE, 2),
    ('764904a3-1dc4-4a0e-8b9c-b2f48232047a', 'c8cf5810-9555-4bc9-9b64-43932d2f6b94', 'Configurer des réseaux virtuels', FALSE, 3),
    ('14c0473c-81b2-428c-b83b-789a1b734c09', 'c8cf5810-9555-4bc9-9b64-43932d2f6b94', 'Déployer des machines virtuelles automatiquement', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ac0e810c-53b3-4b02-be46-bf4d22ee530a', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Qu''est-ce qu''un « tenant » (locataire) Microsoft Entra ID ?',
        'Un tenant Microsoft Entra ID est une instance dédiée du service, propre à une organisation, qui contient ses utilisateurs, groupes et applications de manière isolée des autres organisations.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dd532d72-3f67-4d1b-b60a-28191560e2d4', 'ac0e810c-53b3-4b02-be46-bf4d22ee530a', 'Un type de licence', FALSE, 1),
    ('6de590a6-9a1f-446f-b752-faca652fd43e', 'ac0e810c-53b3-4b02-be46-bf4d22ee530a', 'Un groupe de ressources', FALSE, 2),
    ('caf3e227-efea-4918-a8eb-3caca9f55b0c', 'ac0e810c-53b3-4b02-be46-bf4d22ee530a', 'Une instance dédiée et isolée de Microsoft Entra ID représentant une organisation', TRUE, 3),
    ('d3a1d284-8e3c-4e69-9475-de247a6b0789', 'ac0e810c-53b3-4b02-be46-bf4d22ee530a', 'Une machine virtuelle Azure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fbe8e7cc-4c44-4dd9-bacc-0cea2c31d652', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que génère Microsoft Entra ID après l''authentification réussie d''un utilisateur, afin de déterminer les ressources auxquelles il peut accéder ?',
        'Une fois l''utilisateur authentifié, Microsoft Entra ID génère un jeton d''accès qui sert à l''autoriser et à déterminer les ressources auxquelles il peut accéder ainsi que les actions qu''il peut y effectuer.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5e1da5e8-e245-4922-8072-8bff2ae70c70', 'fbe8e7cc-4c44-4dd9-bacc-0cea2c31d652', 'Une adresse IP statique', FALSE, 1),
    ('d222f049-86be-4cdd-81ea-df747296890d', 'fbe8e7cc-4c44-4dd9-bacc-0cea2c31d652', 'Un jeton d''accès', TRUE, 2),
    ('eb746c58-5bc8-4b2f-917f-0826d7842b1b', 'fbe8e7cc-4c44-4dd9-bacc-0cea2c31d652', 'Une clé de chiffrement de disque', FALSE, 3),
    ('3d42f8c6-b530-48ea-8bdc-63e4c952ba29', 'fbe8e7cc-4c44-4dd9-bacc-0cea2c31d652', 'Un certificat SSL', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ea4a8f17-7948-413e-a533-f03b00993ae4', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle fonctionnalité de Microsoft Entra ID P1 permet de restreindre l''accès aux ressources selon des conditions comme la conformité de l''appareil ou l''emplacement ?',
        'L''accès conditionnel, inclus dans Microsoft Entra ID P1, permet d''appliquer des règles d''accès basées sur des signaux comme la conformité de l''appareil, la localisation ou le niveau de risque de connexion.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('34e655ae-7eb9-4b71-8bd8-106184f843e7', 'ea4a8f17-7948-413e-a533-f03b00993ae4', 'Les groupes Microsoft 365', FALSE, 1),
    ('3e3239c6-c893-4182-91de-f927ca326b68', 'ea4a8f17-7948-413e-a533-f03b00993ae4', 'L''accès conditionnel', TRUE, 2),
    ('2e483e7b-03dc-4aa7-a74b-0cfedd492106', 'ea4a8f17-7948-413e-a533-f03b00993ae4', 'Le SSPR', FALSE, 3),
    ('648feb7d-d989-4250-a973-30d12d849c45', 'ea4a8f17-7948-413e-a533-f03b00993ae4', 'Les attributs de sécurité personnalisés', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f6c77418-ca26-4414-a22e-0d12af42a2fd', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Dans un environnement Active Directory Domain Services (AD DS) local, quel protocole est principalement utilisé pour l''authentification ?',
        'AD DS repose historiquement sur les protocoles Kerberos et NTLM pour authentifier les utilisateurs au sein d''un réseau d''entreprise local, contrairement à Microsoft Entra ID qui privilégie les protocoles web ouverts pour le cloud.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8fd345f9-3a3f-4e1a-a349-73285b7965f8', 'f6c77418-ca26-4414-a22e-0d12af42a2fd', 'Kerberos/NTLM', TRUE, 1),
    ('a822dab0-2066-471f-b29d-ccba3a0ea010', 'f6c77418-ca26-4414-a22e-0d12af42a2fd', 'OAuth', FALSE, 2),
    ('0b357d29-b5c1-425c-9103-5febc99e5ad8', 'f6c77418-ca26-4414-a22e-0d12af42a2fd', 'OpenID Connect', FALSE, 3),
    ('4d12265f-1df6-4b44-9042-1630e4fededd', 'f6c77418-ca26-4414-a22e-0d12af42a2fd', 'SAML', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('02513580-affb-4e92-8637-c10288beca3e', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quels deux protocoles hérités Microsoft Entra Domain Services prend-il en charge pour assurer la compatibilité avec des applications anciennes ?',
        'Microsoft Entra Domain Services expose les protocoles LDAP et Kerberos/NTLM, permettant aux applications héritées qui en dépendent de continuer à fonctionner tout en s''appuyant sur l''identité Microsoft Entra ID.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a1b37f5-dca6-4d0d-bd7a-886136e2ea29', '02513580-affb-4e92-8637-c10288beca3e', 'HTTP et HTTPS', FALSE, 1),
    ('48f65264-af8f-49dc-b13c-51fd6586dd89', '02513580-affb-4e92-8637-c10288beca3e', 'LDAP et Kerberos/NTLM', TRUE, 2),
    ('bd5ab3fe-ab57-41ab-9b71-809389d16783', '02513580-affb-4e92-8637-c10288beca3e', 'SNMP et FTP', FALSE, 3),
    ('325b7c31-5ebf-4f3d-bac6-29b2f30eadc0', '02513580-affb-4e92-8637-c10288beca3e', 'SAML et OAuth', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2c3fb761-33ac-4e28-9115-1423cd820574', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Laquelle de ces affirmations décrit le mieux Microsoft Entra ID ?',
        'Microsoft Entra ID n''est pas limité à l''écosystème Windows : c''est un service cloud multi-tenant conçu pour gérer les identités et l''accès à travers une grande variété d''applications et de plateformes, y compris SaaS.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ca74c33f-b69e-4d3a-8560-ce0fc08bc703', '2c3fb761-33ac-4e28-9115-1423cd820574', 'Un outil de virtualisation de serveurs', FALSE, 1),
    ('514f2da2-5aca-4ebb-8921-81ec8df826ca', '2c3fb761-33ac-4e28-9115-1423cd820574', 'Un composant qui remplace uniquement les pare-feu réseau', FALSE, 2),
    ('13fc6448-e228-488c-8924-7c6f9acdacca', '2c3fb761-33ac-4e28-9115-1423cd820574', 'Un service cloud multi-tenant de gestion des identités, utilisable avec des applications Windows, Linux, mobiles et SaaS', TRUE, 3),
    ('327db88d-ac26-40c9-8965-21aec47befd2', '2c3fb761-33ac-4e28-9115-1423cd820574', 'Un service réservé uniquement aux environnements Windows Server', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0fa263c9-c50d-4654-9323-2daaa21b8ffd', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel est l''avantage principal d''utiliser Microsoft Entra Domain Services plutôt que de déployer et gérer ses propres contrôleurs de domaine dans des machines virtuelles Azure ?',
        'Avec Microsoft Entra Domain Services, Microsoft gère l''infrastructure sous-jacente des contrôleurs de domaine (patchs, disponibilité, sauvegarde), ce qui allège la charge opérationnelle par rapport à l''hébergement de contrôleurs de domaine sur des VM gérées par le client.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fcd3b7eb-63ff-40f9-b002-bb6305b5b03f', '0fa263c9-c50d-4654-9323-2daaa21b8ffd', 'Cela supprime le besoin d''authentification', FALSE, 1),
    ('7538ba09-d9e8-4225-8880-0b2813ea8b28', '0fa263c9-c50d-4654-9323-2daaa21b8ffd', 'L''administrateur n''a pas à gérer le déploiement, le correctif ni la haute disponibilité des contrôleurs de domaine', TRUE, 2),
    ('a2268f09-a861-4533-b762-4aef8a76afa0', '0fa263c9-c50d-4654-9323-2daaa21b8ffd', 'Cela permet d''éviter d''utiliser Microsoft Entra ID', FALSE, 3),
    ('64437059-e674-4fd2-a203-6643c8030a8d', '0fa263c9-c50d-4654-9323-2daaa21b8ffd', 'Cela coûte toujours moins cher', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6d2c04e4-90a1-4817-a46b-43c441dbc509', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Combien de catégories d''utilisateurs Microsoft Entra ID définit-il généralement ?',
        'Microsoft Entra ID distingue généralement les identités cloud (créées et gérées directement dans Entra ID), les identités synchronisées depuis un Active Directory local, et les utilisateurs invités provenant de l''extérieur de l''organisation.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5acdcb28-60ce-438b-bfad-d44ddd7b6957', '6d2c04e4-90a1-4817-a46b-43c441dbc509', 'Trois : identités cloud, identités synchronisées et utilisateurs invités', TRUE, 1),
    ('2d990608-dee4-434f-97f1-aa244642af6e', '6d2c04e4-90a1-4817-a46b-43c441dbc509', 'Quatre', FALSE, 2),
    ('8745d797-0e91-4a11-9142-b9dd1d935875', '6d2c04e4-90a1-4817-a46b-43c441dbc509', 'Deux', FALSE, 3),
    ('8e750ef3-a1d9-45e2-bc58-9d60ab840fae', '6d2c04e4-90a1-4817-a46b-43c441dbc509', 'Cinq', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('48830704-77a0-4043-a59b-d45c8076dbfd', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel outil de synchronisation est recommandé par Microsoft pour la plupart des organisations synchronisant leur Active Directory local vers Microsoft Entra ID ?',
        'Microsoft Entra Cloud Sync est l''outil recommandé pour la plupart des organisations car il utilise un agent léger géré par le cloud et prend en charge plusieurs forêts déconnectées, tandis que Microsoft Entra Connect Sync reste réservé aux scénarios complexes.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ada19b83-8e2f-4eb1-8a0a-3eaf12eb5982', '48830704-77a0-4043-a59b-d45c8076dbfd', 'Azure Migrate', FALSE, 1),
    ('396c875e-eb68-4ae0-9f08-df6a0c2bea1f', '48830704-77a0-4043-a59b-d45c8076dbfd', 'Microsoft Entra Cloud Sync', TRUE, 2),
    ('1711432d-f937-44f4-8333-f0c3fd565e61', '48830704-77a0-4043-a59b-d45c8076dbfd', 'Azure Site Recovery', FALSE, 3),
    ('c8971806-7cfa-45f2-9ad4-cfae3b14b0f9', '48830704-77a0-4043-a59b-d45c8076dbfd', 'Microsoft Entra Connect Sync', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('00fe7012-1c40-4982-a7f0-7829ceac58ad', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel type de groupe Microsoft Entra ID donne accès à une boîte aux lettres partagée, un calendrier et un site SharePoint ?',
        'Les groupes Microsoft 365 offrent des fonctionnalités de collaboration incluant une boîte aux lettres partagée, un calendrier, des fichiers et un site SharePoint, contrairement aux groupes de sécurité destinés avant tout à gérer l''accès aux ressources.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1eb836f-e293-4a9a-975b-4ba79ab05d41', '00fe7012-1c40-4982-a7f0-7829ceac58ad', 'Groupe Microsoft 365', TRUE, 1),
    ('52b8d1c5-ca17-479d-adc6-730d52a07633', '00fe7012-1c40-4982-a7f0-7829ceac58ad', 'Groupe dynamique d''appareils', FALSE, 2),
    ('0db0e9e5-e78a-4dee-a0a4-c5f833444975', '00fe7012-1c40-4982-a7f0-7829ceac58ad', 'Groupe de sécurité', FALSE, 3),
    ('9930dadd-2751-4917-9607-fc29b53b8ffc', '00fe7012-1c40-4982-a7f0-7829ceac58ad', 'Groupe d''administration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d93653cf-af11-47ea-a10e-227d70ac140b', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel type d''appartenance à un groupe ajoute ou supprime automatiquement des membres selon des règles basées sur des attributs comme le service ?',
        'L''appartenance dynamique évalue en continu les attributs des utilisateurs ou des appareils (comme le département) selon des règles définies, et ajoute ou retire automatiquement les membres en conséquence, sans intervention manuelle.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7bbae009-8749-40ff-a11b-037db0bbfa15', 'd93653cf-af11-47ea-a10e-227d70ac140b', 'Appartenance affectée', FALSE, 1),
    ('9250e49f-044e-4577-879a-6db009a54a93', 'd93653cf-af11-47ea-a10e-227d70ac140b', 'Appartenance invitée', FALSE, 2),
    ('5b08e9b8-9f14-41b9-b52e-7e0093cf92b9', 'd93653cf-af11-47ea-a10e-227d70ac140b', 'Appartenance hybride', FALSE, 3),
    ('b13f1353-82a0-4c52-9bbf-3a3b8694cdb4', 'd93653cf-af11-47ea-a10e-227d70ac140b', 'Appartenance dynamique', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('392b7b6a-dc51-491c-845f-632219aa2c61', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle licence est requise pour utiliser l''appartenance dynamique à un groupe ?',
        'L''appartenance dynamique aux groupes nécessite une licence Microsoft Entra ID P1 (ou Intune pour l''éducation dans le cas de règles basées sur les appareils).', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0b65239b-a811-43e2-a2df-03750aaf4524', '392b7b6a-dc51-491c-845f-632219aa2c61', 'Microsoft Entra ID Free', FALSE, 1),
    ('d269f364-cc23-45ba-a14d-09e5e64c8c22', '392b7b6a-dc51-491c-845f-632219aa2c61', 'Windows Server uniquement', FALSE, 2),
    ('a54a36bc-6379-45f1-966a-6565d2c59bfc', '392b7b6a-dc51-491c-845f-632219aa2c61', 'Microsoft Entra ID P1', TRUE, 3),
    ('21fff33c-25bb-4d94-9038-a56f1bc30742', '392b7b6a-dc51-491c-845f-632219aa2c61', 'Aucune licence spécifique', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c618582b-23cc-4bae-9e0a-12e1ebefd0cd', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Un appareil personnel utilisé en mode BYOD qui accède aux ressources de l''entreprise avec un compte professionnel ajouté est un exemple de :',
        'Les appareils inscrits auprès de Microsoft Entra sont typiquement des appareils personnels (BYOD) où un compte Microsoft Entra est simplement ajouté en plus du compte local, permettant un accès limité et contrôlé aux ressources professionnelles.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('08adc86f-9f19-4a32-bbc4-97d0b45cedf1', 'c618582b-23cc-4bae-9e0a-12e1ebefd0cd', 'Appareil non géré', FALSE, 1),
    ('661d59de-7789-4a32-b0a4-35dfbf9722b1', 'c618582b-23cc-4bae-9e0a-12e1ebefd0cd', 'Appareil inscrit auprès de Microsoft Entra', TRUE, 2),
    ('8a2ab839-5293-4b43-ba23-66df100c6e9c', 'c618582b-23cc-4bae-9e0a-12e1ebefd0cd', 'Appareil joint à Microsoft Entra', FALSE, 3),
    ('c247fbf1-05a8-4986-acfb-7d7c1ccc0e3c', 'c618582b-23cc-4bae-9e0a-12e1ebefd0cd', 'Appareil hybride joint à Microsoft Entra', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aefc023c-3fda-48be-91fa-ac7c5bda7ed8', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel type de jointure d''appareil convient le mieux à une organisation disposant déjà d''une infrastructure Active Directory locale et qui souhaite continuer à utiliser la Stratégie de groupe ?',
        'Les appareils hybrides joints à Microsoft Entra sont à la fois joints à l''Active Directory local et inscrits dans Microsoft Entra ID, ce qui permet de continuer à utiliser la Stratégie de groupe et Configuration Manager tout en bénéficiant des fonctionnalités cloud.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('23e83b57-40a5-4150-87e5-5b9096fdc28c', 'aefc023c-3fda-48be-91fa-ac7c5bda7ed8', 'Appareil joint à Microsoft Entra uniquement', FALSE, 1),
    ('fe411842-ce9c-4ab9-96c5-d45b556f4219', 'aefc023c-3fda-48be-91fa-ac7c5bda7ed8', 'Appareil hybride joint à Microsoft Entra', TRUE, 2),
    ('e0696a5d-038d-4256-a098-45a52cf1fd26', 'aefc023c-3fda-48be-91fa-ac7c5bda7ed8', 'Appareil inscrit à Microsoft Entra', FALSE, 3),
    ('9e56b3bc-323c-46f6-8e2c-e184c004b857', 'aefc023c-3fda-48be-91fa-ac7c5bda7ed8', 'Appareil non inscrit', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a8caf09e-fa82-43c8-95f9-77fca43a8c1c', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel est l''avantage principal de la licence basée sur des groupes dans Microsoft Entra ID ?',
        'La licence basée sur des groupes attribue automatiquement les licences produit à tous les membres d''un groupe, et les retire lorsqu''ils le quittent, éliminant le besoin de scripts PowerShell pour gérer les licences individuellement.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('da515a7b-d25d-4162-8bdf-ae355ebd2e0e', 'a8caf09e-fa82-43c8-95f9-77fca43a8c1c', 'Elle est disponible sans abonnement Premium', FALSE, 1),
    ('bf493dbd-d160-4d94-99ac-57e7b8572879', 'a8caf09e-fa82-43c8-95f9-77fca43a8c1c', 'Elle remplace le besoin d''acheter des licences', FALSE, 2),
    ('6dccccd9-ee62-48d3-9abe-bdbb2b10c033', 'a8caf09e-fa82-43c8-95f9-77fca43a8c1c', 'Elle attribue et retire automatiquement les licences en fonction de l''appartenance au groupe', TRUE, 3),
    ('cdf134a6-9023-46b8-8094-17de33d28130', 'a8caf09e-fa82-43c8-95f9-77fca43a8c1c', 'Elle réduit le coût des licences', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9d7d2ce7-2d9e-4cf9-858f-25ac701ca080', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que permettent les attributs de sécurité personnalisés dans Microsoft Entra ID ?',
        'Les attributs de sécurité personnalisés sont des paires clé-valeur propres à l''organisation, attribuables aux utilisateurs et applications d''entreprise, utilisées pour classer les objets, créer un inventaire filtrable ou affiner le contrôle d''accès.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1ff4f8f2-3367-4e66-9899-81c989003eb1', '9d7d2ce7-2d9e-4cf9-858f-25ac701ca080', 'De chiffrer les mots de passe utilisateur', FALSE, 1),
    ('ab553cd7-f1cf-47f5-8aeb-d8625a8b0a12', '9d7d2ce7-2d9e-4cf9-858f-25ac701ca080', 'De définir des paires clé-valeur spécifiques à l''entreprise pour classer les objets et affiner le contrôle d''accès', TRUE, 2),
    ('cc489db0-b51c-4832-a01f-5d212f9aec9c', '9d7d2ce7-2d9e-4cf9-858f-25ac701ca080', 'De configurer des zones de disponibilité', FALSE, 3),
    ('f42d7599-aadb-4543-9f3e-700d4a9c9d4e', '9d7d2ce7-2d9e-4cf9-858f-25ac701ca080', 'De remplacer les rôles Azure RBAC', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1752be72-07e3-4dea-9c94-7c0780772b54', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel protocole standard le Service de provisionnement Microsoft Entra utilise-t-il pour automatiser la création et la suppression de comptes utilisateur avec des applications tierces ?',
        'Le service de provisionnement Microsoft Entra s''appuie sur le protocole SCIM 2.0 pour se connecter au point de terminaison des applications cibles et automatiser la création, la mise à jour et la suppression des comptes utilisateur et des groupes.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fa3aba81-7d6d-4f7e-b9da-84eb9bc259d8', '1752be72-07e3-4dea-9c94-7c0780772b54', 'RADIUS', FALSE, 1),
    ('fd43eb14-2804-4b3d-8e92-88d47fdc420d', '1752be72-07e3-4dea-9c94-7c0780772b54', 'SNMP', FALSE, 2),
    ('3272c1d0-bb3e-4aa3-85ff-3184c97db1f2', '1752be72-07e3-4dea-9c94-7c0780772b54', 'SCIM 2.0', TRUE, 3),
    ('c87dd7bd-b472-4dbb-81ec-23754708dd53', '1752be72-07e3-4dea-9c94-7c0780772b54', 'LDAP', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dbc994eb-70e3-44df-af2e-443a908116a5', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle est la source des comptes « utilisateurs invités » dans Microsoft Entra ID ?',
        'Les utilisateurs invités sont des comptes externes à l''organisation (autres fournisseurs cloud, comptes Microsoft personnels, etc.), utiles pour donner un accès temporaire à des partenaires ou sous-traitants, avec possibilité de retirer facilement leur accès une fois le travail terminé.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b6f0a605-0712-4bb4-9903-2b8cebf2c7ee', 'dbc994eb-70e3-44df-af2e-443a908116a5', 'Ils sont générés automatiquement par SCIM', FALSE, 1),
    ('cba8df9b-3e1c-43e7-be94-1845b9ef601a', 'dbc994eb-70e3-44df-af2e-443a908116a5', 'Ils sont créés directement par un administrateur dans l''annuaire', FALSE, 2),
    ('a88b48f7-1112-4e2d-9984-a3029c304f34', 'dbc994eb-70e3-44df-af2e-443a908116a5', 'Ils existent en dehors de l''organisation, par exemple d''autres fournisseurs cloud ou comptes Microsoft', TRUE, 3),
    ('b3141c9f-ebf6-4c82-bb04-39dc407a9964', 'dbc994eb-70e3-44df-af2e-443a908116a5', 'Ils proviennent uniquement d''un Active Directory local synchronisé', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5a89fcae-6d15-4053-ba78-3beddbb0e2bf', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel outil permet d''appliquer des stratégies de conformité et de configuration aux appareils inscrits en BYOD ?',
        'Microsoft Intune, un outil de gestion des périphériques mobiles (GPM), permet d''appliquer des configurations requises comme le chiffrement du stockage ou la complexité des mots de passe sur les appareils inscrits, y compris en BYOD.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7ca43b4a-0ceb-47b5-9451-9d555f8f0197', '5a89fcae-6d15-4053-ba78-3beddbb0e2bf', 'Azure Key Vault', FALSE, 1),
    ('fe7e6f39-06b4-49ff-9483-3139f2919197', '5a89fcae-6d15-4053-ba78-3beddbb0e2bf', 'Azure RBAC', FALSE, 2),
    ('97db166b-c17c-4607-b3be-187002a56c37', '5a89fcae-6d15-4053-ba78-3beddbb0e2bf', 'Azure Policy', FALSE, 3),
    ('bd2a2222-ee08-4a2d-af15-ab1ba99ccdb2', '5a89fcae-6d15-4053-ba78-3beddbb0e2bf', 'Microsoft Intune', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d8db092e-418f-4a07-ab6f-232dcfcba414', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Pourquoi doit-on définir un « emplacement d''utilisation » dans le profil utilisateur avant d''attribuer une licence ?',
        'Certains services Microsoft ne sont pas disponibles dans tous les emplacements. Définir l''emplacement d''utilisation garantit que le résultat de l''attribution de licence est correct et que l''utilisateur ne reçoit pas de services non autorisés dans sa région.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aa0e461e-c89a-4e22-95ab-98563a28f2b1', 'd8db092e-418f-4a07-ab6f-232dcfcba414', 'Pour choisir la langue de l''interface', FALSE, 1),
    ('bb24ee03-31f5-497d-bd98-c9293c0e382e', 'd8db092e-418f-4a07-ab6f-232dcfcba414', 'Pour accélérer la connexion réseau', FALSE, 2),
    ('17ec30d9-c444-49b0-be42-8f3d59513aa4', 'd8db092e-418f-4a07-ab6f-232dcfcba414', 'Pour définir le fuseau horaire des notifications', FALSE, 3),
    ('57c8df7a-5fc9-4d90-b227-51e122293138', 'd8db092e-418f-4a07-ab6f-232dcfcba414', 'Pour s''assurer que l''utilisateur ne reçoit que des services autorisés dans son emplacement', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('45533283-dd30-4a00-856f-60dcb756b666', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Si une organisation a 1 000 membres uniques répartis dans des groupes sous licence, combien de licences doit-elle posséder au minimum ?',
        'Pour tout groupe auquel une licence est attribuée, chaque membre unique doit disposer d''une licence disponible ; l''organisation doit donc posséder au moins autant de licences que de membres uniques dans les groupes sous licence.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3ba95f0e-a2a3-4229-a614-f69a8d8bff6a', '45533283-dd30-4a00-856f-60dcb756b666', '100', FALSE, 1),
    ('964a8363-83a2-45e3-b5bf-07a803f4f392', '45533283-dd30-4a00-856f-60dcb756b666', '500', FALSE, 2),
    ('313e5a55-6ba2-48ba-8f1c-7bff35d75984', '45533283-dd30-4a00-856f-60dcb756b666', '1 000', TRUE, 3),
    ('33bec0bc-ec7b-4bfd-96b4-fdc2be4cc958', '45533283-dd30-4a00-856f-60dcb756b666', 'Aucune, les licences de groupe sont gratuites', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('500e1864-41a8-41e3-9058-bf361c946536', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle alternative existe pour le provisionnement automatique d''utilisateurs lorsque le système RH source n''expose pas de point de terminaison SCIM ?',
        'Pour les systèmes RH n''exposant pas de point de terminaison SCIM, Microsoft Entra ID prend en charge le provisionnement entrant piloté par l''API, qui permet à un outil d''automatisation de récupérer les données depuis n''importe quel système RH (comme Workday) et de les envoyer à l''API de provisionnement.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b1a4e920-4235-49cb-993d-c9a8130d2875', '500e1864-41a8-41e3-9058-bf361c946536', 'La jointure hybride Microsoft Entra', FALSE, 1),
    ('7255429a-c64d-415a-899d-1b32a53aa2b2', '500e1864-41a8-41e3-9058-bf361c946536', 'Les attributs de sécurité personnalisés', FALSE, 2),
    ('d138b59e-da5a-4911-9211-20f9ac8688e3', '500e1864-41a8-41e3-9058-bf361c946536', 'Azure RBAC', FALSE, 3),
    ('1ab0d348-1c75-4876-bce5-2a92196ef173', '500e1864-41a8-41e3-9058-bf361c946536', 'Le provisionnement entrant piloté par l''API', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cc1aed6c-ed8d-4ee9-a5b9-2e9380d81289', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Qu''est-ce qu''une région Azure ?',
        'Une région Azure est une zone géographique regroupant au moins un centre de données, parfois plusieurs, connectés entre eux par un réseau à faible latence pour équilibrer les charges de travail.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('35bc1dde-70bc-48ab-8f36-cd370254559d', 'cc1aed6c-ed8d-4ee9-a5b9-2e9380d81289', 'Une zone géographique comportant au moins un centre de données relié par un réseau à faible latence', TRUE, 1),
    ('39ba0da8-7f33-4231-ab4b-9be1ef2961db', 'cc1aed6c-ed8d-4ee9-a5b9-2e9380d81289', 'Un unique centre de données isolé', FALSE, 2),
    ('cdf3e9ce-c719-4117-86ca-d1c031cc338f', 'cc1aed6c-ed8d-4ee9-a5b9-2e9380d81289', 'Un groupe de ressources', FALSE, 3),
    ('508c6bbd-c2c6-4b93-85f5-f0c30eb5ca1a', 'cc1aed6c-ed8d-4ee9-a5b9-2e9380d81289', 'Un abonnement Azure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8f4c6ff8-2bd1-4558-82a5-12db82962062', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Combien de zones de disponibilité au minimum existe-t-il dans une région Azure qui prend en charge cette fonctionnalité ?',
        'Pour garantir la résilience, au moins trois zones de disponibilité distinctes, chacune avec une alimentation, un refroidissement et un réseau indépendants, sont présentes dans toutes les régions qui prennent en charge cette fonctionnalité.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d8d57fdb-3e64-4d03-b38f-5001de2a0d59', '8f4c6ff8-2bd1-4558-82a5-12db82962062', 'Deux', FALSE, 1),
    ('a52b687e-8561-4315-9250-a71bbb2f7252', '8f4c6ff8-2bd1-4558-82a5-12db82962062', 'Une', FALSE, 2),
    ('60311696-1220-4f80-bccd-46cfc89993cd', '8f4c6ff8-2bd1-4558-82a5-12db82962062', 'Trois', TRUE, 3),
    ('51e1a6ab-cfc9-42f2-83e8-1ddb71879d41', '8f4c6ff8-2bd1-4558-82a5-12db82962062', 'Cinq', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4708d165-fccf-49ef-a383-54be7a8437d8', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel est l''objectif principal d''une paire de régions Azure ?',
        'La plupart des régions Azure sont associées à une autre région de la même zone géographique, distante d''au moins 480 km, afin de réduire le risque qu''un même événement (catastrophe naturelle, panne) affecte les deux régions simultanément.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4742f664-0595-41d6-bbc4-4a1adcd362c1', '4708d165-fccf-49ef-a383-54be7a8437d8', 'Réduire les coûts de licence', FALSE, 1),
    ('b1aba96c-7e6d-4487-94df-7d7a20c79643', '4708d165-fccf-49ef-a383-54be7a8437d8', 'Assurer la résilience en répliquant les ressources entre deux régions distantes d''au moins 480 km au sein d''une même zone géographique', TRUE, 2),
    ('05f95cd9-5374-44f4-82c6-72ccc0baacc8', '4708d165-fccf-49ef-a383-54be7a8437d8', 'Fournir un support technique dédié', FALSE, 3),
    ('8e070748-9415-4418-a444-34ae5fe987f5', '4708d165-fccf-49ef-a383-54be7a8437d8', 'Augmenter la vitesse du réseau local', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('102f7af3-e57f-46ae-b167-0306061a2e94', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle région Azure fait exception à la règle habituelle de l''appairage bidirectionnel de régions ?',
        'La région Brésil Sud est appairée de façon unidirectionnelle avec USA Centre Sud (hors de sa propre zone géographique), et cette dernière n''assure pas de sauvegarde pour Brésil Sud, contrairement à la majorité des paires de régions qui sont réciproques.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('718279df-e221-4649-a105-0ff94bc4e74f', '102f7af3-e57f-46ae-b167-0306061a2e94', 'Europe Ouest', FALSE, 1),
    ('a5ca3c95-ea72-4b21-827a-3e82a57e7b04', '102f7af3-e57f-46ae-b167-0306061a2e94', 'Brésil Sud', TRUE, 2),
    ('f2d34f63-1a50-4f7a-9c1d-e5c2ce5c83fb', '102f7af3-e57f-46ae-b167-0306061a2e94', 'USA Est', FALSE, 3),
    ('5145275e-1b88-41c4-bbce-d150a37bd36d', '102f7af3-e57f-46ae-b167-0306061a2e94', 'Asie du Sud-Est', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fd84c5ec-03a7-4ac6-9123-9eaaa0aacf73', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Pourquoi une organisation soumise à des exigences légales spécifiques pourrait-elle utiliser une région souveraine Azure ?',
        'Les régions souveraines, comme celles destinées aux agences gouvernementales américaines ou la Chine (via 21Vianet), sont des instances isolées d''Azure répondant à des exigences légales ou de conformité spécifiques que les régions standard ne satisfont pas.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8bb14cb-e245-404c-899b-dae440c53689', 'fd84c5ec-03a7-4ac6-9123-9eaaa0aacf73', 'Pour accéder à plus de zones de disponibilité', FALSE, 1),
    ('6682c39e-882c-43d7-b76b-028ca685ac6c', 'fd84c5ec-03a7-4ac6-9123-9eaaa0aacf73', 'Pour bénéficier de prix réduits', FALSE, 2),
    ('dd3b80a4-8e84-402f-ab55-22f5c7edcbde', 'fd84c5ec-03a7-4ac6-9123-9eaaa0aacf73', 'Pour répondre à des exigences légales ou de conformité grâce à une instance Azure isolée', TRUE, 3),
    ('d72363b3-cbbc-4d74-a147-763db2e522ea', 'fd84c5ec-03a7-4ac6-9123-9eaaa0aacf73', 'Pour obtenir un support prioritaire gratuit', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6cfd7bae-e2db-405b-8f7b-6b5f0287c3e9', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle affirmation est correcte concernant les groupes de ressources Azure ?',
        'Chaque ressource Azure doit appartenir exactement à un groupe de ressources à la fois ; elle peut être déplacée vers un autre groupe, mais jamais rattachée à plusieurs groupes simultanément.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4aac6e10-a247-491c-9e26-baca41de9917', '6cfd7bae-e2db-405b-8f7b-6b5f0287c3e9', 'Une ressource appartient à un seul groupe de ressources à la fois', TRUE, 1),
    ('506ddad9-9f54-4fde-b17f-dd91a17b3dad', '6cfd7bae-e2db-405b-8f7b-6b5f0287c3e9', 'Les groupes de ressources peuvent être imbriqués', FALSE, 2),
    ('35b80a27-deac-4d98-bfa8-93722b34d6be', '6cfd7bae-e2db-405b-8f7b-6b5f0287c3e9', 'Une ressource peut appartenir à plusieurs groupes de ressources simultanément', FALSE, 3),
    ('7ea64df6-6967-4f22-a5e8-6d8fa048145f', '6cfd7bae-e2db-405b-8f7b-6b5f0287c3e9', 'Un groupe de ressources peut être renommé à tout moment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0f187e08-711c-4770-9dbc-36f8bfc47af3', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que se passe-t-il lorsqu''on supprime un groupe de ressources Azure ?',
        'Les actions appliquées à un groupe de ressources s''appliquent à toutes les ressources qu''il contient ; supprimer le groupe entraîne donc la suppression de l''ensemble des ressources qu''il héberge.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bdbd55cd-1ba1-4940-b583-e6f3b75743da', '0f187e08-711c-4770-9dbc-36f8bfc47af3', 'Les ressources sont automatiquement déplacées vers un autre groupe', FALSE, 1),
    ('a210d775-068a-45b1-9c82-4639384c15db', '0f187e08-711c-4770-9dbc-36f8bfc47af3', 'Toutes les ressources qu''il contient sont également supprimées', TRUE, 2),
    ('f51b3eda-bfd2-46fa-9c61-535b37a2f700', '0f187e08-711c-4770-9dbc-36f8bfc47af3', 'Seul le groupe est supprimé, les ressources restent', FALSE, 3),
    ('32597810-1d95-48d1-b654-b88bdc59c56c', '0f187e08-711c-4770-9dbc-36f8bfc47af3', 'Rien, une confirmation supplémentaire est toujours requise', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('08f0712d-a5c8-45b1-8b53-1f8bbb757743', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Un abonnement Azure sert principalement de limite pour :',
        'Un abonnement Azure constitue à la fois une limite de facturation (rapports et factures distincts) et une limite de contrôle d''accès (stratégies de gestion des accès appliquées au niveau de l''abonnement).', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3e2647ad-4616-4fc3-948d-2c8a8995a3b3', '08f0712d-a5c8-45b1-8b53-1f8bbb757743', 'Les zones de disponibilité uniquement', FALSE, 1),
    ('4e13599e-0364-4dfc-984f-68838ecbaf44', '08f0712d-a5c8-45b1-8b53-1f8bbb757743', 'La bande passante réseau', FALSE, 2),
    ('82abfdfe-7cfb-4b57-b7a3-73f940569448', '08f0712d-a5c8-45b1-8b53-1f8bbb757743', 'Le nombre de régions disponibles', FALSE, 3),
    ('af3c8fc0-df59-43b8-b012-38c14fd86c5e', '08f0712d-a5c8-45b1-8b53-1f8bbb757743', 'La facturation et le contrôle d''accès', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5c9c99ce-d0a8-431f-8ad8-b38858661d2f', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Sur combien de niveaux les groupes d''administration Azure peuvent-ils être imbriqués sous le groupe racine du locataire ?',
        'Les groupes d''administration Azure peuvent être imbriqués jusqu''à six niveaux (sans compter le niveau racine ni le niveau abonnement), permettant de créer une hiérarchie reflétant l''organisation de l''entreprise.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('325eabf4-7c08-4cd7-aec4-341885b0312e', '5c9c99ce-d0a8-431f-8ad8-b38858661d2f', 'Trois', FALSE, 1),
    ('5bffa086-80c3-4ab2-b19a-a0bf0556d325', '5c9c99ce-d0a8-431f-8ad8-b38858661d2f', 'Illimité', FALSE, 2),
    ('ef852936-5d57-431d-8fc2-a49ff18613e2', '5c9c99ce-d0a8-431f-8ad8-b38858661d2f', 'Six', TRUE, 3),
    ('ba4cb045-03e7-4e23-8ac0-1371f401c425', '5c9c99ce-d0a8-431f-8ad8-b38858661d2f', 'Dix', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bc1c168d-1db9-4cdd-9b89-b4eb896e90bc', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Parmi les catégories de services compatibles avec les zones de disponibilité, laquelle réplique automatiquement les données entre zones sans intervention manuelle ?',
        'Les services redondants interzone (comme le stockage redondant interzone ou SQL Database) effectuent automatiquement la réplication entre les zones de disponibilité par la plateforme, contrairement aux services zonaux qui nécessitent d''épingler manuellement la ressource à une zone.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bd7f24c6-8d27-4c07-91da-566f67fc1d34', 'bc1c168d-1db9-4cdd-9b89-b4eb896e90bc', 'Services redondants interzone', TRUE, 1),
    ('7a855a80-a8a3-4bc7-8bb6-6be08667f871', 'bc1c168d-1db9-4cdd-9b89-b4eb896e90bc', 'Services zonaux', FALSE, 2),
    ('f095df81-7552-4467-bfe8-7cdc26cd5470', 'bc1c168d-1db9-4cdd-9b89-b4eb896e90bc', 'Services non régionaux', FALSE, 3),
    ('2c54885b-35ce-4d2c-8b2a-ffa6d24009ec', 'bc1c168d-1db9-4cdd-9b89-b4eb896e90bc', 'Services locaux', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6b8e48e3-1640-4f71-b1ec-e6de52b3a4b2', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Lesquels de ces services Azure globaux ne nécessitent pas de sélectionner une région spécifique lors du déploiement ?',
        'Certains services Azure mondiaux, comme Microsoft Entra ID, Azure Traffic Manager et Azure DNS, ne vous obligent pas à sélectionner une région particulière, contrairement à la plupart des ressources comme les machines virtuelles.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4e010efe-2893-4915-aa5f-9c49d93c670a', '6b8e48e3-1640-4f71-b1ec-e6de52b3a4b2', 'Les machines virtuelles', FALSE, 1),
    ('98430863-aa67-4ea3-9cb3-f9eaece1b933', '6b8e48e3-1640-4f71-b1ec-e6de52b3a4b2', 'Les groupes de ressources', FALSE, 2),
    ('45681cb1-f866-4883-988c-72a9db8a28cb', '6b8e48e3-1640-4f71-b1ec-e6de52b3a4b2', 'Microsoft Entra ID, Azure Traffic Manager et Azure DNS', TRUE, 3),
    ('91828a97-9aeb-40d4-a172-6a906f427d11', '6b8e48e3-1640-4f71-b1ec-e6de52b3a4b2', 'Les zones de disponibilité', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('97c5589c-85f9-4ab6-8bd6-534e698e8e17', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Combien de groupes racine de locataire (tenant root group) existe-t-il par client Microsoft Entra ?',
        'Chaque client (tenant) Microsoft Entra dispose d''un seul groupe racine de locataire au niveau supérieur, auquel se rattachent tous les autres groupes d''administration et abonnements pour appliquer des stratégies de gouvernance globales.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('33540612-4ff6-4cf2-98e6-ae3e21e9e722', '97c5589c-85f9-4ab6-8bd6-534e698e8e17', 'Aucun par défaut', FALSE, 1),
    ('9765ce51-075f-48e0-856a-c169e2afb5ea', '97c5589c-85f9-4ab6-8bd6-534e698e8e17', 'Un seul', TRUE, 2),
    ('5162ec4f-7b48-4fc8-8116-3c6054bf9c98', '97c5589c-85f9-4ab6-8bd6-534e698e8e17', 'Deux', FALSE, 3),
    ('4e8e337a-a2bb-4149-8f8a-e21ebb742a75', '97c5589c-85f9-4ab6-8bd6-534e698e8e17', 'Autant que d''abonnements', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3d5bb4a2-7d72-48a1-a9a1-9e76e9110238', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Le compte Azure gratuit inclut un accès gratuit aux principaux produits Azure pendant combien de temps ?',
        'Le compte Azure gratuit comprend l''accès gratuit aux principaux produits Azure pendant 12 mois, un crédit à utiliser dans les 30 premiers jours, ainsi qu''un accès à plus de 65 services toujours gratuits.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9c1daad2-51cb-48e3-8b55-3fe385058383', '3d5bb4a2-7d72-48a1-a9a1-9e76e9110238', '6 mois', FALSE, 1),
    ('b89bf21b-43f7-4913-83ac-0f8e176a55e3', '3d5bb4a2-7d72-48a1-a9a1-9e76e9110238', '24 mois', FALSE, 2),
    ('353b6607-72cf-446f-9fcf-0e7b929e8aad', '3d5bb4a2-7d72-48a1-a9a1-9e76e9110238', '12 mois', TRUE, 3),
    ('d8d02b9d-cec1-4783-9fdc-2ef21e4a031e', '3d5bb4a2-7d72-48a1-a9a1-9e76e9110238', '3 mois', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2d8a9c5c-adf6-48f4-961f-eb0a0dab153e', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quels sont les deux types de limites qu''un abonnement Azure définit ?',
        'Un abonnement Azure définit une limite de facturation (qui détermine comment le compte est facturé) et une limite de contrôle d''accès (les stratégies de gestion des accès s''appliquant au niveau de l''abonnement).', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('14898a55-f101-4ee6-b55b-018779e9aacf', '2d8a9c5c-adf6-48f4-961f-eb0a0dab153e', 'Limite de stockage et limite réseau', FALSE, 1),
    ('4d1c8dce-7e04-443f-8a18-7387108fc523', '2d8a9c5c-adf6-48f4-961f-eb0a0dab153e', 'Limite de région et limite de zone', FALSE, 2),
    ('72e215dc-2ab0-4e60-a2bf-724c64399dba', '2d8a9c5c-adf6-48f4-961f-eb0a0dab153e', 'Limite d''utilisateurs et limite de groupes', FALSE, 3),
    ('beee3b01-11f9-423d-a878-23625521839f', '2d8a9c5c-adf6-48f4-961f-eb0a0dab153e', 'Limite de facturation et limite de contrôle d''accès', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('671d72cb-3cf1-4c50-bfc5-b96a2e347e8b', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Une fois un groupe de ressources créé, que ne peut-on PAS faire ?',
        'Les groupes de ressources Azure ne peuvent pas être renommés après leur création, il est donc recommandé de choisir une convention de nommage claire dès le départ.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5aa04900-e8ad-42ef-bb23-5c452b2252da', '671d72cb-3cf1-4c50-bfc5-b96a2e347e8b', 'Déplacer des ressources vers un autre groupe', FALSE, 1),
    ('f3f79d43-bf98-4339-a4cc-556577c81468', '671d72cb-3cf1-4c50-bfc5-b96a2e347e8b', 'Le supprimer', FALSE, 2),
    ('bf6fd36d-6449-449a-aad9-ad51f7274a69', '671d72cb-3cf1-4c50-bfc5-b96a2e347e8b', 'Le renommer', TRUE, 3),
    ('56924fbe-c3a4-4cc5-ae81-cf20d6b1b5f6', '671d72cb-3cf1-4c50-bfc5-b96a2e347e8b', 'Y ajouter des ressources', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d493f2fb-2742-41ce-8791-b252f05d95e1', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel est l''objectif principal d''Azure Policy ?',
        'Azure Policy est l''outil de gouvernance principal d''Azure : il aide à appliquer des standards organisationnels et à évaluer la conformité des ressources actuelles et futures à grande échelle.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1558b719-aef8-4138-bf58-3e2cd20b08b5', 'd493f2fb-2742-41ce-8791-b252f05d95e1', 'Gérer la facturation des abonnements', FALSE, 1),
    ('b9d00a2d-6643-4bdf-adec-3f48878f9806', 'd493f2fb-2742-41ce-8791-b252f05d95e1', 'Sauvegarder les bases de données', FALSE, 2),
    ('f1522a21-42b4-4aa9-932a-857e47a8e090', 'd493f2fb-2742-41ce-8791-b252f05d95e1', 'Déployer automatiquement des machines virtuelles', FALSE, 3),
    ('3dcfcc1d-917c-4d7c-a88a-92aa40bc9584', 'd493f2fb-2742-41ce-8791-b252f05d95e1', 'Appliquer des standards organisationnels et évaluer la conformité des ressources à grande échelle', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('703e6966-bc15-45b2-b6ae-cd9f8f2abb74', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Qu''est-ce qu''une initiative Azure Policy ?',
        'Une initiative (ou policy set) regroupe plusieurs définitions de stratégie afin de simplifier leur assignation et leur gestion, en les traitant comme un seul élément pour atteindre un objectif de conformité plus large.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fdabb8fd-6aeb-4d7f-8086-4904f473d3d0', '703e6966-bc15-45b2-b6ae-cd9f8f2abb74', 'Une ressource Azure individuelle', FALSE, 1),
    ('82491cbb-e6b6-45be-89cc-bfb4a3fd912e', '703e6966-bc15-45b2-b6ae-cd9f8f2abb74', 'Un rôle RBAC personnalisé', FALSE, 2),
    ('a03fae44-7ac1-4009-bf0f-0dc0f19ef728', '703e6966-bc15-45b2-b6ae-cd9f8f2abb74', 'Un regroupement de plusieurs définitions de stratégie gérées comme un seul élément', TRUE, 3),
    ('36c4ee8a-fa19-43c5-a1bf-0b6508c7ea27', '703e6966-bc15-45b2-b6ae-cd9f8f2abb74', 'Un type de groupe d''administration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff4e8774-97ca-4698-8610-53261917d8c5', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle est la différence entre une stratégie intégrée (built-in) et une stratégie personnalisée (custom) ?',
        'Une stratégie intégrée est générée par les fournisseurs de ressources Azure et disponible par défaut, tandis qu''une stratégie personnalisée est écrite par l''utilisateur lorsqu''aucune stratégie intégrée ne correspond à ses besoins spécifiques.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ef4283a-b8ac-48b0-b533-c8e35d5b1699', 'ff4e8774-97ca-4698-8610-53261917d8c5', 'Il n''existe aucune différence', FALSE, 1),
    ('b08bc095-6d44-45f0-adee-e9631da027a6', 'ff4e8774-97ca-4698-8610-53261917d8c5', 'Seules les stratégies personnalisées peuvent être assignées à un abonnement', FALSE, 2),
    ('0f84dc97-3236-4815-b4d7-7db08652b72e', 'ff4e8774-97ca-4698-8610-53261917d8c5', 'La stratégie intégrée est fournie par défaut par Microsoft, la personnalisée est écrite par l''utilisateur selon ses besoins', TRUE, 3),
    ('c80d9737-bec8-4c00-a312-9b07c7895654', 'ff4e8774-97ca-4698-8610-53261917d8c5', 'La stratégie intégrée est créée par l''utilisateur, la personnalisée par Microsoft', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6427dd06-9eae-434d-be9f-33582d9fc735', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À quels niveaux une stratégie Azure Policy peut-elle être assignée ?',
        'L''étendue (scope) d''une stratégie ou initiative correspond aux niveaux de hiérarchie de gouvernance Azure : groupe d''administration, abonnement, groupe de ressources ou ressource individuelle, les niveaux inférieurs héritant des paramètres des niveaux supérieurs.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7c397147-ed96-4c0a-9daa-f86cab49b6ac', '6427dd06-9eae-434d-be9f-33582d9fc735', 'Uniquement au niveau de la ressource individuelle', FALSE, 1),
    ('49b1396c-a566-47ed-9b2f-f636dac5fb02', '6427dd06-9eae-434d-be9f-33582d9fc735', 'Groupe d''administration, abonnement, groupe de ressources ou ressource', TRUE, 2),
    ('d2766063-9d35-4313-9146-04c25a981fae', '6427dd06-9eae-434d-be9f-33582d9fc735', 'Uniquement au niveau de l''abonnement', FALSE, 3),
    ('73a3d1c3-4e9a-4bb0-9b04-adf9283ffa65', '6427dd06-9eae-434d-be9f-33582d9fc735', 'Uniquement au niveau du groupe d''administration', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4c037b01-7509-4c24-b034-ad49cddd87ef', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel effet de stratégie empêche la création d''une ressource qui ne respecte pas les conditions définies ?',
        'L''effet « deny » empêche la création d''une requête de ressource qui ne correspond pas aux normes définies par la stratégie, en faisant échouer la requête.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ce90988d-0172-45fd-9014-54d682937d71', '4c037b01-7509-4c24-b034-ad49cddd87ef', 'Deny', TRUE, 1),
    ('eaee5866-7bf7-469b-89e9-e8ed8f4b926f', '4c037b01-7509-4c24-b034-ad49cddd87ef', 'Disabled', FALSE, 2),
    ('8f5ee164-22e2-4dd3-b941-06018e88c979', '4c037b01-7509-4c24-b034-ad49cddd87ef', 'Audit', FALSE, 3),
    ('785a8e25-a295-4014-871d-f8947135bf07', '4c037b01-7509-4c24-b034-ad49cddd87ef', 'Append', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a6929eb5-09b3-4307-99a1-38068ad7e867', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel effet de stratégie génère un avertissement dans le journal d''activité sans bloquer la création de la ressource non conforme ?',
        'L''effet « audit » crée un événement d''avertissement dans le journal d''activité lors de l''évaluation d''une ressource non conforme, mais n''empêche pas la requête d''aboutir, contrairement à « deny ».', 51, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4a371987-7642-47c8-8c85-7059bb793ff4', 'a6929eb5-09b3-4307-99a1-38068ad7e867', 'Audit', TRUE, 1),
    ('5282ad7e-a373-4c8d-b818-a03823811ae8', 'a6929eb5-09b3-4307-99a1-38068ad7e867', 'Deny', FALSE, 2),
    ('0c1cd2cc-4c4b-4b3d-b7dd-c210c0cefabf', 'a6929eb5-09b3-4307-99a1-38068ad7e867', 'DenyAction', FALSE, 3),
    ('5cef55c4-f6f2-4059-871c-2a5e11ddda76', 'a6929eb5-09b3-4307-99a1-38068ad7e867', 'Modify', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d0811580-5776-488c-88be-f05d3b06f298', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À quelle fréquence un cycle d''évaluation de conformité automatique s''exécute-t-il par défaut dans Azure Policy ?',
        'Un scan de conformité complet est automatiquement déclenché toutes les 24 heures, en plus d''autres déclencheurs comme l''assignation d''une nouvelle stratégie ou un scan à la demande.', 52, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e58b8583-ad25-480f-aabd-36f96e75a976', 'd0811580-5776-488c-88be-f05d3b06f298', 'Une fois par semaine', FALSE, 1),
    ('a8124c57-c3b9-4b51-9cd7-d75a06ba74d0', 'd0811580-5776-488c-88be-f05d3b06f298', 'Toutes les 24 heures', TRUE, 2),
    ('c5aef723-8c54-47bf-b985-d643676d5735', 'd0811580-5776-488c-88be-f05d3b06f298', 'Une fois par mois', FALSE, 3),
    ('66f29de8-65a3-4aaf-9acb-5c8f12e9df86', 'd0811580-5776-488c-88be-f05d3b06f298', 'Toutes les heures', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3ad9f974-c635-4b7d-99aa-1ef86881ece0', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À quoi sert le mode enforcementMode « Disabled » (DoNotEnforce) dans une attribution de stratégie ?',
        'Le mode « Disabled » (DoNotEnforce) permet d''observer le résultat de l''évaluation de conformité sans que l''effet (comme deny) ne soit réellement appliqué, ce qui correspond à un scénario de test « what-if » avant d''activer pleinement la stratégie.', 53, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dd6d0dfa-34fc-41f0-b6e8-11715f744f60', '3ad9f974-c635-4b7d-99aa-1ef86881ece0', 'À désactiver l''audit des ressources', FALSE, 1),
    ('c5dd02d0-fb7f-4b97-a8af-b95de81a796e', '3ad9f974-c635-4b7d-99aa-1ef86881ece0', 'À supprimer définitivement la stratégie', FALSE, 2),
    ('f36282ca-00b9-4951-bb9e-f7738b87a6a3', '3ad9f974-c635-4b7d-99aa-1ef86881ece0', 'À exempter une ressource de toute évaluation', FALSE, 3),
    ('4118fef4-57eb-4707-9d3d-16323ba5b0b2', '3ad9f974-c635-4b7d-99aa-1ef86881ece0', 'À évaluer la conformité sans appliquer l''effet de la stratégie, pour tester son impact avant activation complète', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a2c77b7f-8ff7-45cf-91be-57be5c62e8a6', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle est la première étape recommandée pour établir la gouvernance du cloud selon le Cloud Adoption Framework ?',
        'La méthodologie « Govern » du Cloud Adoption Framework divise la gouvernance cloud en cinq étapes, dont la première consiste à constituer une équipe de gouvernance dédiée, responsable de définir et de suivre les stratégies de gouvernance.', 54, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('32994f3c-1371-4072-a0e1-11a82fcc8ca7', 'a2c77b7f-8ff7-45cf-91be-57be5c62e8a6', 'Surveiller la gouvernance cloud', FALSE, 1),
    ('bd7a89d8-dc4a-414c-a66d-dea30996760d', 'a2c77b7f-8ff7-45cf-91be-57be5c62e8a6', 'Documenter les stratégies de gouvernance', FALSE, 2),
    ('52a8a651-a0a1-4f00-a15c-0e914bed9a79', 'a2c77b7f-8ff7-45cf-91be-57be5c62e8a6', 'Évaluer les risques cloud', FALSE, 3),
    ('ebdd738d-db41-4618-bc9b-e5e586fe0701', 'a2c77b7f-8ff7-45cf-91be-57be5c62e8a6', 'Constituer une équipe de gouvernance cloud dédiée', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cddcbb93-399d-4371-8189-b04e013a18c9', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Dans quel plan Azure Resource Manager Azure Policy opère-t-il principalement pour appliquer des règles avant la création des ressources ?',
        'Azure Policy opère dans le plan de contrôle, géré par Azure Resource Manager, qui traite les demandes de création, mise à jour ou suppression de ressources ; le plan de données concerne quant à lui les opérations directes sur les données d''une ressource déjà déployée.', 55, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5b6a4f56-9166-4b5b-8e74-a863d55f4bb9', 'cddcbb93-399d-4371-8189-b04e013a18c9', 'Le plan de contrôle (control plane)', TRUE, 1),
    ('abee1151-a6b4-4919-bcc4-5a4805676f89', 'cddcbb93-399d-4371-8189-b04e013a18c9', 'Le plan de données (data plane)', FALSE, 2),
    ('8f9c736f-1fa1-4e41-bb83-ab89d0902e0c', 'cddcbb93-399d-4371-8189-b04e013a18c9', 'Le plan de stockage', FALSE, 3),
    ('cc7449fd-fb66-43bf-abb7-28a1b352beb8', 'cddcbb93-399d-4371-8189-b04e013a18c9', 'Le plan réseau', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1f2019e7-9ac2-401e-8853-3bb081956890', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Un scénario où une stratégie Azure Policy existe déjà avant la création ou la mise à jour d''une ressource est appelé :',
        'Le scénario « Greenfield » (policy-first) désigne le cas où une stratégie existe déjà lorsqu''une nouvelle ressource est créée ou mise à jour ; la requête passe alors par le contrôle RBAC puis par Azure Policy avant d''être acceptée ou refusée.', 56, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c1677bdb-5b71-4116-88e7-c0a78deb08a9', '1f2019e7-9ac2-401e-8853-3bb081956890', 'Legacy', FALSE, 1),
    ('d0e0d5ea-d230-49e6-9dc0-fcde4762779d', '1f2019e7-9ac2-401e-8853-3bb081956890', 'Greenfield', TRUE, 2),
    ('ec3371bc-a3f7-4f11-95a7-5f6339ab0660', '1f2019e7-9ac2-401e-8853-3bb081956890', 'Brownfield', FALSE, 3),
    ('66af3f53-8a38-4304-b02b-a9d205ba1d1a', '1f2019e7-9ac2-401e-8853-3bb081956890', 'Hybride', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0f7dc081-91fa-408a-8e72-45f711bcb4c5', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Un scénario où une stratégie est assignée à des ressources déjà existantes est appelé « Brownfield ». Comment l''évaluation de conformité se déroule-t-elle dans ce cas ?',
        'Dans un scénario Brownfield (resource-first), l''évaluation se fait via un scan de conformité qui s''exécute automatiquement toutes les 24 heures ou peut être déclenché manuellement, plutôt qu''au moment même de l''assignation de la stratégie.', 57, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a1d3cc9e-9ab7-4f4e-859c-a3ff0572df83', '0f7dc081-91fa-408a-8e72-45f711bcb4c5', 'Via un scan de conformité qui s''exécute automatiquement toutes les 24 heures ou peut être déclenché manuellement', TRUE, 1),
    ('3ddf90cd-25be-4dcd-9484-a730d910a886', '0f7dc081-91fa-408a-8e72-45f711bcb4c5', 'Uniquement lors de la suppression de la ressource', FALSE, 2),
    ('756c6db3-ada2-4da0-83c5-484bd627ee8a', '0f7dc081-91fa-408a-8e72-45f711bcb4c5', 'Elle n''a jamais lieu pour les ressources existantes', FALSE, 3),
    ('35182f80-28ac-4311-aa04-ab0d73de53b9', '0f7dc081-91fa-408a-8e72-45f711bcb4c5', 'Immédiatement et de façon synchrone au moment de l''assignation', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cf0f04cd-f117-4018-be66-3cd790b53a7e', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelles sont les deux catégories d''exemption de stratégie Azure Policy ?',
        'Les exemptions de stratégie se répartissent en deux catégories : « Mitigated », lorsque l''intention de la stratégie est satisfaite par une autre méthode, et « Waiver », lorsque l''état de non-conformité de la ressource est temporairement accepté.', 58, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3486fc0f-55ba-4151-b1f9-7ce06a7b5d02', 'cf0f04cd-f117-4018-be66-3cd790b53a7e', 'Enabled et Disabled', FALSE, 1),
    ('cee47e2d-1667-42e6-96bb-5a555bf1819a', 'cf0f04cd-f117-4018-be66-3cd790b53a7e', 'Built-in et Custom', FALSE, 2),
    ('fed0a623-b338-4cca-8b85-3a521e0b11b4', 'cf0f04cd-f117-4018-be66-3cd790b53a7e', 'Mitigated et Waiver', TRUE, 3),
    ('c462fc74-2bfc-45ba-9938-edb0027b0fba', 'cf0f04cd-f117-4018-be66-3cd790b53a7e', 'Compliant et Non-compliant', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9a94fd28-9ae6-4bc7-9bfe-db20906a8b17', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À quoi sert une tâche de correction (remediation task) dans Azure Policy ?',
        'Une tâche de correction (remediation) permet de mettre en conformité des ressources non conformes à une assignation de définition « modify » ou « deployIfNotExists » ; les ressources nouvellement créées ou mises à jour applicables sont, elles, corrigées automatiquement.', 59, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('89906acf-22f0-4a98-bff6-cf88b726ef52', '9a94fd28-9ae6-4bc7-9bfe-db20906a8b17', 'À créer de nouvelles initiatives', FALSE, 1),
    ('ec2c0cf6-58cd-4edc-b0f5-248c5f5e555b', '9a94fd28-9ae6-4bc7-9bfe-db20906a8b17', 'À mettre en conformité des ressources non conformes pour les effets « modify » ou « deployIfNotExists »', TRUE, 2),
    ('cd32931b-39ed-4cf5-9478-7683543cc4cf', '9a94fd28-9ae6-4bc7-9bfe-db20906a8b17', 'À modifier les rôles RBAC', FALSE, 3),
    ('2a873654-81d3-4413-9170-6e57d8136fb7', '9a94fd28-9ae6-4bc7-9bfe-db20906a8b17', 'À supprimer les stratégies obsolètes', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e96e9716-0f4e-4031-8fb6-3530dedd086a', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Lequel des états de conformité suivants indique que deux attributions de stratégie contradictoires s''appliquent à la même ressource ?',
        'L''état « Conflicting » indique que deux attributions de stratégie ou plus, appliquées à la même étendue, comportent des règles contradictoires (par exemple, deux stratégies qui ajoutent la même balise avec des valeurs différentes).', 60, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a8f22821-2b96-400d-82c7-c618c3d719f0', 'e96e9716-0f4e-4031-8fb6-3530dedd086a', 'Non-compliant', FALSE, 1),
    ('08068a7d-d418-428e-9c30-29707d5bd6e7', 'e96e9716-0f4e-4031-8fb6-3530dedd086a', 'Protected', FALSE, 2),
    ('009503d2-5cd8-4c7f-adc3-b098e7f9218b', 'e96e9716-0f4e-4031-8fb6-3530dedd086a', 'Compliant', FALSE, 3),
    ('9a096fcc-186c-48d1-ba1f-1fecdc9a33c9', 'e96e9716-0f4e-4031-8fb6-3530dedd086a', 'Conflicting', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d9416cc-ac36-49e2-82e2-185a88ba9b80', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que signifie RBAC dans le contexte Azure ?',
        'RBAC signifie Role-Based Access Control (contrôle d''accès en fonction du rôle) : un système d''autorisation basé sur Azure Resource Manager qui fournit une gestion d''accès affinée aux ressources Azure.', 61, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f15a024a-529d-4f63-9ab1-3947078a9c5d', '8d9416cc-ac36-49e2-82e2-185a88ba9b80', 'Regional Backup Access Compliance', FALSE, 1),
    ('5a34d24b-13bf-4ba6-8bd1-c4b14aff2c54', '8d9416cc-ac36-49e2-82e2-185a88ba9b80', 'Remote Backup and Configuration', FALSE, 2),
    ('b6b26f27-e882-4c78-9d84-42b0fe67b188', '8d9416cc-ac36-49e2-82e2-185a88ba9b80', 'Role-Based Access Control, soit le contrôle d''accès en fonction du rôle', TRUE, 3),
    ('b09076a9-3615-405d-b2c2-e3694a1c6b11', '8d9416cc-ac36-49e2-82e2-185a88ba9b80', 'Resource-Based Application Control', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('735ea352-dfc0-447c-895e-92a61a724076', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quels sont les trois éléments nécessaires pour créer une attribution de rôle Azure RBAC ?',
        'Une attribution de rôle combine trois éléments : le principal de sécurité (qui), la définition de rôle (quoi) et l''étendue (où), afin de lier un rôle à un utilisateur, groupe ou application dans un périmètre donné.', 62, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('757fc2f2-8672-43df-905e-c24331b2ef4c', '735ea352-dfc0-447c-895e-92a61a724076', 'Principal de sécurité, définition de rôle et étendue', TRUE, 1),
    ('4cd15bb5-de41-43c9-8633-3c5c827e6054', '735ea352-dfc0-447c-895e-92a61a724076', 'Nom d''utilisateur, mot de passe et étendue', FALSE, 2),
    ('c7970e1b-dff3-4232-8adc-ffeb31782f61', '735ea352-dfc0-447c-895e-92a61a724076', 'Groupe, licence et abonnement', FALSE, 3),
    ('dcc3fb8b-245a-45d2-b9fe-6ef9aa6189f1', '735ea352-dfc0-447c-895e-92a61a724076', 'Rôle, région et zone de disponibilité', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4795768f-869f-41b8-ba2a-eac2ee1cbbf9', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel rôle intégré Azure permet de gérer toutes les ressources sans pouvoir accorder l''accès à d''autres utilisateurs ?',
        'Le rôle Contributeur permet de créer et de gérer tous les types de ressources Azure, mais ne permet pas d''octroyer l''accès à d''autres utilisateurs, contrairement au rôle Propriétaire qui dispose de ce droit supplémentaire.', 63, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('923e047f-9f8b-4fd9-87d3-3a3629b7e34c', '4795768f-869f-41b8-ba2a-eac2ee1cbbf9', 'Lecteur', FALSE, 1),
    ('a358fbd4-447b-412c-9b66-baf253935352', '4795768f-869f-41b8-ba2a-eac2ee1cbbf9', 'Propriétaire', FALSE, 2),
    ('3a95750c-a51f-4465-80a6-f5e6bfd89066', '4795768f-869f-41b8-ba2a-eac2ee1cbbf9', 'Administrateur de l''accès utilisateur', FALSE, 3),
    ('5727dbdc-97e5-4e7d-b2e3-cef40646c021', '4795768f-869f-41b8-ba2a-eac2ee1cbbf9', 'Contributeur', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('add3bd4c-a5d0-43d7-a36f-77e4669d068d', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel rôle intégré Azure permet uniquement de consulter les ressources existantes sans les modifier ?',
        'Le rôle Lecteur donne uniquement un accès en lecture, permettant de consulter les ressources Azure existantes sans pouvoir les créer, les modifier ou les supprimer.', 64, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c67673b4-cf14-4447-9e86-649b7b878f5d', 'add3bd4c-a5d0-43d7-a36f-77e4669d068d', 'Lecteur', TRUE, 1),
    ('b2f1dd3d-c96f-4efe-ab15-150cc5af9888', 'add3bd4c-a5d0-43d7-a36f-77e4669d068d', 'Propriétaire', FALSE, 2),
    ('81e5def8-e7b6-413b-8d5b-997685fb7265', 'add3bd4c-a5d0-43d7-a36f-77e4669d068d', 'Contributeur', FALSE, 3),
    ('c431ca7f-380c-4d63-8da2-141396cb3333', 'add3bd4c-a5d0-43d7-a36f-77e4669d068d', 'Administrateur de l''accès utilisateur', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ac341c26-fc8b-403a-9ef6-44118351c5e2', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Dans Azure RBAC, si un rôle est attribué au niveau d''un groupe de ressources, que se passe-t-il pour les ressources qu''il contient ?',
        'Les étendues Azure RBAC sont structurées en relation parent-enfant : un rôle attribué à une étendue parente (comme un groupe de ressources) est automatiquement hérité par toutes les ressources enfants qu''elle contient.', 65, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3b42dd64-c2b5-4dcc-b876-5eaedc2da70b', 'ac341c26-fc8b-403a-9ef6-44118351c5e2', 'Elles n''héritent pas de l''attribution', FALSE, 1),
    ('cd401302-1056-4452-9ba4-6652d8d403bd', 'ac341c26-fc8b-403a-9ef6-44118351c5e2', 'Elles doivent recevoir une attribution séparée', FALSE, 2),
    ('4b2eb4b0-7118-4c09-acb0-77a8e64dd49a', 'ac341c26-fc8b-403a-9ef6-44118351c5e2', 'L''attribution s''applique uniquement au groupe lui-même', FALSE, 3),
    ('fd0a93fc-08d5-46c7-b508-bc297dd15b4a', 'ac341c26-fc8b-403a-9ef6-44118351c5e2', 'Elles héritent automatiquement de l''attribution de rôle', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c6b6ac45-616e-4184-a1e1-4f68be1e0bc2', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Qu''est-ce qu''un « principal de sécurité » dans Azure RBAC ?',
        'Un principal de sécurité désigne simplement un utilisateur, un groupe ou une application (principal de service) auquel on souhaite accorder un accès via une attribution de rôle.', 66, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cfbbe2a4-fbcb-4530-8614-ffd69e1ff7f1', 'c6b6ac45-616e-4184-a1e1-4f68be1e0bc2', 'Un utilisateur, un groupe ou une application auquel on accorde un accès', TRUE, 1),
    ('c5e7b0d3-6156-4b71-bcd2-874b0e4f71b9', 'c6b6ac45-616e-4184-a1e1-4f68be1e0bc2', 'Un type de machine virtuelle', FALSE, 2),
    ('794180bb-1bc9-4784-9163-7cacbf910abf', 'c6b6ac45-616e-4184-a1e1-4f68be1e0bc2', 'Une région Azure', FALSE, 3),
    ('52fa442a-17c1-4ae8-850f-2b16628e5e3e', 'c6b6ac45-616e-4184-a1e1-4f68be1e0bc2', 'Un journal d''activité', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('25d14c60-fd4a-4bb1-858e-b34b9b3f7daa', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Comment révoque-t-on un accès précédemment accordé via Azure RBAC ?',
        'Pour accorder un accès, on crée une attribution de rôle ; pour le révoquer, il suffit de supprimer cette attribution de rôle, sans qu''il soit nécessaire de supprimer la ressource ou de modifier le compte utilisateur.', 67, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ddeb3053-9ebd-42f4-99ff-59937c7c900a', '25d14c60-fd4a-4bb1-858e-b34b9b3f7daa', 'En supprimant le groupe de ressources', FALSE, 1),
    ('89515aeb-d16a-4b10-9e64-a533bec376bc', '25d14c60-fd4a-4bb1-858e-b34b9b3f7daa', 'En supprimant l''attribution de rôle', TRUE, 2),
    ('b3d2199e-c148-4762-ac5b-dc97178f4c71', '25d14c60-fd4a-4bb1-858e-b34b9b3f7daa', 'En changeant le mot de passe de l''utilisateur', FALSE, 3),
    ('46aba158-f3a2-4917-89e2-1dcd5cab5074', '25d14c60-fd4a-4bb1-858e-b34b9b3f7daa', 'En désactivant l''abonnement', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94f93faf-9751-4ce4-b249-58e4e46b8d63', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À quoi servent les autorisations \`NotActions\` dans une définition de rôle Azure RBAC ?',
        'Les autorisations effectives d''un rôle sont calculées en soustrayant les opérations listées dans \`NotActions\` de celles listées dans \`Actions\` ; par exemple, le rôle Contributeur autorise toutes les opérations du plan de contrôle sauf celles explicitement exclues, comme la gestion des attributions de rôle.', 68, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7354a43f-ad3a-4543-9de4-079f9735dc9c', '94f93faf-9751-4ce4-b249-58e4e46b8d63', 'Elles ajoutent des autorisations supplémentaires', FALSE, 1),
    ('12d09e8a-5295-489d-984e-5d1c0cce928c', '94f93faf-9751-4ce4-b249-58e4e46b8d63', 'Elles soustraient certaines opérations des autorisations \`Actions\` pour calculer les autorisations effectives', TRUE, 2),
    ('992593f6-e687-4777-a635-8dbfe3f8d887', '94f93faf-9751-4ce4-b249-58e4e46b8d63', 'Elles remplacent complètement les autorisations Actions', FALSE, 3),
    ('3ecaf1b1-daf5-4c21-ab57-810a2c1ee6c9', '94f93faf-9751-4ce4-b249-58e4e46b8d63', 'Elles définissent la région d''application du rôle', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1a2708f1-8bec-4498-9164-6648037884a7', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel rôle intégré Azure RBAC dispose d''un accès total à toutes les ressources ET du droit de déléguer l''accès à d''autres utilisateurs ?',
        'Le rôle Propriétaire dispose d''un accès complet à toutes les ressources de son étendue, avec en plus la capacité de déléguer cet accès à d''autres utilisateurs, ce qui le distingue du rôle Contributeur.', 69, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('34e7e030-4bea-499d-8843-b092c380ee59', '1a2708f1-8bec-4498-9164-6648037884a7', 'Propriétaire', TRUE, 1),
    ('b61ce7d3-40d6-4fcc-b47a-db7e64a782e2', '1a2708f1-8bec-4498-9164-6648037884a7', 'Contributeur', FALSE, 2),
    ('c63d98f3-c51b-451f-a28d-d0a0513b1dd9', '1a2708f1-8bec-4498-9164-6648037884a7', 'Lecteur', FALSE, 3),
    ('365594fd-1594-4253-9fc1-0847108fb96e', '1a2708f1-8bec-4498-9164-6648037884a7', 'Administrateur de l''accès utilisateur', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8475af60-931a-4f84-afcc-c484ef482574', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel rôle intégré permet uniquement de gérer l''accès des utilisateurs aux ressources Azure, sans nécessairement gérer les ressources elles-mêmes ?',
        'Le rôle Administrateur de l''accès utilisateur permet de gérer l''accès des utilisateurs aux ressources Azure (créer des attributions de rôle) sans nécessairement disposer d''un accès complet pour gérer le contenu de ces ressources.', 70, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0f477714-0663-4afb-bb1c-e6c50614dbc8', '8475af60-931a-4f84-afcc-c484ef482574', 'Lecteur', FALSE, 1),
    ('62c0a7ef-e255-4569-9256-7b3b919abdde', '8475af60-931a-4f84-afcc-c484ef482574', 'Administrateur de l''accès utilisateur', TRUE, 2),
    ('d5a42c31-7448-4d5c-b38d-ad15eda7d3f2', '8475af60-931a-4f84-afcc-c484ef482574', 'Propriétaire', FALSE, 3),
    ('ea0a2c92-dc7c-40c7-96ec-b26fd00f8efc', '8475af60-931a-4f84-afcc-c484ef482574', 'Contributeur', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b73c5c18-69e0-4cdc-8aaf-0170f0448cae', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À combien de niveaux d''étendue différents peut-on attribuer un rôle Azure RBAC ?',
        'L''étendue d''une attribution de rôle Azure RBAC peut être définie à quatre niveaux : groupe d''administration, abonnement, groupe de ressources ou ressource individuelle.', 71, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1f6370ff-6bb4-4b19-8eab-32b69bfcd356', 'b73c5c18-69e0-4cdc-8aaf-0170f0448cae', 'Quatre : groupe d''administration, abonnement, groupe de ressources, ressource', TRUE, 1),
    ('aa60867c-89ce-4f0e-91f1-8be3829ea032', 'b73c5c18-69e0-4cdc-8aaf-0170f0448cae', 'Deux', FALSE, 2),
    ('e32f67f4-12ce-4153-9bdf-f95f9f679c6e', 'b73c5c18-69e0-4cdc-8aaf-0170f0448cae', 'Trois', FALSE, 3),
    ('ed1f116b-fe05-47c9-b6e5-682ba1bf106b', 'b73c5c18-69e0-4cdc-8aaf-0170f0448cae', 'Cinq', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8db0db46-0501-4c9c-b3cf-340f3a39073d', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Dans quel volet du portail Azure gère-t-on les attributions de rôles RBAC ?',
        'Le volet Contrôle d''accès (IAM), aussi appelé Gestion des identités et des accès, permet d''identifier qui a accès à une ressource, quel est son rôle, et d''accorder ou de supprimer des accès.', 72, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b04a2b33-9d8f-45ae-b04e-ce63f46cae1d', '8db0db46-0501-4c9c-b3cf-340f3a39073d', 'Journal d''activité', FALSE, 1),
    ('a35aae2e-39d4-43a7-a54f-66578fc02992', '8db0db46-0501-4c9c-b3cf-340f3a39073d', 'Contrôle d''accès (IAM)', TRUE, 2),
    ('30e3ab68-ca91-42a2-8595-840871eaa58b', '8db0db46-0501-4c9c-b3cf-340f3a39073d', 'Centre de coûts', FALSE, 3),
    ('57603182-82a4-4aac-bc13-ba19ddc7e611', '8db0db46-0501-4c9c-b3cf-340f3a39073d', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b72702b8-ad35-42f8-91fa-52adfba64ef8', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Pourquoi une organisation créerait-elle un rôle personnalisé (custom role) dans Azure RBAC ?',
        'Lorsque les rôles intégrés (Propriétaire, Contributeur, Lecteur, etc.) ne couvrent pas un besoin précis d''autorisations, une organisation peut créer un rôle personnalisé définissant exactement les actions autorisées.', 73, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3dc0f7e4-a8ae-4ffb-949f-0e01048e1375', 'b72702b8-ad35-42f8-91fa-52adfba64ef8', 'Pour remplacer le principal de sécurité', FALSE, 1),
    ('63a90977-aad1-4921-9de0-860d73068c1b', 'b72702b8-ad35-42f8-91fa-52adfba64ef8', 'Quand les rôles intégrés ne répondent pas à des besoins d''accès spécifiques', TRUE, 2),
    ('473245d2-e864-4bdd-9756-d842f240d9bd', 'b72702b8-ad35-42f8-91fa-52adfba64ef8', 'Pour éviter d''utiliser l''étendue de ressource', FALSE, 3),
    ('c89726a5-9300-40b7-beef-ac6e325f9f83', 'b72702b8-ad35-42f8-91fa-52adfba64ef8', 'Parce que les rôles intégrés sont payants', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e39a330c-f558-4fa6-9cf4-a1a14300cb52', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'À combien d''annuaires Microsoft Entra un abonnement Azure est-il associé ?',
        'Chaque abonnement Azure est associé à un seul annuaire (tenant) Microsoft Entra ; les utilisateurs, groupes et applications de cet annuaire peuvent gérer les ressources de l''abonnement.', 74, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6c985779-fda8-4c46-8869-3fee8ce0a0c8', 'e39a330c-f558-4fa6-9cf4-a1a14300cb52', 'Deux', FALSE, 1),
    ('61cd3859-51e4-4ea8-8660-47d661af346e', 'e39a330c-f558-4fa6-9cf4-a1a14300cb52', 'Autant que de groupes de ressources', FALSE, 2),
    ('9e1636b2-7187-4faf-bb72-0412c8c16aae', 'e39a330c-f558-4fa6-9cf4-a1a14300cb52', 'Un seul', TRUE, 3),
    ('b3f0db15-4afe-4aec-9665-e39094b2862f', 'e39a330c-f558-4fa6-9cf4-a1a14300cb52', 'Aucun', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4fb53b2-fd6e-45e4-b6f7-9b7a60831d36', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que se passe-t-il si l''on désactive un compte Active Directory local synchronisé avec Microsoft Entra ID via Microsoft Entra Connect ?',
        'Puisque les abonnements Azure utilisent Microsoft Entra ID pour l''authentification unique, désactiver un compte Active Directory local synchronisé lui fait automatiquement perdre l''accès à tous les abonnements Azure connectés à cet annuaire.', 75, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('913c2526-e598-4f1f-a112-e2426efa3e18', 'a4fb53b2-fd6e-45e4-b6f7-9b7a60831d36', 'Le mot de passe est automatiquement réinitialisé', FALSE, 1),
    ('eb5d1d8a-b5a2-46ab-ad89-2d20460977e5', 'a4fb53b2-fd6e-45e4-b6f7-9b7a60831d36', 'Rien, l''accès Azure reste actif indéfiniment', FALSE, 2),
    ('79bcf9a3-7996-44f1-a1c9-3b29874cafbe', 'a4fb53b2-fd6e-45e4-b6f7-9b7a60831d36', 'Le compte est automatiquement promu administrateur', FALSE, 3),
    ('7e997f83-6d78-40ae-9a8b-95bb73931958', 'a4fb53b2-fd6e-45e4-b6f7-9b7a60831d36', 'Le compte perd automatiquement l''accès à tous les abonnements Azure connectés à Microsoft Entra ID', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c14321e2-1d75-4354-86bc-08429ac40d13', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel est l''avantage principal de la réinitialisation de mot de passe en libre-service (SSPR) ?',
        'SSPR permet aux utilisateurs de résoudre eux-mêmes les problèmes de mot de passe oublié ou expiré, sans avoir à appeler le support technique, ce qui réduit la charge des administrateurs et minimise l''impact sur la productivité.', 76, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('931da38c-4c47-42c7-aa84-831364d97602', 'c14321e2-1d75-4354-86bc-08429ac40d13', 'Elle remplace l''authentification multifacteur', FALSE, 1),
    ('e59a1491-3bb8-4102-851b-7abdc32f37e2', 'c14321e2-1d75-4354-86bc-08429ac40d13', 'Elle chiffre automatiquement toutes les données', FALSE, 2),
    ('f7640657-7fb9-4c71-af1a-8b07f6762d29', 'c14321e2-1d75-4354-86bc-08429ac40d13', 'Elle permet aux utilisateurs de réinitialiser leur mot de passe sans intervention du support technique', TRUE, 3),
    ('ff55484e-92e3-4a39-977a-75acb8bdd7e2', 'c14321e2-1d75-4354-86bc-08429ac40d13', 'Elle supprime le besoin de mots de passe', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d2dfcef2-c8fd-4437-89de-68bc56defffa', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Combien de méthodes d''authentification Azure prend-il en charge pour SSPR ?',
        'Azure prend en charge six méthodes d''authentification pour SSPR : notification sur l''application mobile, code d''application mobile, e-mail, téléphone mobile, téléphone de bureau et questions de sécurité.', 77, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a0ed1bed-52ef-41ca-8606-eb76d07722ef', 'd2dfcef2-c8fd-4437-89de-68bc56defffa', 'Six', TRUE, 1),
    ('edc99f23-51bb-4beb-85f6-464e67b44cb8', 'd2dfcef2-c8fd-4437-89de-68bc56defffa', 'Huit', FALSE, 2),
    ('364b79fa-fa7a-4b59-bfb0-15a92084aa85', 'd2dfcef2-c8fd-4437-89de-68bc56defffa', 'Quatre', FALSE, 3),
    ('9793895e-2a6b-43c3-b859-7804d175c3d8', 'd2dfcef2-c8fd-4437-89de-68bc56defffa', 'Trois', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('be1c3f0a-a73d-40b2-9bb0-bea1dce731fa', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle méthode d''authentification SSPR n''est PAS disponible pour les comptes ayant un rôle d''administrateur ?',
        'La méthode « Questions de sécurité » n''est pas disponible pour les comptes associés à un rôle d''administrateur, qui doivent en outre toujours utiliser une authentification forte à deux méthodes pour SSPR.', 78, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fea482c7-4f93-4783-99bd-5c2a63714a6c', 'be1c3f0a-a73d-40b2-9bb0-bea1dce731fa', 'Notification sur l''application mobile', FALSE, 1),
    ('a9ff42b6-5d7c-4ca3-bb13-05b0e13abc2a', 'be1c3f0a-a73d-40b2-9bb0-bea1dce731fa', 'Questions de sécurité', TRUE, 2),
    ('1ca9ee18-37b2-4f7d-9d98-f36fe2bac191', 'be1c3f0a-a73d-40b2-9bb0-bea1dce731fa', 'Code d''application mobile', FALSE, 3),
    ('f634d2e2-87d0-4540-a823-087e0b0358b6', 'be1c3f0a-a73d-40b2-9bb0-bea1dce731fa', 'E-mail', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c9cebad7-b989-4dc1-acdc-308f449f7dbe', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle licence minimale est requise pour activer SSPR dans une organisation ?',
        'SSPR pour les utilisateurs non connectés (mot de passe oublié ou expiré) nécessite une édition Microsoft Entra ID P1 ou P2 ; il est également disponible avec Microsoft 365 Apps for business et Microsoft 365.', 79, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7cedd742-001f-438f-9493-57e331fb2282', 'c9cebad7-b989-4dc1-acdc-308f449f7dbe', 'Microsoft Entra ID Free', FALSE, 1),
    ('41c8aeb3-ba5f-47df-bd3f-439f7db42985', 'c9cebad7-b989-4dc1-acdc-308f449f7dbe', 'Azure Free Trial', FALSE, 2),
    ('3b6790f3-0138-4ac4-bf92-a6fccf28d6a7', 'c9cebad7-b989-4dc1-acdc-308f449f7dbe', 'Windows Server Standard', FALSE, 3),
    ('8a9358a2-80b3-47d7-8b6c-cc3180303c7d', 'c9cebad7-b989-4dc1-acdc-308f449f7dbe', 'Microsoft Entra ID P1 ou P2', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ae3aac54-04cb-408e-b52d-a4f4223cfbbc', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle option de déploiement de SSPR permet de réécrire (writeback) le changement de mot de passe cloud vers un Active Directory local ?',
        'La réécriture de mot de passe (writeback) vers l''annuaire local peut être déployée via Microsoft Entra Connect ou la synchronisation cloud, ces deux options pouvant même être utilisées côte à côte dans différents domaines selon les besoins.', 80, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4935f1cd-5f81-40f4-94e1-40550ef31038', 'ae3aac54-04cb-408e-b52d-a4f4223cfbbc', 'Azure RBAC', FALSE, 1),
    ('b1a1d4a5-e480-49ae-bad8-dfdba94a0ccb', 'ae3aac54-04cb-408e-b52d-a4f4223cfbbc', 'Azure Key Vault', FALSE, 2),
    ('2cf883dc-5ad7-4656-9f99-e406d83451c2', 'ae3aac54-04cb-408e-b52d-a4f4223cfbbc', 'Azure Policy', FALSE, 3),
    ('68cd9eb4-8839-41ef-9fcc-d48740095918', 'ae3aac54-04cb-408e-b52d-a4f4223cfbbc', 'Microsoft Entra Connect ou la synchronisation cloud', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f4272cf4-bcce-4481-81de-944091d560c9', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle est la stratégie d''authentification appliquée aux comptes disposant d''un rôle d''administrateur pour SSPR ?',
        'Quelle que soit la configuration définie pour les autres utilisateurs, une stratégie d''authentification forte à deux méthodes est toujours appliquée aux comptes disposant d''un rôle d''administrateur pour SSPR.', 81, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1b91a4c3-ef96-4357-9b0b-e5ac8f525645', 'f4272cf4-bcce-4481-81de-944091d560c9', 'Une authentification forte à deux méthodes est toujours exigée', TRUE, 1),
    ('bbb12416-4824-48f1-adcb-d40dd391f821', 'f4272cf4-bcce-4481-81de-944091d560c9', 'Une seule méthode suffit toujours', FALSE, 2),
    ('00f9c831-da27-45c9-86ae-c5d281da16c4', 'f4272cf4-bcce-4481-81de-944091d560c9', 'Aucune authentification supplémentaire n''est requise', FALSE, 3),
    ('95c22fd5-3c6c-4007-bfa2-968a3cb56d21', 'f4272cf4-bcce-4481-81de-944091d560c9', 'Seules les questions de sécurité sont autorisées', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6f36164a-db75-4d48-bc50-a9aba08113cd', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que doit faire un utilisateur qui n''est pas connecté et qui a oublié son mot de passe, dans une organisation ayant activé SSPR ?',
        'L''utilisateur peut accéder directement au portail de réinitialisation de mot de passe ou sélectionner le lien « Vous ne parvenez pas à accéder à votre compte ? », puis suivre les étapes de vérification et d''authentification pour définir un nouveau mot de passe sans intervention du support.', 82, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('63ee74a0-624a-497b-a53c-31164e94d36c', '6f36164a-db75-4d48-bc50-a9aba08113cd', 'Utiliser le portail SSPR pour vérifier son identité et définir un nouveau mot de passe', TRUE, 1),
    ('3d8d8304-b04c-4e4d-98bf-eb4f9c48ad86', '6f36164a-db75-4d48-bc50-a9aba08113cd', 'Attendre l''expiration automatique du compte', FALSE, 2),
    ('59ab826c-de3b-4d2d-a77a-4535576ae173', '6f36164a-db75-4d48-bc50-a9aba08113cd', 'Créer un nouveau compte utilisateur', FALSE, 3),
    ('935dcf47-edf7-455a-8710-933d63ae3ae8', '6f36164a-db75-4d48-bc50-a9aba08113cd', 'Contacter obligatoirement le support technique', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9374eb1f-7ba7-4cb1-b59f-fb50960aa3e3', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Lors d''une demande SSPR, à quoi sert le test CAPTCHA effectué après la saisie du nom d''utilisateur ?',
        'L''étape de vérification du portail SSPR inclut un test CAPTCHA après la saisie du nom d''utilisateur, afin de garantir que la demande provient bien d''un utilisateur humain et non d''un robot automatisé.', 83, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7a0b54bd-30e7-488b-8a91-89f38a3983db', '9374eb1f-7ba7-4cb1-b59f-fb50960aa3e3', 'Sélectionner la langue de l''interface', FALSE, 1),
    ('93a2bc37-740e-49cb-a6ed-d89935da8de6', '9374eb1f-7ba7-4cb1-b59f-fb50960aa3e3', 'Envoyer une notification aux administrateurs', FALSE, 2),
    ('3c62d435-94f3-4af3-96ac-13841327eb1e', '9374eb1f-7ba7-4cb1-b59f-fb50960aa3e3', 'Vérifier qu''il s''agit d''un utilisateur humain, et non d''un bot', TRUE, 3),
    ('72c7eb57-73f7-4a6a-a72e-a762792024bc', '9374eb1f-7ba7-4cb1-b59f-fb50960aa3e3', 'Chiffrer le nouveau mot de passe', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('af7e9d23-ded4-4ce0-8ba5-2de078b4cb95', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quelle méthode d''authentification SSPR est la MOINS recommandée par Microsoft, les réponses pouvant être connues d''autres personnes ?',
        'L''option Questions de sécurité est la méthode la moins recommandée par Microsoft car les réponses peuvent être connues d''autres personnes ; il est conseillé de ne l''utiliser qu''en complément d''au moins une autre méthode.', 84, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6fe5a057-2904-412c-b7fc-9fa2ebde5d53', 'af7e9d23-ded4-4ce0-8ba5-2de078b4cb95', 'E-mail', FALSE, 1),
    ('b5ad2119-4d68-42d0-a8ee-71c2d43f15a2', 'af7e9d23-ded4-4ce0-8ba5-2de078b4cb95', 'Questions de sécurité', TRUE, 2),
    ('b7749496-6fde-4313-9bd4-20b805b33a3d', 'af7e9d23-ded4-4ce0-8ba5-2de078b4cb95', 'Code d''application mobile', FALSE, 3),
    ('0e8aa288-5048-4653-a7b6-f9854a2d9f94', 'af7e9d23-ded4-4ce0-8ba5-2de078b4cb95', 'Notification sur l''application mobile', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d394aeba-61db-4865-9e08-daed155b2971', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Pourquoi la méthode « Téléphone mobile » (SMS) n''est-elle pas particulièrement recommandée comme méthode d''authentification SSPR ?',
        'La méthode Téléphone mobile n''est pas recommandée par Microsoft car il est possible d''envoyer des SMS frauduleux, ce qui représente un risque de sécurité par rapport à des méthodes comme l''application Authenticator.', 85, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5f55cc0f-ab03-4fef-9aef-0d5d611817cf', 'd394aeba-61db-4865-9e08-daed155b2971', 'Elle nécessite une licence supplémentaire', FALSE, 1),
    ('b88f4633-8c72-42ea-8e58-5dfd6882135d', 'd394aeba-61db-4865-9e08-daed155b2971', 'Elle n''est disponible que pour les administrateurs', FALSE, 2),
    ('d91ac0f3-d50d-4459-be3f-0e6521f60ffb', 'd394aeba-61db-4865-9e08-daed155b2971', 'Elle est trop lente', FALSE, 3),
    ('e9fc5c7f-6599-4cc1-9ed0-250f50edf370', 'd394aeba-61db-4865-9e08-daed155b2971', 'Il existe un risque d''envoi de SMS frauduleux', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cad79595-487c-4f81-a210-c7a5bdc41b37', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Que permet l''option de notification « Notifier tous les administrateurs quand d''autres administrateurs réinitialisent leur mot de passe » ?',
        'Cette option de notification permet d''informer l''ensemble des administrateurs lorsqu''un autre administrateur réinitialise son mot de passe, ce qui aide à repérer rapidement une activité potentiellement malveillante.', 86, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7eea7257-ddf5-42a1-990c-ba44b72b4d6e', 'cad79595-487c-4f81-a210-c7a5bdc41b37', 'De forcer une double authentification par SMS', FALSE, 1),
    ('b4563dbe-81ec-4513-a588-41c5541742ca', 'cad79595-487c-4f81-a210-c7a5bdc41b37', 'D''alerter les autres administrateurs en cas de réinitialisation par un pair, pour détecter une activité suspecte', TRUE, 2),
    ('9f54cb6a-7a98-40c0-b71e-7fe278d342bf', 'cad79595-487c-4f81-a210-c7a5bdc41b37', 'De bloquer toute réinitialisation par un administrateur', FALSE, 3),
    ('0b4d5dd4-952e-4ced-a9cf-66fbb5e88c62', 'cad79595-487c-4f81-a210-c7a5bdc41b37', 'De désactiver SSPR pour les comptes administrateurs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a3ac0980-2627-40b4-8e21-d17e2c5a91f8', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Dans une organisation utilisant un essai gratuit Microsoft Entra, quelles méthodes d''authentification SSPR ne sont PAS prises en charge ?',
        'Dans les organisations disposant d''un essai gratuit Microsoft Entra, les options d''appel téléphonique (téléphone mobile et téléphone de bureau) ne sont pas prises en charge pour SSPR.', 87, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('38913095-50ca-4a65-bee9-c11deb42af2d', 'a3ac0980-2627-40b4-8e21-d17e2c5a91f8', 'Les questions de sécurité', FALSE, 1),
    ('daa7b3cd-ae4e-4f4b-aa1b-ba8faeff1c95', 'a3ac0980-2627-40b4-8e21-d17e2c5a91f8', 'Les options d''appel téléphonique', TRUE, 2),
    ('1e69cce1-393b-4e21-bfb3-810b263ae72b', 'a3ac0980-2627-40b4-8e21-d17e2c5a91f8', 'L''e-mail', FALSE, 3),
    ('f54c196b-04ac-4434-8c27-2e8804a99468', 'a3ac0980-2627-40b4-8e21-d17e2c5a91f8', 'L''application Authenticator', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4bfbf3e6-f2be-48ef-b85b-2d8452a74220', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Un utilisateur déjà connecté à son compte peut-il changer son mot de passe, quelle que soit l''édition Microsoft Entra ID ?',
        'Tout utilisateur déjà connecté à son compte peut changer son mot de passe indépendamment de l''édition Microsoft Entra ID ; c''est uniquement la réinitialisation d''un mot de passe oublié ou expiré, sans être connecté, qui nécessite SSPR avec une édition P1 ou P2.', 88, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('99a0cddf-6bd8-4a05-9a80-46a01b603ad8', '4bfbf3e6-f2be-48ef-b85b-2d8452a74220', 'Non, cela nécessite toujours P1 ou P2', FALSE, 1),
    ('66b1a5fe-581c-4940-a8d1-8db2fe566944', '4bfbf3e6-f2be-48ef-b85b-2d8452a74220', 'Cela dépend uniquement de la région Azure', FALSE, 2),
    ('9962449c-3cfe-4376-98c5-e8cf3cf99d8a', '4bfbf3e6-f2be-48ef-b85b-2d8452a74220', 'Seuls les administrateurs peuvent changer leur mot de passe', FALSE, 3),
    ('5461ef0b-3796-4d37-b5e2-da7038c7b133', '4bfbf3e6-f2be-48ef-b85b-2d8452a74220', 'Oui, tout utilisateur connecté peut changer son mot de passe quelle que soit l''édition', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67517626-f53b-46c8-8122-aa437a360e87', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quel rôle Microsoft Entra minimal est nécessaire pour configurer SSPR ?',
        'Pour configurer SSPR, un compte disposant au moins du rôle Administrateur de stratégie d''authentification est nécessaire, ce rôle donnant les droits requis pour gérer les paramètres de réinitialisation de mot de passe.', 89, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd588bd3-4b57-41c5-afcf-493e6d14a650', '67517626-f53b-46c8-8122-aa437a360e87', 'Lecteur', FALSE, 1),
    ('dd17284f-ef75-44a9-807e-89e428a2b52f', '67517626-f53b-46c8-8122-aa437a360e87', 'Administrateur de facturation', FALSE, 2),
    ('d9aab556-e92d-4e6d-8b49-45dd858dac2b', '67517626-f53b-46c8-8122-aa437a360e87', 'Administrateur de stratégie d''authentification', TRUE, 3),
    ('74c47ec2-bf01-4c25-8e27-83c1af0f56ab', '67517626-f53b-46c8-8122-aa437a360e87', 'Contributeur', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e83e35f-8b3a-482a-9f2c-39cb284bd624', 'ed4097fd-714d-4159-acc3-5c0947e35f12', 'SINGLE_CHOICE', 'Quand un utilisateur est-il considéré comme « inscrit » à SSPR ?',
        'Un utilisateur est considéré comme inscrit à SSPR une fois qu''il a enregistré les informations nécessaires pour au moins le nombre minimal de méthodes d''authentification (une ou deux) que l''administrateur a configuré.', 90, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('edaf67ea-c811-4066-b5bb-6137632de189', '0e83e35f-8b3a-482a-9f2c-39cb284bd624', 'Uniquement après avoir contacté le support technique une première fois', FALSE, 1),
    ('7568d5be-8e91-40b4-9ca3-dfaf3c8155a1', '0e83e35f-8b3a-482a-9f2c-39cb284bd624', 'Lorsqu''il a enregistré au moins le nombre minimal de méthodes d''authentification exigé par l''administrateur', TRUE, 2),
    ('d9011aa9-a3d5-4709-80f3-a244dcc98762', '0e83e35f-8b3a-482a-9f2c-39cb284bd624', 'Dès qu''il a un compte Microsoft Entra actif', FALSE, 3),
    ('6f2eee81-3bda-42f3-8f83-08cbe3cffc5b', '0e83e35f-8b3a-482a-9f2c-39cb284bd624', 'Après 30 jours d''ancienneté du compte', FALSE, 4);

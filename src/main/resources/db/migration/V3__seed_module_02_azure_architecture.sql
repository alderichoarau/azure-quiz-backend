-- Module 2 - Azure Architecture & Compute Services (real AZ-900 content)
-- Standard questions + explanations sourced from AZ900_ANSWER_KEY_Formateur.docx
-- Scenario questions sourced from Module_02_Scenarios_AZ900.docx; that document has no
-- written answer key (trainer corrects live), so their correct answers/explanations were
-- determined from AZ-900 fundamentals rather than copied from an official source - please
-- give them a quick review.

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('aaa4930b-0482-4e1d-865f-e0e0d21b07d9', '00000000-0000-0000-0000-000000000001', 'module-02-azure-architecture', 'Module 2 - Azure Architecture & Compute Services',
        'Regions, Availability Zones, Resource Groups, Subscriptions, VMs, Containers, Functions, App Service.', 2);

-- Standard MCQ / True-False questions
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67fa1a5e-b04e-4d94-9cb8-52b550827445', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is an Azure Region?',
        'An Azure region is a set of datacenters deployed within a latency-defined perimeter and connected through a dedicated regional low-latency network.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f0d748ee-e9eb-4614-9083-fe1c1dee35d4', '67fa1a5e-b04e-4d94-9cb8-52b550827445', 'A single datacenter', FALSE, 1),
    ('88685884-b80f-479c-904b-3bba5f36e800', '67fa1a5e-b04e-4d94-9cb8-52b550827445', 'A group of datacenters in a specific geographic area', TRUE, 2),
    ('f8b69594-2053-479c-97f7-7ab3b48bb2f0', '67fa1a5e-b04e-4d94-9cb8-52b550827445', 'A logical container for Azure resources', FALSE, 3),
    ('ac8e1294-91c1-4620-8842-fbbfc0decc21', '67fa1a5e-b04e-4d94-9cb8-52b550827445', 'A virtual network segment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('813562a2-c17e-4ff1-ae82-99673c2edfa2', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What are Azure Availability Zones?',
        'Availability Zones are physically separate datacenters within an Azure region, providing protection against datacenter-level failures.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('72900f91-91b1-4d89-b8da-8941b683fb06', '813562a2-c17e-4ff1-ae82-99673c2edfa2', 'Separate geographic regions', FALSE, 1),
    ('f7604a6d-3b2f-4a56-8a91-8be4e187f60d', '813562a2-c17e-4ff1-ae82-99673c2edfa2', 'Physically separate datacenters within a region with independent power, cooling, and networking', TRUE, 2),
    ('72412223-d494-4240-9798-726c7c36d494', '813562a2-c17e-4ff1-ae82-99673c2edfa2', 'Virtual network segments', FALSE, 3),
    ('64331942-36bd-4975-8a5b-a0259755c1a1', '813562a2-c17e-4ff1-ae82-99673c2edfa2', 'Content delivery points', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3036a494-a547-4868-83a3-080c2b9f0ffe', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is the purpose of Azure Resource Groups?',
        'Resource groups are logical containers that hold related Azure resources, making it easier to manage, deploy, and delete them together.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6f20ed26-f9d9-4b6b-a328-464f98cac2b1', '3036a494-a547-4868-83a3-080c2b9f0ffe', 'To create virtual networks', FALSE, 1),
    ('c300b0db-c67f-48d5-8cf5-1937247c3d10', '3036a494-a547-4868-83a3-080c2b9f0ffe', 'To group and manage related Azure resources as a single unit', TRUE, 2),
    ('9de11ffd-5d71-4bcd-87e3-7dc85b8548f2', '3036a494-a547-4868-83a3-080c2b9f0ffe', 'To define pricing tiers', FALSE, 3),
    ('298e386f-8029-459c-996a-3e3ec8cbbc55', '3036a494-a547-4868-83a3-080c2b9f0ffe', 'To set network security rules', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cad0a298-9613-42e1-876d-3757a51d2f08', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is an Azure Subscription?',
        'An Azure Subscription provides authenticated and authorized access to Azure services and is a billing boundary.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df09df74-de6d-43dd-bd6d-62ff2210bf06', 'cad0a298-9613-42e1-876d-3757a51d2f08', 'A billing and access management unit in Azure', TRUE, 1),
    ('6813ebaa-73c2-4641-9933-41b3cb4bf012', 'cad0a298-9613-42e1-876d-3757a51d2f08', 'A type of virtual machine', FALSE, 2),
    ('63b9be57-b112-4b79-87c4-7c22537927dd', 'cad0a298-9613-42e1-876d-3757a51d2f08', 'A networking component', FALSE, 3),
    ('d4474011-8147-486d-8c1c-b7e4d6b6426c', 'cad0a298-9613-42e1-876d-3757a51d2f08', 'A storage service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1c3cefc7-6125-4826-b532-70dc16a791e3', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What Azure service allows you to run Windows or Linux virtual machines in the cloud?',
        'Azure Virtual Machines (VMs) are IaaS offerings that let you run Windows or Linux VMs in the cloud.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4a256875-4db1-44db-824c-8739022ee5a6', '1c3cefc7-6125-4826-b532-70dc16a791e3', 'Azure Functions', FALSE, 1),
    ('d4424ade-416f-4608-8288-0e7e69308585', '1c3cefc7-6125-4826-b532-70dc16a791e3', 'Azure App Service', FALSE, 2),
    ('ed22a1d0-304b-41e2-b00d-1a35a4ed67f2', '1c3cefc7-6125-4826-b532-70dc16a791e3', 'Azure Virtual Machines', TRUE, 3),
    ('b3b26874-a183-423e-b25d-13058a261917', '1c3cefc7-6125-4826-b532-70dc16a791e3', 'Azure Container Instances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d9d9c758-696e-4cfc-87b9-69f299d77661', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure service provides automatic scaling of virtual machines based on demand, using a set of identical VMs?',
        'Azure Virtual Machine Scale Sets let you create and manage a group of identical, load-balanced VMs that can automatically scale.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('af25314d-d6ec-4011-b458-dacc783a8e1d', 'd9d9c758-696e-4cfc-87b9-69f299d77661', 'Azure Availability Sets', FALSE, 1),
    ('8cc96c80-be8a-47f5-a5e0-566e61a55db2', 'd9d9c758-696e-4cfc-87b9-69f299d77661', 'Azure Virtual Machine Scale Sets', TRUE, 2),
    ('c2c304dc-f819-4f66-838e-96d6aac2145e', 'd9d9c758-696e-4cfc-87b9-69f299d77661', 'Azure Load Balancer', FALSE, 3),
    ('6d708841-bf00-47e4-857d-69d0d358eda2', 'd9d9c758-696e-4cfc-87b9-69f299d77661', 'Azure App Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a1ea00dd-8e3a-4f49-9403-4bd551470b52', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is the purpose of Azure Availability Sets?',
        'Availability Sets protect applications from VM failures by ensuring VMs are spread across fault domains (separate hardware racks) and update domains.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4ebad0df-9ca1-4e91-93ba-37bf0461cee1', 'a1ea00dd-8e3a-4f49-9403-4bd551470b52', 'To scale VMs automatically', FALSE, 1),
    ('9b725908-7020-4ca5-a8ec-539e30077888', 'a1ea00dd-8e3a-4f49-9403-4bd551470b52', 'To protect VMs from planned and unplanned maintenance by distributing them across fault domains and update domains', TRUE, 2),
    ('3ea8c2af-9400-40d8-b818-d12ff2fd13fe', 'a1ea00dd-8e3a-4f49-9403-4bd551470b52', 'To provide a load balancer for VMs', FALSE, 3),
    ('4439bf58-b666-4d7c-830f-ebad662ea2ed', 'a1ea00dd-8e3a-4f49-9403-4bd551470b52', 'To create containers', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b8e762c1-0b19-4b2c-af6b-b569af17179c', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure service is a PaaS offering for hosting web applications, REST APIs, and mobile backends without managing the underlying infrastructure?',
        'Azure App Service is a fully managed PaaS for building, deploying, and scaling web apps.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5135d65c-3476-4528-8dad-344a9c62c9e8', 'b8e762c1-0b19-4b2c-af6b-b569af17179c', 'Azure Virtual Machines', FALSE, 1),
    ('1ab80f94-bf9a-49dc-9c8c-35b8de2a0aeb', 'b8e762c1-0b19-4b2c-af6b-b569af17179c', 'Azure App Service', TRUE, 2),
    ('a5893404-b124-4abf-ab0c-b3c4e6e91f02', 'b8e762c1-0b19-4b2c-af6b-b569af17179c', 'Azure Container Instances', FALSE, 3),
    ('259ef12d-94d6-4ff9-9c13-2e88a8e2636e', 'b8e762c1-0b19-4b2c-af6b-b569af17179c', 'Azure Functions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d0f100c6-44b1-48e5-9bb7-e40cf0ed6b88', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure service is best for running serverless code triggered by events without managing any server infrastructure?',
        'Azure Functions is a serverless compute service that lets you run code on-demand, triggered by events, without provisioning servers.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b4dfe4c6-08af-4650-a3f5-5f9a49d0efde', 'd0f100c6-44b1-48e5-9bb7-e40cf0ed6b88', 'Azure Virtual Machines', FALSE, 1),
    ('d035da33-5fd3-4d0b-aa7a-4f904d7fb60d', 'd0f100c6-44b1-48e5-9bb7-e40cf0ed6b88', 'Azure App Service', FALSE, 2),
    ('4ac91156-8157-47a1-9999-f3e3cad9ac6e', 'd0f100c6-44b1-48e5-9bb7-e40cf0ed6b88', 'Azure Container Instances', FALSE, 3),
    ('244ecfac-e3e6-4eed-810c-95fec2f2ba8b', 'd0f100c6-44b1-48e5-9bb7-e40cf0ed6b88', 'Azure Functions', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9788905a-b6a7-4786-a6a6-0800f731430d', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is Azure Container Instances (ACI)?',
        'ACI is the fastest way to run a container in Azure — no VM management required, billed per second.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ed42ba85-f116-448c-90b0-e421e6858aa9', '9788905a-b6a7-4786-a6a6-0800f731430d', 'A full Kubernetes cluster service', FALSE, 1),
    ('cca4aa6d-419b-4145-89d4-3829731dfc30', '9788905a-b6a7-4786-a6a6-0800f731430d', 'A way to run containers on-demand without managing VMs or clusters', TRUE, 2),
    ('2de46c29-3dc4-4ce8-8978-ee0812a82e84', '9788905a-b6a7-4786-a6a6-0800f731430d', 'A service for creating container registries', FALSE, 3),
    ('690a1ba8-2cb9-42b3-9615-0fae90cd026c', '9788905a-b6a7-4786-a6a6-0800f731430d', 'A VM with containers pre-installed', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('49a3f756-6d63-4a0d-a1fd-ac919fabe80c', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure service provides a managed Kubernetes environment for deploying and managing containerized applications?',
        'Azure Kubernetes Service (AKS) is a managed Kubernetes offering that simplifies deploying and managing containerized apps.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2cf84bdd-8f76-49a5-94e6-d50974e7b780', '49a3f756-6d63-4a0d-a1fd-ac919fabe80c', 'Azure Container Instances', FALSE, 1),
    ('458cae15-dc40-4faa-b896-0667f0ec4626', '49a3f756-6d63-4a0d-a1fd-ac919fabe80c', 'Azure App Service', FALSE, 2),
    ('53dafac7-872d-4edf-9ff1-35e8e75b2195', '49a3f756-6d63-4a0d-a1fd-ac919fabe80c', 'Azure Kubernetes Service (AKS)', TRUE, 3),
    ('50141643-627b-4547-8003-1dc2f489915b', '49a3f756-6d63-4a0d-a1fd-ac919fabe80c', 'Azure Functions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('93b7f7c6-aaf1-421f-b0e8-c25ed0ba8899', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is Azure Virtual Desktop?',
        'Azure Virtual Desktop is a cloud-based desktop virtualization service that delivers virtual Windows desktops and apps.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c6d53438-a82c-4382-83e6-289e6a74b482', '93b7f7c6-aaf1-421f-b0e8-c25ed0ba8899', 'A physical desktop service', FALSE, 1),
    ('660fcfe6-b527-479e-b708-6b1e6a03b10c', '93b7f7c6-aaf1-421f-b0e8-c25ed0ba8899', 'A cloud-based desktop and app virtualization service', TRUE, 2),
    ('2d397a13-b744-419a-a345-dc96d0b65a32', '93b7f7c6-aaf1-421f-b0e8-c25ed0ba8899', 'A VM management tool', FALSE, 3),
    ('521e64f9-29db-46d9-9720-f297321cf34a', '93b7f7c6-aaf1-421f-b0e8-c25ed0ba8899', 'A gaming service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb10a9ea-7a00-4382-8cf3-c8dddc983a48', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure concept defines boundaries for Azure resources and is the highest level in the Azure hierarchy?',
        'Management Groups are the highest level in the Azure hierarchy, allowing you to manage multiple subscriptions with governance policies.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('56571730-3fdb-4c4c-90b9-b90b72241dde', 'cb10a9ea-7a00-4382-8cf3-c8dddc983a48', 'Resource Groups', FALSE, 1),
    ('c8f6aea6-5d44-40b7-902e-36bb1ddf964b', 'cb10a9ea-7a00-4382-8cf3-c8dddc983a48', 'Subscriptions', FALSE, 2),
    ('24682094-982d-4253-9890-51bae253434a', 'cb10a9ea-7a00-4382-8cf3-c8dddc983a48', 'Management Groups', TRUE, 3),
    ('5d8fb01c-974e-460e-b3ef-d926fd9530e5', 'cb10a9ea-7a00-4382-8cf3-c8dddc983a48', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('38273293-d47d-4e2a-bc2a-ebbe7ba13c71', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What does a fault domain in an Availability Set represent?',
        'A fault domain is a group of hardware (servers, switches, power) that could fail together. VMs in different fault domains won''t fail together.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8ff9f65-5950-4936-a1b5-cce930377774', '38273293-d47d-4e2a-bc2a-ebbe7ba13c71', 'A group of VMs sharing the same network', FALSE, 1),
    ('54d60f65-66c4-4582-be51-25e6bb0fd376', '38273293-d47d-4e2a-bc2a-ebbe7ba13c71', 'A rack of physical servers sharing the same power and network switch', TRUE, 2),
    ('1e20ef49-4954-4782-abae-456bf8f4d7ca', '38273293-d47d-4e2a-bc2a-ebbe7ba13c71', 'A software update group', FALSE, 3),
    ('79a127e1-337b-492a-8521-f1eb3d64a1d9', '38273293-d47d-4e2a-bc2a-ebbe7ba13c71', 'A virtual network boundary', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5a0b54a5-070d-4670-9a82-91352aac1c2f', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure service lets you run containers on-demand in a serverless manner, billed only for the time the container runs?',
        'Azure Container Instances (ACI) runs containers on-demand without managing VMs, with per-second billing — ideal for short tasks.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4b6e80a6-7fbd-4d3c-9a91-00678d8a0734', '5a0b54a5-070d-4670-9a82-91352aac1c2f', 'Azure Kubernetes Service', FALSE, 1),
    ('267038e9-9909-435c-9036-ceac4942cbe8', '5a0b54a5-070d-4670-9a82-91352aac1c2f', 'Azure Virtual Machines', FALSE, 2),
    ('30129883-3211-4aa5-b008-14e28fe41cae', '5a0b54a5-070d-4670-9a82-91352aac1c2f', 'Azure Container Instances', TRUE, 3),
    ('95741329-9b81-498a-9461-0703ed701a89', '5a0b54a5-070d-4670-9a82-91352aac1c2f', 'Azure App Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('85c3ffde-26eb-47a6-8d1c-11d753908d39', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure compute service is most appropriate for lift-and-shift migrations of on-premises workloads?',
        'Azure VMs are ideal for lift-and-shift — you can run the same OS and applications in the cloud with minimal changes.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('63c2a023-8355-4c74-9f0a-bebc27e17e97', '85c3ffde-26eb-47a6-8d1c-11d753908d39', 'Azure Functions', FALSE, 1),
    ('732dcf27-f629-4083-8d06-c233185598d2', '85c3ffde-26eb-47a6-8d1c-11d753908d39', 'Azure App Service', FALSE, 2),
    ('c8d7da29-ad06-4569-9754-6668484930ce', '85c3ffde-26eb-47a6-8d1c-11d753908d39', 'Azure Virtual Machines', TRUE, 3),
    ('793136fd-5b12-4a48-844c-82bc271b6d29', '85c3ffde-26eb-47a6-8d1c-11d753908d39', 'Azure Container Instances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4dc8073-e876-444c-b6ad-5e074070bbe8', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'What is the minimum number of Availability Zones per enabled region in Azure?',
        'Azure regions with Availability Zones have a minimum of three zones, each being a separate datacenter with independent infrastructure.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7c01a11e-5a88-4b86-b875-82ce0186c27e', 'a4dc8073-e876-444c-b6ad-5e074070bbe8', '1', FALSE, 1),
    ('8a685252-0ec8-4f5a-924f-ab827619b5bf', 'a4dc8073-e876-444c-b6ad-5e074070bbe8', '2', FALSE, 2),
    ('744a3b83-ec51-42b6-8da1-f12cb5abc46e', 'a4dc8073-e876-444c-b6ad-5e074070bbe8', '3', TRUE, 3),
    ('bb446718-3383-4aaf-aafc-add4a54a61c4', 'a4dc8073-e876-444c-b6ad-5e074070bbe8', '5', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('88e824f1-3e16-4f49-8402-22a9f59bbfe9', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure component acts as the top-level container for all other Azure resources?',
        'A Subscription is the billing and access boundary. Resources are deployed within subscriptions, which are organized under management groups.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6dabebd1-001c-4791-a9ed-d49708274281', '88e824f1-3e16-4f49-8402-22a9f59bbfe9', 'Resource Group', FALSE, 1),
    ('f41c10e1-ff23-4673-b8ea-c5405125034c', '88e824f1-3e16-4f49-8402-22a9f59bbfe9', 'Subscription', TRUE, 2),
    ('fe36e8ca-7e1d-41b9-b4ee-7f051a633449', '88e824f1-3e16-4f49-8402-22a9f59bbfe9', 'Management Group', FALSE, 3),
    ('334cb9ff-1108-420a-b67d-3174b68a97ac', '88e824f1-3e16-4f49-8402-22a9f59bbfe9', 'Azure Active Directory tenant', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8bcbe46b-7499-4cd7-9913-a0743e29d0b8', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company wants to run a containerized microservices application that needs orchestration, auto-healing, and scaling. Which service should they use?',
        'AKS provides managed Kubernetes with orchestration, auto-healing, horizontal scaling, and load balancing for containerized apps.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a7697113-136c-4be9-ab32-01ad7068c222', '8bcbe46b-7499-4cd7-9913-a0743e29d0b8', 'Azure Container Instances', FALSE, 1),
    ('952c037d-b2ff-4ee2-93d7-52830d07d9d7', '8bcbe46b-7499-4cd7-9913-a0743e29d0b8', 'Azure Functions', FALSE, 2),
    ('69311bca-a1b8-4799-8368-8c0b400bc2ba', '8bcbe46b-7499-4cd7-9913-a0743e29d0b8', 'Azure Kubernetes Service (AKS)', TRUE, 3),
    ('e2b86944-6e9e-4474-9e4b-e1b7e3d37d83', '8bcbe46b-7499-4cd7-9913-a0743e29d0b8', 'Azure App Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ead99c68-7c60-4aad-98ab-a9c43bb9420f', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Which Azure service allows you to run short, event-driven code snippets without provisioning or managing infrastructure, and charges only per execution?',
        'Azure Functions is serverless — it runs code triggered by events (HTTP, timer, queue) and charges per execution and duration.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1b661d8f-30dc-4b31-88d7-099f33884435', 'ead99c68-7c60-4aad-98ab-a9c43bb9420f', 'Azure Virtual Machines', FALSE, 1),
    ('555c850a-dbb6-4867-b648-470d054cd52e', 'ead99c68-7c60-4aad-98ab-a9c43bb9420f', 'Azure App Service', FALSE, 2),
    ('5f52bc86-dc34-43f8-b1aa-43b71ec0196a', 'ead99c68-7c60-4aad-98ab-a9c43bb9420f', 'Azure Functions', TRUE, 3),
    ('39ec5409-0be2-4914-a998-850a3ea1625d', 'ead99c68-7c60-4aad-98ab-a9c43bb9420f', 'Azure Kubernetes Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('16f8f955-c14f-4504-b9d0-b9942612cb2c', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'MULTIPLE_CHOICE', 'Which TWO statements about Azure Availability Zones are correct? (Choose 2)',
        'AZs are physically separate datacenters within a region (not across regions), protecting against single-datacenter failures.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fd171761-706e-4a19-a682-4e0ee017abea', '16f8f955-c14f-4504-b9d0-b9942612cb2c', 'They are physically separate datacenters within an Azure region', TRUE, 1),
    ('fdcf3d26-ad17-470b-8b35-7f0f10271479', '16f8f955-c14f-4504-b9d0-b9942612cb2c', 'They protect against entire region failures', FALSE, 2),
    ('925aaef1-1122-4d22-b291-ba548042e820', '16f8f955-c14f-4504-b9d0-b9942612cb2c', 'They protect against datacenter-level failures', TRUE, 3),
    ('95a86627-79a9-4e2a-b85c-2f32fc2ab487', '16f8f955-c14f-4504-b9d0-b9942612cb2c', 'They are available in every Azure region', FALSE, 4),
    ('631ad8ed-d586-4cc9-b590-273ad5c5a5ae', '16f8f955-c14f-4504-b9d0-b9942612cb2c', 'They require no additional configuration cost', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1ec39ab0-6f32-4a3d-aab1-d09936ef5d9e', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'MULTIPLE_CHOICE', 'Which TWO Azure services are considered serverless compute options? (Choose 2)',
        'Azure Functions (event-driven code) and Azure Container Instances (on-demand containers) are both serverless — no infrastructure management.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1dbe2381-9cbf-4755-9386-031ab68f7630', '1ec39ab0-6f32-4a3d-aab1-d09936ef5d9e', 'Azure Virtual Machines', FALSE, 1),
    ('13c68978-70a5-4329-860c-57716ba786fa', '1ec39ab0-6f32-4a3d-aab1-d09936ef5d9e', 'Azure Functions', TRUE, 2),
    ('a12de3b8-7078-4bbf-b314-de3a697f422c', '1ec39ab0-6f32-4a3d-aab1-d09936ef5d9e', 'Azure Container Instances', TRUE, 3),
    ('efc5eb1f-3052-4e68-aaa6-19be3a55e05b', '1ec39ab0-6f32-4a3d-aab1-d09936ef5d9e', 'Azure Kubernetes Service', FALSE, 4),
    ('a6fd852c-c63f-4510-a1ed-2d272b0d1a1d', '1ec39ab0-6f32-4a3d-aab1-d09936ef5d9e', 'Azure App Service Plan (Dedicated)', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('abdc4601-2aae-4139-97c3-769f698c8d31', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'MULTIPLE_CHOICE', 'Which TWO are correct statements about Azure Resource Groups? (Choose 2)',
        'You can delete all resources in a group at once; resources can be moved between groups. A resource belongs to exactly one group.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('253d8a24-7d39-4045-9210-b82380004a48', 'abdc4601-2aae-4139-97c3-769f698c8d31', 'A resource can exist in multiple resource groups simultaneously', FALSE, 1),
    ('9a9512d1-9b6c-4719-86e2-b668effcc0db', 'abdc4601-2aae-4139-97c3-769f698c8d31', 'All resources in a group can be deleted at once', TRUE, 2),
    ('4f096e37-a425-457e-b568-3ba2aaf869f2', 'abdc4601-2aae-4139-97c3-769f698c8d31', 'A resource group can span multiple Azure regions', FALSE, 3),
    ('6ef56cd9-8f46-4bd7-8864-5824813bf014', 'abdc4601-2aae-4139-97c3-769f698c8d31', 'Resource groups have their own billing', FALSE, 4),
    ('a929a25e-844b-407c-b544-82ac6f4e9cfb', 'abdc4601-2aae-4139-97c3-769f698c8d31', 'Resources can be moved between resource groups', TRUE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a2680604-5db2-413c-9c9e-2344d6b3b0bf', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'MULTIPLE_CHOICE', 'Which TWO Azure services help ensure VM availability during planned maintenance? (Choose 2)',
        'VM Scale Sets and Availability Sets both distribute VMs across update domains so that not all VMs restart during planned maintenance.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d91f19a7-7e65-4e17-b68c-f523d6f9de46', 'a2680604-5db2-413c-9c9e-2344d6b3b0bf', 'Azure Virtual Machine Scale Sets', TRUE, 1),
    ('35e9a1ed-004e-41c1-8781-313d78758af1', 'a2680604-5db2-413c-9c9e-2344d6b3b0bf', 'Azure Availability Sets', TRUE, 2),
    ('1c4f3afb-b73f-4417-a892-0a878509c855', 'a2680604-5db2-413c-9c9e-2344d6b3b0bf', 'Azure Load Balancer', FALSE, 3),
    ('b37a7a37-9bd2-482f-a95a-0001f4d83e40', 'a2680604-5db2-413c-9c9e-2344d6b3b0bf', 'Azure ExpressRoute', FALSE, 4),
    ('cf29ccdd-884c-4004-a783-ccbec623ce7f', 'a2680604-5db2-413c-9c9e-2344d6b3b0bf', 'Azure DNS', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d37e2f78-6339-445b-a369-276febd00361', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'MULTIPLE_CHOICE', 'Which TWO are correct about Azure Management Groups? (Choose 2)',
        'Management Groups sit above subscriptions in the hierarchy and allow applying governance policies and RBAC across multiple subscriptions.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('564a458e-4b5f-42b0-96a3-d29741ffc7b9', 'd37e2f78-6339-445b-a369-276febd00361', 'They can contain only resource groups', FALSE, 1),
    ('31da6413-31e1-4f31-8357-df76137f3a54', 'd37e2f78-6339-445b-a369-276febd00361', 'They allow applying policies across multiple subscriptions', TRUE, 2),
    ('cebd40c0-3e16-47c8-82fb-a74d5a136ba3', 'd37e2f78-6339-445b-a369-276febd00361', 'They represent a billing boundary', FALSE, 3),
    ('d7f98f86-7ed5-44ad-ae0f-313fc9a59878', 'd37e2f78-6339-445b-a369-276febd00361', 'They are at the top of the Azure hierarchy above subscriptions', TRUE, 4),
    ('c217a108-dc69-429d-ba68-bffc7102d350', 'd37e2f78-6339-445b-a369-276febd00361', 'They replace Azure Active Directory', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('417342f7-03a6-480b-87e6-7e8f9b156e2e', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'TRUE_FALSE', 'Azure Regions are always located in the same country as the resources they host.',
        'Azure regions span the globe. Data residency rules may apply, but a region''s physical location is what determines data sovereignty.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('38bc59c0-7f72-40b3-a878-2956631ade65', '417342f7-03a6-480b-87e6-7e8f9b156e2e', 'True', FALSE, 1),
    ('334b5783-48b7-45d6-bf96-7d7e122bb8d9', '417342f7-03a6-480b-87e6-7e8f9b156e2e', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7506e805-740a-438f-bba6-6156ba5411d3', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'TRUE_FALSE', 'Azure Functions supports automatic scaling without the need to manage virtual machines.',
        'Azure Functions is a serverless service — it automatically scales based on demand, and you don''t manage any VMs.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('89572211-ea41-4b6b-8715-7ee84d356bb9', '7506e805-740a-438f-bba6-6156ba5411d3', 'True', TRUE, 1),
    ('1d04f22c-2018-49a0-bc74-b8363e5d7888', '7506e805-740a-438f-bba6-6156ba5411d3', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3c15430a-8d28-431d-849f-d30365d41f3a', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'TRUE_FALSE', 'A single Azure Resource Group can contain resources from multiple Azure regions.',
        'While a resource group has its own region (for metadata), the resources inside it can be in any Azure region.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bb784e49-7dd1-440b-80c8-bf5004840c05', '3c15430a-8d28-431d-849f-d30365d41f3a', 'True', TRUE, 1),
    ('db85dcaf-5979-4635-96a2-891a265302c6', '3c15430a-8d28-431d-849f-d30365d41f3a', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('038d7567-2f99-44e5-b498-55044a70d2ff', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'TRUE_FALSE', 'Azure Availability Sets protect against the failure of an entire Azure region.',
        'Availability Sets protect against individual hardware failures within a single datacenter. For region-level protection, use Availability Zones or paired regions.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2654a373-0e93-4c1f-8fa2-dcd7fb9cc0c0', '038d7567-2f99-44e5-b498-55044a70d2ff', 'True', FALSE, 1),
    ('7503ace4-0a73-42f0-bea5-61f2645829de', '038d7567-2f99-44e5-b498-55044a70d2ff', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('27dde396-a367-4e90-8f90-0b7824fea53c', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'TRUE_FALSE', 'Azure App Service is classified as a Platform as a Service (PaaS) offering.',
        'Azure App Service is PaaS — Microsoft manages the underlying infrastructure while developers focus on the application code.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('713c89ac-a498-4229-be93-9f07b575aef8', '27dde396-a367-4e90-8f90-0b7824fea53c', 'True', TRUE, 1),
    ('91546c55-a193-4a0c-b4ea-e7096d98c4a3', '27dde396-a367-4e90-8f90-0b7824fea53c', 'False', FALSE, 2);

-- Scenario questions (answers derived from AZ-900 fundamentals, see note above)
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c1753b59-dc28-4f06-ae6b-e868b2657cad', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company is deploying a business-critical application on Azure Virtual Machines. They need to protect the application from physical hardware failures (rack-level) within a single Azure datacenter, while keeping all VMs in the same region. The solution must meet the following requirements: - Protection against rack-level hardware failures. - Planned maintenance should not take all VMs offline simultaneously. - All VMs must remain in the same Azure region. Which Azure feature should they configure?',
        'Availability Sets protect VMs from rack-level hardware failures (fault domains) and planned maintenance (update domains) within the same region.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7d4ac5ba-63b0-401a-8e3b-339090ad11f9', 'c1753b59-dc28-4f06-ae6b-e868b2657cad', 'Azure Availability Zones', FALSE, 1),
    ('e833b850-94dd-4286-be2b-dc248ee06b63', 'c1753b59-dc28-4f06-ae6b-e868b2657cad', 'Azure Availability Sets', TRUE, 2),
    ('b26fc917-688d-4959-bd01-db2b7bcc9441', 'c1753b59-dc28-4f06-ae6b-e868b2657cad', 'Azure Virtual Machine Scale Sets', FALSE, 3),
    ('11cff726-adb1-47c9-801f-b6e9ea2aee92', 'c1753b59-dc28-4f06-ae6b-e868b2657cad', 'Azure Region Pairs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('85a66bab-bb68-4309-9673-2fe0e769fe1d', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A financial services company is deploying an application across Azure Virtual Machines. They require protection against the complete failure of an entire Azure datacenter. The application must continue to run even if one of the physical datacenters in the region becomes unavailable. The solution must meet the following requirements: - Protection against entire datacenter failure. - Application must survive a full datacenter outage. - Resources must stay within the same Azure region. Which Azure feature should they use?',
        'Availability Zones are physically separate datacenters within a region, protecting against a full datacenter failure while staying in the same region.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('885f1952-459a-4fe2-ad0d-9ed04a7c3b58', '85a66bab-bb68-4309-9673-2fe0e769fe1d', 'Azure Availability Sets', FALSE, 1),
    ('8bfb6a33-0739-431b-a493-96525e5f1d1f', '85a66bab-bb68-4309-9673-2fe0e769fe1d', 'Azure Availability Zones', TRUE, 2),
    ('ee9d47e3-bbf2-422e-9597-82289629fd38', '85a66bab-bb68-4309-9673-2fe0e769fe1d', 'Azure Region Pairs', FALSE, 3),
    ('e76c0882-1caa-4fa1-8076-0cf281df4285', '85a66bab-bb68-4309-9673-2fe0e769fe1d', 'Azure Virtual Machine Scale Sets', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4dd67c12-ba2c-4370-bbbd-8ee5d7791f60', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'Your developers have created 10 web applications that must be hosted on Azure. You need to determine which Azure web tier plan to host the web apps. The web tier plan must meet the following requirements: - The web apps will use custom domains. - The web apps each require 10 GB of storage. - The web apps must each run in dedicated compute instances. - Load balancing between instances must be included. - Costs must be minimized. Which web tier plan should you use?',
        'The Basic tier supports custom domains, dedicated compute instances, and load balancing across instances at a lower cost than Standard.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1e948d25-e026-4ba7-bdce-ac47153e0da8', '4dd67c12-ba2c-4370-bbbd-8ee5d7791f60', 'Standard', FALSE, 1),
    ('a050edee-8c3a-4188-8356-8fb10167259a', '4dd67c12-ba2c-4370-bbbd-8ee5d7791f60', 'Basic', TRUE, 2),
    ('019ac7e9-b005-49eb-a18b-c7225dcf4d5b', '4dd67c12-ba2c-4370-bbbd-8ee5d7791f60', 'Free', FALSE, 3),
    ('d656c504-22f4-4bf3-816f-93b63285260a', '4dd67c12-ba2c-4370-bbbd-8ee5d7791f60', 'Shared', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('38dfde96-4276-408c-8aea-4b6a4107380f', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company is building a new application that processes customer images uploaded to Azure Blob Storage. Each time a new image is uploaded, a resize operation must be triggered automatically. The operation takes approximately 2 seconds. The team expects up to 500 uploads per day. The solution must meet the following requirements: - Processing must trigger automatically on each new upload. - No server management required. - Minimize cost — pay only for processing time. Which Azure compute service should they use?',
        'Azure Functions triggers automatically on Blob upload events, requires no server management, and bills only for execution time - ideal for short, event-driven tasks.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60f1151b-d837-4b22-9983-cfabc3659f11', '38dfde96-4276-408c-8aea-4b6a4107380f', 'Azure Virtual Machines', FALSE, 1),
    ('14506899-f298-47ad-84de-180935e46649', '38dfde96-4276-408c-8aea-4b6a4107380f', 'Azure App Service', FALSE, 2),
    ('429b03ff-8d9c-4daf-aac8-193552b48b6e', '38dfde96-4276-408c-8aea-4b6a4107380f', 'Azure Kubernetes Service', FALSE, 3),
    ('9fbd8ea0-3aa5-40e3-98a2-86e23ac73a06', '38dfde96-4276-408c-8aea-4b6a4107380f', 'Azure Functions', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('14ec6f98-6a94-4f52-8fb9-b5111d8dd73d', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A retail company is planning their Azure environment. They have three separate business units: Finance, HR, and Operations. Each unit must have its own separate billing statement, and IT administrators of one unit must not have access to the resources of another unit. The solution must meet the following requirements: - Separate billing per business unit. - Isolated access control per unit. - All under the same corporate Azure account. What is the recommended Azure structure?',
        'Separate subscriptions provide independent billing and isolated access control per business unit, while remaining under the same Azure account.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('676b1528-0118-4e88-b597-40659a5f1851', '14ec6f98-6a94-4f52-8fb9-b5111d8dd73d', 'One subscription with three separate resource groups', FALSE, 1),
    ('e6681bbc-5b85-4a25-9390-9ce45c21433c', '14ec6f98-6a94-4f52-8fb9-b5111d8dd73d', 'Three separate subscriptions, one per business unit', TRUE, 2),
    ('54d29551-1841-442a-9c14-1f68d10f45dd', '14ec6f98-6a94-4f52-8fb9-b5111d8dd73d', 'One resource group with three virtual networks', FALSE, 3),
    ('783bb947-a4f9-4e5b-9d16-87e961a1547a', '14ec6f98-6a94-4f52-8fb9-b5111d8dd73d', 'Three management groups with a single subscription', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2b22299c-5547-407b-82f9-149b58c2d4fd', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company runs a containerized e-commerce platform consisting of 15 microservices. The platform requires automatic scaling, automatic restarts of failed containers (self-healing), rolling deployments with zero downtime, and service discovery between microservices. The solution must meet the following requirements: - Container orchestration with auto-scaling. - Self-healing for failed containers. - Rolling updates with zero downtime. - Service discovery between containers. Which Azure service should they use?',
        'AKS provides container orchestration with auto-scaling, self-healing, rolling updates, and built-in service discovery for microservices.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6bc70fce-3b0d-4d9b-b2f4-25e5025542ce', '2b22299c-5547-407b-82f9-149b58c2d4fd', 'Azure Container Instances (ACI)', FALSE, 1),
    ('b45e5001-3051-4791-9558-0a8ac2cace25', '2b22299c-5547-407b-82f9-149b58c2d4fd', 'Azure App Service', FALSE, 2),
    ('9d904cdc-7646-4863-9d77-7160df3147c5', '2b22299c-5547-407b-82f9-149b58c2d4fd', 'Azure Kubernetes Service (AKS)', TRUE, 3),
    ('2c0d6733-a7d6-47fd-9104-66c0bc697b34', '2b22299c-5547-407b-82f9-149b58c2d4fd', 'Azure Functions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2514b785-5801-43cb-938d-da3d73b961e0', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A data science team needs to run a containerized machine learning training job on Azure. The job runs once per night, takes approximately 45 minutes, and produces a trained model file. No persistent cluster is needed. Costs must be minimized. The solution must meet the following requirements: - Run a single container on-demand. - No cluster or VM management. - Pay only for the duration of the job. - No long-running infrastructure. Which Azure service is most appropriate?',
        'Azure Container Instances runs a single container on-demand with per-second billing and no cluster or VM management, ideal for a one-off nightly job.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3952b9b2-3b5d-4aa3-9c68-196e12011c2f', '2514b785-5801-43cb-938d-da3d73b961e0', 'Azure Kubernetes Service', FALSE, 1),
    ('fa6c4171-2be2-4a7e-9b3d-171bc8f921f9', '2514b785-5801-43cb-938d-da3d73b961e0', 'Azure Virtual Machines', FALSE, 2),
    ('1a8bb858-1539-4200-a02e-9053ba3473f8', '2514b785-5801-43cb-938d-da3d73b961e0', 'Azure Container Instances', TRUE, 3),
    ('1a1e67c9-5c0d-4d9c-91c1-c2a48a6bfc5f', '2514b785-5801-43cb-938d-da3d73b961e0', 'Azure App Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('76c13e81-2e49-492e-b9b3-85aa56589b15', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company has 50 Azure subscriptions spread across different departments and regions. The CISO needs to enforce a security policy that prevents any resource from being deployed outside of the EU, across ALL 50 subscriptions, in a single operation. The solution must meet the following requirements: - Apply governance to all 50 subscriptions simultaneously. - Enforce region restriction across all subscriptions. - Single point of policy management. Which Azure construct should the CISO use?',
        'A Management Group with Azure Policy lets you enforce governance rules across many subscriptions from a single point of management.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('469aadca-1ff0-4c71-879a-2d0c4ab3341b', '76c13e81-2e49-492e-b9b3-85aa56589b15', 'Azure Policy applied to each subscription individually', FALSE, 1),
    ('b403a677-2344-422c-9c9e-2a92373fc38e', '76c13e81-2e49-492e-b9b3-85aa56589b15', 'A Management Group with Azure Policy', TRUE, 2),
    ('883d7400-52d7-4327-a517-6aab6e318908', '76c13e81-2e49-492e-b9b3-85aa56589b15', 'Resource Groups with naming conventions', FALSE, 3),
    ('f1ee0580-a3f1-460c-bc7c-ce58780cc11b', '76c13e81-2e49-492e-b9b3-85aa56589b15', 'Azure RBAC at the subscription level', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('14eee886-6e21-4361-8c59-2284dbeef95e', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company is migrating a Windows Server 2012 application to Azure. The application requires a specific registry configuration, a custom IIS module, and a legacy COM component. The team wants to minimize changes to the application. The solution must meet the following requirements: - Full control over the OS and installed components. - Custom Windows configuration required. - Minimal changes to the existing application. Which Azure service should they use for this lift-and-shift migration?',
        'Azure Virtual Machines (IaaS) give full control over the OS and installed components, making them the right choice for a lift-and-shift of a legacy app.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('288ba6f3-f4e4-4bd7-95ac-a3ac686fd00e', '14eee886-6e21-4361-8c59-2284dbeef95e', 'Azure App Service', FALSE, 1),
    ('88bde793-e2c2-45a3-bad2-4a93c05c87eb', '14eee886-6e21-4361-8c59-2284dbeef95e', 'Azure Functions', FALSE, 2),
    ('b44cc976-4de1-4f1a-8d3d-4bbe15c83600', '14eee886-6e21-4361-8c59-2284dbeef95e', 'Azure Container Instances', FALSE, 3),
    ('70e9c7f6-66c9-4135-9660-011a8667b4f2', '14eee886-6e21-4361-8c59-2284dbeef95e', 'Azure Virtual Machines', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8c3c8dbf-ea3f-4607-9029-f99598b02ff5', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company needs to deploy 100 identical web server VMs that can scale out automatically when CPU usage exceeds 75%, and scale back in when it drops below 30%. The VMs must be distributed across multiple fault domains for high availability. The solution must meet the following requirements: - Identical VM configuration across all instances. - Automatic scale-out on high CPU. - Automatic scale-in on low CPU. - High availability across fault domains. Which Azure service should they deploy?',
        'Azure Virtual Machine Scale Sets manage identical VMs with automatic scale-out/in based on metrics and distribute them across fault domains.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('47096187-649a-4e46-a74e-9c5de44a4912', '8c3c8dbf-ea3f-4607-9029-f99598b02ff5', 'Azure Availability Sets', FALSE, 1),
    ('aba2e16b-f2fc-4548-8686-a66d8cfe63bf', '8c3c8dbf-ea3f-4607-9029-f99598b02ff5', 'Azure Availability Zones', FALSE, 2),
    ('3319563e-7949-4fe3-8bae-df572c506621', '8c3c8dbf-ea3f-4607-9029-f99598b02ff5', 'Azure Virtual Machine Scale Sets', TRUE, 3),
    ('772a3622-96bc-4be9-bdef-961b1aef72f8', '8c3c8dbf-ea3f-4607-9029-f99598b02ff5', 'Azure App Service with auto-scaling', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('85f167db-a9b4-4e2f-bbbb-f74d7e28da1d', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company is designing their Azure subscription structure. They want to apply a cost management policy and a security baseline policy across all subscriptions without repeating the configuration in each one. They have 3 departments with 4 subscriptions each. The solution must meet the following requirements: - 12 subscriptions total. - Consistent policy applied to all without repetition. - Policies must be inherited automatically by new subscriptions. What should they create to manage this at scale?',
        'A Management Group lets you apply policies once and have them automatically inherited by all subscriptions underneath, including new ones.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('de9c24e4-934d-454b-806c-e6c5b4483b46', '85f167db-a9b4-4e2f-bbbb-f74d7e28da1d', 'One resource group per department', FALSE, 1),
    ('f209890f-68d5-4d9c-baa3-8eb824b3d756', '85f167db-a9b4-4e2f-bbbb-f74d7e28da1d', 'One Management Group with the policies applied at that level', TRUE, 2),
    ('80f339fa-6ddf-426b-9373-0ea9426db041', '85f167db-a9b4-4e2f-bbbb-f74d7e28da1d', 'Apply policies to each of the 12 subscriptions individually', FALSE, 3),
    ('9d3631cf-cb45-4cdd-81b5-0602c34ae5b0', '85f167db-a9b4-4e2f-bbbb-f74d7e28da1d', 'Create one subscription with 12 resource groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7f205cb5-aa47-427d-81cf-8843dedc87a8', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company wants to provide its employees with access to a full Windows 11 desktop from any device (personal laptops, tablets, smartphones) worldwide. The desktop environment must be hosted in Azure and managed centrally by IT. No physical desktops should be purchased. The solution must meet the following requirements: - Windows desktop experience from any device. - Centrally managed by IT. - Hosted in Azure — no physical hardware. Which Azure service should they use?',
        'Azure Virtual Desktop delivers a full, centrally managed Windows desktop from Azure to any device, with no physical hardware required.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1625affd-d285-48ed-af6a-52acd29a30c8', '7f205cb5-aa47-427d-81cf-8843dedc87a8', 'Azure Virtual Machines (Windows)', FALSE, 1),
    ('4667714c-f58f-4efe-b969-8bd4a1cb5da8', '7f205cb5-aa47-427d-81cf-8843dedc87a8', 'Azure App Service', FALSE, 2),
    ('02dce89a-c5e5-4f8b-b177-16d0b652d5bc', '7f205cb5-aa47-427d-81cf-8843dedc87a8', 'Azure Virtual Desktop', TRUE, 3),
    ('8c5cf4ab-2f5f-407f-9018-cb8a785382a6', '7f205cb5-aa47-427d-81cf-8843dedc87a8', 'Azure Container Instances', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8fff44fc-f997-4a82-af60-5afc5e64a23c', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'An organization is deploying a web application using Azure App Service. The IT team asks whether they need to manage the underlying operating system, apply security patches, or configure the web server runtime. Which statement correctly describes Azure App Service''s responsibility model?',
        'Azure App Service is PaaS: Microsoft manages the OS, runtime, and infrastructure while the customer manages only the application code and data.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2bb9afcc-8a2e-45d5-81fa-00d989e89c4e', '8fff44fc-f997-4a82-af60-5afc5e64a23c', 'The customer manages the OS, and Microsoft manages the application code', FALSE, 1),
    ('c1170db0-277a-453c-91e2-704c1c271ea7', '8fff44fc-f997-4a82-af60-5afc5e64a23c', 'Microsoft manages the OS, runtime, and infrastructure; the customer manages the application code and data', TRUE, 2),
    ('9d773373-c485-45c7-98e5-44db2684395a', '8fff44fc-f997-4a82-af60-5afc5e64a23c', 'The customer manages everything including the physical hardware', FALSE, 3),
    ('14620b6b-41fe-430b-84ba-3e4db28f4cf9', '8fff44fc-f997-4a82-af60-5afc5e64a23c', 'Both Microsoft and the customer share OS management responsibilities equally', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1930a6e8-c53f-438d-b4e6-4ac9af8a7e44', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A company in France must ensure that all Azure resources storing customer data comply with French data sovereignty laws. Customer data must not be replicated or processed outside of France. Which Azure concept ensures this? The solution must meet the following requirements: - Data must remain within French territory. - Compliance with French data sovereignty laws. - Resources must be deployed in France only. Which Azure concept addresses this requirement?',
        'Choosing the Azure region determines where resources and data physically reside, which is what satisfies data sovereignty requirements.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ac04fa26-207c-4663-a124-490c39c334d1', '1930a6e8-c53f-438d-b4e6-4ac9af8a7e44', 'Azure Availability Zones', FALSE, 1),
    ('2fb3c7e1-e66b-4e72-bc9b-f17f539a3d72', '1930a6e8-c53f-438d-b4e6-4ac9af8a7e44', 'Azure Regions', TRUE, 2),
    ('7763ae33-4b03-44db-aa2b-d000d4e5acfa', '1930a6e8-c53f-438d-b4e6-4ac9af8a7e44', 'Azure Resource Groups', FALSE, 3),
    ('529ee343-37a8-4b59-81a3-dbb7d2324a9c', '1930a6e8-c53f-438d-b4e6-4ac9af8a7e44', 'Azure Management Groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bc59b210-3ab0-48f5-bf4a-d2fe362d0330', 'aaa4930b-0482-4e1d-865f-e0e0d21b07d9', 'SINGLE_CHOICE', 'A development team needs to quickly run a Docker container to test a new microservice. The test will take approximately 15 minutes. After testing, the container should be destroyed. The team does not want to manage any Kubernetes cluster or virtual machines. The solution must meet the following requirements: - Run a single container quickly. - No VM or cluster management. - Destroy after 15 minutes. - Minimal setup time. Which Azure service is most appropriate? ✅  End of scenario questions — Give this document to your trainer for correction. Your trainer will provide answer explanations and discuss common mistakes from this module.',
        'Azure Container Instances lets you quickly run and destroy a single container without provisioning a VM or Kubernetes cluster.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4df65bfa-7942-4a73-bfb2-d386602ce413', 'bc59b210-3ab0-48f5-bf4a-d2fe362d0330', 'Azure Kubernetes Service', FALSE, 1),
    ('3cc7efbd-3528-465b-9736-1b8081d65a61', 'bc59b210-3ab0-48f5-bf4a-d2fe362d0330', 'Azure Virtual Machines with Docker', FALSE, 2),
    ('bdc3c6e4-4506-4d5c-90d5-e865ff622493', 'bc59b210-3ab0-48f5-bf4a-d2fe362d0330', 'Azure App Service with containers', FALSE, 3),
    ('75441d7d-42c2-402d-8040-ec8a3c7d0b66', 'bc59b210-3ab0-48f5-bf4a-d2fe362d0330', 'Azure Container Instances', TRUE, 4);

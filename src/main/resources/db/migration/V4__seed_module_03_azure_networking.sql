-- Module 3 - Azure Networking (real AZ-900 content)
-- Standard questions + explanations sourced from AZ900_ANSWER_KEY_Formateur.docx
-- Scenario questions sourced from Module_03_Scenarios_AZ900.docx; that document has no
-- written answer key (trainer corrects live), so their correct answers/explanations were
-- determined from AZ-900 fundamentals rather than copied from an official source - please
-- give them a quick review.

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('468962a7-34b1-45ee-8af8-4169ee32584b', '00000000-0000-0000-0000-000000000001', 'module-03-azure-networking', 'Module 3 - Azure Networking',
        'Virtual Networks, VPN Gateway, ExpressRoute, DNS, Load Balancer, Application Gateway.', 3);

-- Standard MCQ / True-False questions
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('20ea9071-b2ee-4205-880d-8ed446e3417c', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is an Azure Virtual Network (VNet)?',
        'An Azure VNet is a logically isolated private network in the cloud that allows Azure resources to communicate securely with each other, the internet, and on-premises networks.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('455b8350-c045-469e-8b30-3c0824538e7d', '20ea9071-b2ee-4205-880d-8ed446e3417c', 'A physical network switch in Azure', FALSE, 1),
    ('4549657f-f910-4a02-853f-f912463745bc', '20ea9071-b2ee-4205-880d-8ed446e3417c', 'A logically isolated network in Azure that allows Azure resources to communicate securely', TRUE, 2),
    ('3983276d-76e4-4fd6-aaa4-8cfee4684ce3', '20ea9071-b2ee-4205-880d-8ed446e3417c', 'A DNS management service', FALSE, 3),
    ('c7f14d04-9625-40b5-b369-e7ed7bb3efbf', '20ea9071-b2ee-4205-880d-8ed446e3417c', 'A content delivery network', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c1da865a-4a81-4993-b5f3-7e24bcd50815', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is the purpose of Azure VPN Gateway?',
        'Azure VPN Gateway sends encrypted traffic between Azure VNets and on-premises locations over the public internet using IPsec/IKE VPN.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c99b68bd-f06f-460f-bd4f-3327bc00a92d', 'c1da865a-4a81-4993-b5f3-7e24bcd50815', 'To deliver content faster across the globe', FALSE, 1),
    ('cbdba396-7a5f-47ed-b166-ac161b62f8c4', 'c1da865a-4a81-4993-b5f3-7e24bcd50815', 'To send encrypted traffic between Azure virtual networks and on-premises networks over the public internet', TRUE, 2),
    ('f46e9aa8-020f-4281-b6e0-32923e9c3b36', 'c1da865a-4a81-4993-b5f3-7e24bcd50815', 'To balance traffic across web servers', FALSE, 3),
    ('1d52d418-077f-4751-a973-15f41b1bc21a', 'c1da865a-4a81-4993-b5f3-7e24bcd50815', 'To manage DNS records', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ca649b36-570e-45cf-a505-f955dcc1a791', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which Azure networking service provides a private, dedicated connection between an on-premises network and Azure without using the public internet?',
        'Azure ExpressRoute creates private connections to Azure through a connectivity provider, bypassing the public internet for more reliability and speed.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('739d5f0a-6e30-4ef7-93ec-7ab6568a6bf3', 'ca649b36-570e-45cf-a505-f955dcc1a791', 'Azure VPN Gateway', FALSE, 1),
    ('f54eec37-8840-4d63-9914-e1c8639c1833', 'ca649b36-570e-45cf-a505-f955dcc1a791', 'Azure Load Balancer', FALSE, 2),
    ('a002fadf-ffc4-48eb-807b-52ab445b6e92', 'ca649b36-570e-45cf-a505-f955dcc1a791', 'Azure ExpressRoute', TRUE, 3),
    ('89ff8b06-40de-4655-8c37-ce94c3bff17c', 'ca649b36-570e-45cf-a505-f955dcc1a791', 'Azure Application Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2d09386-5c1d-49a5-b993-0cec9f5a3b58', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What does Azure DNS provide?',
        'Azure DNS allows you to host your DNS zones and manage your DNS records using Azure infrastructure.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('febf62e4-3e4b-4645-8080-30eb274f1270', 'b2d09386-5c1d-49a5-b993-0cec9f5a3b58', 'Virtual private network tunnels', FALSE, 1),
    ('5c54e30a-f3da-4e58-b7b4-18f8878f6e60', 'b2d09386-5c1d-49a5-b993-0cec9f5a3b58', 'Hosting for DNS domains and resolving names to IP addresses', TRUE, 2),
    ('6cf8f038-a81e-415b-9621-b2a1b118d284', 'b2d09386-5c1d-49a5-b993-0cec9f5a3b58', 'Load balancing for web applications', FALSE, 3),
    ('e98e0808-6005-41d1-87eb-223987bd64ab', 'b2d09386-5c1d-49a5-b993-0cec9f5a3b58', 'Content caching for web content', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1876e223-f6fd-4f00-b3e5-83d46268c121', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which Azure service distributes incoming network traffic across multiple backend servers to ensure availability and reliability?',
        'Azure Load Balancer distributes inbound traffic across multiple VMs at the network layer (Layer 4 — TCP/UDP).', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ac4b5abf-9c90-4c3b-9ecc-49a3ba1da36b', '1876e223-f6fd-4f00-b3e5-83d46268c121', 'Azure Application Gateway', FALSE, 1),
    ('72d5122d-1238-49b9-9482-65765e708527', '1876e223-f6fd-4f00-b3e5-83d46268c121', 'Azure Load Balancer', TRUE, 2),
    ('d77c56c2-25ce-4fe7-ad5a-f6f7575e0e32', '1876e223-f6fd-4f00-b3e5-83d46268c121', 'Azure VPN Gateway', FALSE, 3),
    ('f3d5c16e-ccf7-4458-8582-59cca4451d69', '1876e223-f6fd-4f00-b3e5-83d46268c121', 'Azure ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67176595-8ee1-4cd4-93c6-7900d0cecd5e', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is the key difference between Azure Load Balancer and Azure Application Gateway?',
        'Azure Load Balancer operates at Layer 4 (transport layer), while Application Gateway operates at Layer 7 (application layer) and supports HTTP features like path-based routing and SSL termination.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7872287c-7ee0-407d-887b-9393d7530a0a', '67176595-8ee1-4cd4-93c6-7900d0cecd5e', 'Load Balancer works at Layer 7 (HTTP), Application Gateway at Layer 4 (TCP/UDP)', FALSE, 1),
    ('a2548a0b-153b-4f5a-ac4a-20268313146e', '67176595-8ee1-4cd4-93c6-7900d0cecd5e', 'Load Balancer works at Layer 4 (TCP/UDP), Application Gateway at Layer 7 (HTTP/HTTPS)', TRUE, 2),
    ('2af83986-6fdc-4987-8ac4-e4c9f6a610be', '67176595-8ee1-4cd4-93c6-7900d0cecd5e', 'They perform the same functions', FALSE, 3),
    ('e8bdd2ba-dd09-48b7-b5aa-00cd03d20cce', '67176595-8ee1-4cd4-93c6-7900d0cecd5e', 'Application Gateway is only for internal traffic', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9f686c21-6049-4a99-bec8-8dada038e2a0', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is a Network Security Group (NSG) in Azure?',
        'NSGs contain security rules that allow or deny network traffic based on source/destination IP, port, and protocol.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7d8adfa4-32f6-418c-9981-385ba350e908', '9f686c21-6049-4a99-bec8-8dada038e2a0', 'A group of virtual machines sharing the same network', FALSE, 1),
    ('ea42cf48-975c-41d3-9049-a9be08ce8286', '9f686c21-6049-4a99-bec8-8dada038e2a0', 'A filtering mechanism that controls inbound and outbound network traffic using security rules', TRUE, 2),
    ('5a0f7e4d-b6ac-45e6-be67-2305b98b2209', '9f686c21-6049-4a99-bec8-8dada038e2a0', 'A type of VPN connection', FALSE, 3),
    ('8826d09d-47ef-4ae5-8ec3-2af79b390d67', '9f686c21-6049-4a99-bec8-8dada038e2a0', 'A private DNS zone', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fb36f803-9c0f-498b-b458-8fd1aad8915c', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is Azure VNet Peering?',
        'VNet Peering connects two Azure VNets so that resources communicate directly using private IP addresses without going through the internet.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4a50bbd4-4cb7-46aa-8bd9-850bd9aad9e2', 'fb36f803-9c0f-498b-b458-8fd1aad8915c', 'Connecting two VNets to the internet', FALSE, 1),
    ('b9e29443-d354-4f6d-a76a-2e565132a125', 'fb36f803-9c0f-498b-b458-8fd1aad8915c', 'Connecting two Azure VNets so resources can communicate with each other using private IP addresses', TRUE, 2),
    ('ee876ef4-b75d-4173-be15-ac16d4fe4f83', 'fb36f803-9c0f-498b-b458-8fd1aad8915c', 'A VPN connection to on-premises', FALSE, 3),
    ('fcde2644-0d01-4ea2-a57a-296f655baffc', 'fb36f803-9c0f-498b-b458-8fd1aad8915c', 'A DNS peering service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6a2f3ed8-918d-4168-95e5-f86a8e560679', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which Azure service provides a web application firewall (WAF) and layer 7 load balancing?',
        'Azure Application Gateway is a web traffic load balancer (Layer 7) that also offers WAF capabilities to protect web applications.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f78b5841-3db3-4163-bf51-c54e1c41549e', '6a2f3ed8-918d-4168-95e5-f86a8e560679', 'Azure Load Balancer', FALSE, 1),
    ('fb024fd4-3c82-4602-a693-82a9cf21ef4c', '6a2f3ed8-918d-4168-95e5-f86a8e560679', 'Azure VPN Gateway', FALSE, 2),
    ('aee92468-b4d2-4a36-b440-6834aeae3242', '6a2f3ed8-918d-4168-95e5-f86a8e560679', 'Azure Application Gateway', TRUE, 3),
    ('c727500b-a517-43a6-812c-4245cc8ba96c', '6a2f3ed8-918d-4168-95e5-f86a8e560679', 'Azure ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('46e22d41-892a-4e7f-aa27-e83b9dec228b', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which type of VPN connection connects an individual device to an Azure Virtual Network?',
        'A Point-to-Site (P2S) VPN connection allows individual client computers to connect to an Azure VNet — ideal for remote workers.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bbea1ef9-4c77-4777-a575-d7f0a9243e0f', '46e22d41-892a-4e7f-aa27-e83b9dec228b', 'Site-to-Site (S2S)', FALSE, 1),
    ('c29d3c2f-895f-4d7d-bde6-3d3b54523829', '46e22d41-892a-4e7f-aa27-e83b9dec228b', 'ExpressRoute', FALSE, 2),
    ('aaf4a03f-848d-4e39-9528-e49bd123c482', '46e22d41-892a-4e7f-aa27-e83b9dec228b', 'Point-to-Site (P2S)', TRUE, 3),
    ('6ef078a3-a839-4dbd-b629-baaf5c6c3898', '46e22d41-892a-4e7f-aa27-e83b9dec228b', 'VNet-to-VNet', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b0358ab9-0f98-4cbb-8241-741c60cfd3cc', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which type of VPN connection links an on-premises network to an Azure Virtual Network over the public internet?',
        'A Site-to-Site (S2S) VPN connection connects an entire on-premises network to an Azure VNet over an encrypted IPsec tunnel.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fe39d93a-a98c-4b9c-a440-4fea23869a1e', 'b0358ab9-0f98-4cbb-8241-741c60cfd3cc', 'Point-to-Site', FALSE, 1),
    ('c1321dd2-e719-470a-a3ab-3dc0f1aa24d0', 'b0358ab9-0f98-4cbb-8241-741c60cfd3cc', 'VNet-to-VNet', FALSE, 2),
    ('2d260521-8176-491f-a8f1-0ba85d278c29', 'b0358ab9-0f98-4cbb-8241-741c60cfd3cc', 'Site-to-Site', TRUE, 3),
    ('43abe1e1-7a8e-461f-8849-d8d6dd086f31', 'b0358ab9-0f98-4cbb-8241-741c60cfd3cc', 'ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ee14483e-7408-4127-b24b-9dbe8e0a6920', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What advantage does Azure ExpressRoute offer compared to a VPN Gateway?',
        'ExpressRoute provides a dedicated private connection with higher bandwidth, lower and consistent latency, and higher reliability than VPN over the internet.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c332f428-45c4-4cee-afd2-4867a4175773', 'ee14483e-7408-4127-b24b-9dbe8e0a6920', 'Lower cost', FALSE, 1),
    ('b44f1543-3566-4090-95f9-69a20e3a2a08', 'ee14483e-7408-4127-b24b-9dbe8e0a6920', 'Encrypted traffic over the internet', FALSE, 2),
    ('2b5b0fa4-5415-4081-82af-9e1fa13f406e', 'ee14483e-7408-4127-b24b-9dbe8e0a6920', 'Higher bandwidth, lower latency, and more reliability as it does not traverse the public internet', TRUE, 3),
    ('a6eec138-423c-4ed7-8e16-c4ae9de7ae0b', 'ee14483e-7408-4127-b24b-9dbe8e0a6920', 'Easier setup', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8a50500e-e16d-4043-8c53-d99a68c160cf', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is the purpose of subnets within an Azure Virtual Network?',
        'Subnets divide a VNet into smaller address spaces, allowing better organization, security (via NSGs), and routing of Azure resources.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a9fae24c-cc12-465b-8b7a-e0adae79be64', '8a50500e-e16d-4043-8c53-d99a68c160cf', 'To connect VNets to the internet', FALSE, 1),
    ('b77dd50e-12de-4ffe-8267-fec092c54b90', '8a50500e-e16d-4043-8c53-d99a68c160cf', 'To segment the VNet address space and organize resources into groups', TRUE, 2),
    ('6a26dfd2-e6c8-47b7-bc4a-d16b9af138ea', '8a50500e-e16d-4043-8c53-d99a68c160cf', 'To create DNS zones', FALSE, 3),
    ('b330ab8c-c9af-4cbb-b888-5013d860cd51', '8a50500e-e16d-4043-8c53-d99a68c160cf', 'To enable ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('498a2b45-54ac-4fe3-b326-c9f0f80ece3e', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which Azure service provides distributed denial-of-service (DDoS) protection for Azure resources?',
        'Azure DDoS Protection helps protect Azure resources from DDoS attacks by monitoring traffic and automatically mitigating attacks.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3bb6f532-0a06-4a26-8755-090ca07a37de', '498a2b45-54ac-4fe3-b326-c9f0f80ece3e', 'Azure Firewall', FALSE, 1),
    ('8191b4ac-65dd-4634-b287-57112707eba1', '498a2b45-54ac-4fe3-b326-c9f0f80ece3e', 'Azure ExpressRoute', FALSE, 2),
    ('8c1e67ec-de6a-473b-93f9-5c9590f3ecfc', '498a2b45-54ac-4fe3-b326-c9f0f80ece3e', 'Azure DDoS Protection', TRUE, 3),
    ('2597e24b-e1f2-42d3-b6b5-9da14f69cb9f', '498a2b45-54ac-4fe3-b326-c9f0f80ece3e', 'Azure Load Balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff248888-ddc8-4c0c-b2e8-ffb89f3a3f0f', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What is Azure Firewall?',
        'Azure Firewall is a managed stateful firewall-as-a-service that provides network-level and application-level filtering for Azure VNet resources.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e343a358-b350-478d-a227-ca041ed49466', 'ff248888-ddc8-4c0c-b2e8-ffb89f3a3f0f', 'A physical firewall appliance', FALSE, 1),
    ('a52c058a-4516-48bd-95f5-f32880177e29', 'ff248888-ddc8-4c0c-b2e8-ffb89f3a3f0f', 'A managed, cloud-based network security service that protects Azure Virtual Network resources', TRUE, 2),
    ('5bdf2865-cc8a-488c-bcde-5ac507f769e9', 'ff248888-ddc8-4c0c-b2e8-ffb89f3a3f0f', 'A WAF for web applications', FALSE, 3),
    ('9a42991b-31f0-48ff-aeaf-f1d2dfd991ce', 'ff248888-ddc8-4c0c-b2e8-ffb89f3a3f0f', 'A VPN gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('568f743e-1dec-4ba3-8a57-8c1f9655a0ad', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company needs to connect its on-premises offices to Azure with a guaranteed SLA and without using the public internet. Which service should they use?',
        'ExpressRoute provides private, dedicated connectivity with a high SLA, bypassing the public internet.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('52760f57-781d-41ed-b245-4df6510ea881', '568f743e-1dec-4ba3-8a57-8c1f9655a0ad', 'Azure VPN Gateway', FALSE, 1),
    ('5e8cbb7f-d022-4321-a3c6-8f6721237a7c', '568f743e-1dec-4ba3-8a57-8c1f9655a0ad', 'Azure Load Balancer', FALSE, 2),
    ('476c41b3-b32c-4db7-a73c-d60fcad5a203', '568f743e-1dec-4ba3-8a57-8c1f9655a0ad', 'Azure ExpressRoute', TRUE, 3),
    ('28d6a007-365b-41c4-915b-66a9e636700f', '568f743e-1dec-4ba3-8a57-8c1f9655a0ad', 'Azure DNS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('15378260-f053-466a-a7e5-2394510f695a', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which Azure service can route traffic based on URL paths, such as directing /images to one server pool and /api to another?',
        'Azure Application Gateway supports URL path-based routing at Layer 7, allowing different backend pools for different URL paths.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c0c3bb9e-427d-45fd-a1bb-cc6ddf9b01f8', '15378260-f053-466a-a7e5-2394510f695a', 'Azure Load Balancer', FALSE, 1),
    ('60b2fa30-c131-431a-b65a-f95ca7762d06', '15378260-f053-466a-a7e5-2394510f695a', 'Azure DNS', FALSE, 2),
    ('e4caa6a0-09f9-4908-b4b3-cabb69b289bb', '15378260-f053-466a-a7e5-2394510f695a', 'Azure Application Gateway', TRUE, 3),
    ('e5a4242c-63ba-4d23-83fe-3c77565a9b8e', '15378260-f053-466a-a7e5-2394510f695a', 'Azure VPN Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7e275819-7911-4505-b427-e918bcd9ea86', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'What does Azure Private Link allow?',
        'Azure Private Link provides private connectivity from your VNet to Azure PaaS services using a private endpoint, keeping traffic off the public internet.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f1cee1c3-1f08-40f4-8997-9975c28a5254', '7e275819-7911-4505-b427-e918bcd9ea86', 'Public access to Azure services', FALSE, 1),
    ('959e803e-15f2-42f5-a8f1-ff1189747a5b', '7e275819-7911-4505-b427-e918bcd9ea86', 'Private connectivity to Azure PaaS services, removing exposure to the public internet', TRUE, 2),
    ('cd517ae1-b527-4ba7-b290-6fee1fc4225a', '7e275819-7911-4505-b427-e918bcd9ea86', 'VPN connectivity', FALSE, 3),
    ('8906b827-0359-45bd-8158-63746710a3c6', '7e275819-7911-4505-b427-e918bcd9ea86', 'DNS name resolution', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9a5487aa-3db7-4d40-a40b-665b5bf31fb3', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'Which Azure component allows you to define and enforce routing rules for traffic within and between VNets?',
        'User-Defined Routes (UDRs) override Azure''s default system routes, giving you control over where network traffic is directed.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0d2aea66-46aa-4a6e-af00-6da8afedca5a', '9a5487aa-3db7-4d40-a40b-665b5bf31fb3', 'Network Security Groups', FALSE, 1),
    ('013d4a47-abac-4162-b357-e97580c76641', '9a5487aa-3db7-4d40-a40b-665b5bf31fb3', 'User-Defined Routes (UDR)', TRUE, 2),
    ('e8a63a87-5b66-44d6-a60d-125985f4e07a', '9a5487aa-3db7-4d40-a40b-665b5bf31fb3', 'Azure DNS', FALSE, 3),
    ('97f3e30d-8158-46a7-997c-2331ee4f5eaa', '9a5487aa-3db7-4d40-a40b-665b5bf31fb3', 'VNet Peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c7637986-7e88-4754-9dbf-79eb71396610', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A developer needs to resolve Azure resource names to IP addresses without managing DNS servers. Which Azure service helps?',
        'Azure DNS allows hosting DNS zones and resolving names to IP addresses, managed through Azure without needing DNS server infrastructure.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c670948e-daed-4013-b34d-af478cc2da20', 'c7637986-7e88-4754-9dbf-79eb71396610', 'Azure VPN Gateway', FALSE, 1),
    ('ed1df389-e834-499e-93ef-11abf9184211', 'c7637986-7e88-4754-9dbf-79eb71396610', 'Azure ExpressRoute', FALSE, 2),
    ('4cb1fb98-019f-499a-b68b-24febd0a1f31', 'c7637986-7e88-4754-9dbf-79eb71396610', 'Azure DNS', TRUE, 3),
    ('f6c4b7b0-49b8-4935-a23a-d9e283a15204', 'c7637986-7e88-4754-9dbf-79eb71396610', 'Azure Load Balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d7e9c8a-8f31-4f8d-82ad-cf8ff2737505', '468962a7-34b1-45ee-8af8-4169ee32584b', 'MULTIPLE_CHOICE', 'Which TWO statements about Azure Virtual Networks (VNets) are correct? (Choose 2)',
        'VNets are regional, but global VNet peering allows VNets in different regions to communicate. Resources within a VNet communicate privately by default.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4bde8251-4fe3-4f2e-85fc-2594dea7f196', '5d7e9c8a-8f31-4f8d-82ad-cf8ff2737505', 'VNets are scoped to a single Azure region', TRUE, 1),
    ('5c6f7c9a-56d0-4577-b798-6c4c8289cb9c', '5d7e9c8a-8f31-4f8d-82ad-cf8ff2737505', 'VNets can be peered across different regions (global VNet peering)', TRUE, 2),
    ('8c03e837-f4c7-4344-b84c-005478c600cd', '5d7e9c8a-8f31-4f8d-82ad-cf8ff2737505', 'A VNet can span multiple Azure subscriptions automatically', FALSE, 3),
    ('04296403-1346-4126-937c-a5e40600cf3d', '5d7e9c8a-8f31-4f8d-82ad-cf8ff2737505', 'All resources in a VNet communicate via the public internet by default', FALSE, 4),
    ('e2cc2ce6-d066-407d-a608-f6aa05b04524', '5d7e9c8a-8f31-4f8d-82ad-cf8ff2737505', 'VNets can contain resources from multiple resource groups', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d3930678-9e13-4072-b7e8-ecd8332ad052', '468962a7-34b1-45ee-8af8-4169ee32584b', 'MULTIPLE_CHOICE', 'Which TWO are valid use cases for Azure VPN Gateway? (Choose 2)',
        'Azure VPN Gateway supports Site-to-Site (on-premises to Azure) and Point-to-Site (individual client to Azure) VPN connections.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1fd4654-3970-4f9e-88a2-3cece5ac8dac', 'd3930678-9e13-4072-b7e8-ecd8332ad052', 'Connecting on-premises networks to Azure over the internet (Site-to-Site)', TRUE, 1),
    ('b685567f-418e-46f0-a79c-46fcec582cd6', 'd3930678-9e13-4072-b7e8-ecd8332ad052', 'Connecting individual clients to Azure from anywhere (Point-to-Site)', TRUE, 2),
    ('3bd63f34-34e9-46c5-b5a3-d13a8dff8af2', 'd3930678-9e13-4072-b7e8-ecd8332ad052', 'Providing private dedicated circuits with guaranteed SLA', FALSE, 3),
    ('e077e30c-4ecb-4d5c-ab0c-8c21f34d2290', 'd3930678-9e13-4072-b7e8-ecd8332ad052', 'Distributing HTTP traffic across backend servers', FALSE, 4),
    ('9db6a0dd-2f20-493e-bb07-3929e348f1c8', 'd3930678-9e13-4072-b7e8-ecd8332ad052', 'Hosting DNS zones', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ac0b7b28-5eca-4604-92f3-9d056adcb873', '468962a7-34b1-45ee-8af8-4169ee32584b', 'MULTIPLE_CHOICE', 'Which TWO features does Azure Application Gateway support that Azure Load Balancer does NOT? (Choose 2)',
        'Application Gateway operates at Layer 7 and supports SSL termination and URL-based routing. Load Balancer is Layer 4 and handles TCP/UDP only.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('30006276-b19a-46ed-b2bc-86f2e942ff7b', 'ac0b7b28-5eca-4604-92f3-9d056adcb873', 'SSL/TLS termination', TRUE, 1),
    ('582c559d-f4f0-4b6d-a3e2-eac364efc216', 'ac0b7b28-5eca-4604-92f3-9d056adcb873', 'URL path-based routing', TRUE, 2),
    ('4622512f-4306-4b25-bf81-7f3e3311af33', 'ac0b7b28-5eca-4604-92f3-9d056adcb873', 'TCP/UDP load balancing', FALSE, 3),
    ('644c7b2d-a122-4495-97fd-9347c0672e57', 'ac0b7b28-5eca-4604-92f3-9d056adcb873', 'VPN connectivity', FALSE, 4),
    ('09c903ff-8f2a-4c29-b9bd-81237d9b04e9', 'ac0b7b28-5eca-4604-92f3-9d056adcb873', 'DNS resolution', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d1c65811-2fe0-4d45-8fbe-685d7567317b', '468962a7-34b1-45ee-8af8-4169ee32584b', 'MULTIPLE_CHOICE', 'Which TWO statements correctly describe Network Security Groups (NSGs)? (Choose 2)',
        'NSGs are associated with subnets or NICs and use prioritized inbound/outbound rules to allow or deny traffic. They don''t encrypt or provide DDoS protection.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('40e00b18-9e9d-49ac-8660-3a7ba334018d', 'd1c65811-2fe0-4d45-8fbe-685d7567317b', 'NSGs can be associated with subnets and network interfaces', TRUE, 1),
    ('a47d269e-1acf-439f-a84d-a594308abe83', 'd1c65811-2fe0-4d45-8fbe-685d7567317b', 'NSGs encrypt network traffic automatically', FALSE, 2),
    ('d86bc269-7cc1-4d20-84d1-5d5021e64b7a', 'd1c65811-2fe0-4d45-8fbe-685d7567317b', 'NSGs use inbound and outbound rules with priority numbers', TRUE, 3),
    ('00b9e1ce-6662-4685-9771-fa03193c63bc', 'd1c65811-2fe0-4d45-8fbe-685d7567317b', 'NSGs replace the need for Azure Firewall entirely', FALSE, 4),
    ('b7c03067-403f-48f0-aca1-dfac2b3da4ab', 'd1c65811-2fe0-4d45-8fbe-685d7567317b', 'NSGs provide DDoS protection', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7baff57d-cb79-4c9f-835b-ec9c606ecaf4', '468962a7-34b1-45ee-8af8-4169ee32584b', 'MULTIPLE_CHOICE', 'Which TWO are advantages of Azure ExpressRoute over a VPN Gateway connection? (Choose 2)',
        'ExpressRoute offers higher bandwidth (up to 100 Gbps) and private connectivity that bypasses the public internet, unlike VPN Gateway.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b1037781-5614-40b3-9232-65340affdf9c', '7baff57d-cb79-4c9f-835b-ec9c606ecaf4', 'Lower cost', FALSE, 1),
    ('35ad78ef-decb-4f30-941d-46e9bdf93b86', '7baff57d-cb79-4c9f-835b-ec9c606ecaf4', 'Higher bandwidth options (up to 100 Gbps)', TRUE, 2),
    ('8900b664-d63a-4271-b3f9-3e0ff47f617c', '7baff57d-cb79-4c9f-835b-ec9c606ecaf4', 'Traffic does not travel over the public internet', TRUE, 3),
    ('9fa8192e-f94f-4204-821c-0666e73a31b1', '7baff57d-cb79-4c9f-835b-ec9c606ecaf4', 'Easier and faster to set up', FALSE, 4),
    ('0354ce01-fe2e-4ea2-856a-c7f34d722e38', '7baff57d-cb79-4c9f-835b-ec9c606ecaf4', 'No need for a connectivity provider', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('54e4e345-c16a-451b-b156-2e28c9f37a87', '468962a7-34b1-45ee-8af8-4169ee32584b', 'TRUE_FALSE', 'Azure Virtual Network Peering allows resources in different VNets to communicate using private IP addresses.',
        'VNet Peering connects two VNets and enables resources to communicate using private IPs without going through the public internet.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1fff3d08-44ab-4a95-87b8-657bc3c9d08c', '54e4e345-c16a-451b-b156-2e28c9f37a87', 'True', TRUE, 1),
    ('02024457-70fc-4368-8951-0209fcb34e98', '54e4e345-c16a-451b-b156-2e28c9f37a87', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ccf936ab-f158-47d6-930e-65bda1ecc9a8', '468962a7-34b1-45ee-8af8-4169ee32584b', 'TRUE_FALSE', 'Azure VPN Gateway traffic is always encrypted, even when sent over the public internet.',
        'Azure VPN Gateway uses IPsec/IKE encryption to secure all traffic sent over the public internet between on-premises and Azure.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9679d605-6c98-4847-a3bb-27a008589b9a', 'ccf936ab-f158-47d6-930e-65bda1ecc9a8', 'True', TRUE, 1),
    ('b52f4d87-f89e-4c60-abb7-7f25197e31fc', 'ccf936ab-f158-47d6-930e-65bda1ecc9a8', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6136bf86-3628-4d98-b202-e61992f28fea', '468962a7-34b1-45ee-8af8-4169ee32584b', 'TRUE_FALSE', 'Azure ExpressRoute uses the public internet to connect on-premises networks to Azure.',
        'ExpressRoute uses private connections through connectivity providers (like ISPs or colocation providers), bypassing the public internet.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0e5d9ed6-3aa3-4384-b76f-773ab12432ac', '6136bf86-3628-4d98-b202-e61992f28fea', 'True', FALSE, 1),
    ('4a3c34df-95d1-467b-9a4c-22dc40a882c0', '6136bf86-3628-4d98-b202-e61992f28fea', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e6ffa98e-d3e7-45b0-9c12-0a49228d10b6', '468962a7-34b1-45ee-8af8-4169ee32584b', 'TRUE_FALSE', 'An Azure Load Balancer can make routing decisions based on HTTP headers or URL paths.',
        'Azure Load Balancer operates at Layer 4 (TCP/UDP) and cannot inspect HTTP content. Application Gateway handles Layer 7 (HTTP/HTTPS) routing.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('edf8dd87-524c-47c5-a3db-56d5ded4d5b3', 'e6ffa98e-d3e7-45b0-9c12-0a49228d10b6', 'True', FALSE, 1),
    ('4b6794e7-aecd-452a-8b35-d292c52af5db', 'e6ffa98e-d3e7-45b0-9c12-0a49228d10b6', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ada1a606-baa8-43f0-9e3d-2bcba3620771', '468962a7-34b1-45ee-8af8-4169ee32584b', 'TRUE_FALSE', 'Azure DNS supports hosting private DNS zones that can only be resolved within Azure Virtual Networks.',
        'Azure Private DNS zones are only resolvable within linked VNets, providing name resolution for resources without exposing names publicly.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8d5122f2-056b-4732-b606-19040caa1df9', 'ada1a606-baa8-43f0-9e3d-2bcba3620771', 'True', TRUE, 1),
    ('42944666-5bc9-4804-8f0d-fe8085fa6afe', 'ada1a606-baa8-43f0-9e3d-2bcba3620771', 'False', FALSE, 2);

-- Scenario questions (answers derived from AZ-900 fundamentals, see note above)
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('90ef1dbd-f886-44af-be72-62e04c2ed2cb', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company needs to connect its on-premises datacenter in Lyon to an Azure Virtual Network. The connection must be encrypted. The company has a limited budget and the connection will primarily be used for administrative tasks with low bandwidth requirements. The solution must meet the following requirements: - Encrypted connectivity between on-premises and Azure. - Low budget. - Low bandwidth requirements. Which Azure service should they use?',
        'VPN Gateway Site-to-Site provides encrypted connectivity at a lower cost than ExpressRoute, suitable for low-bandwidth administrative traffic.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('380cb32a-b3dc-41f4-b27e-624d638cebfb', '90ef1dbd-f886-44af-be72-62e04c2ed2cb', 'Azure ExpressRoute (1 Gbps circuit)', FALSE, 1),
    ('8623ce73-d75b-4005-9ef1-d278034b98cb', '90ef1dbd-f886-44af-be72-62e04c2ed2cb', 'Azure VPN Gateway (Site-to-Site)', TRUE, 2),
    ('e1e3e078-4505-4955-af05-369ecee9fbdc', '90ef1dbd-f886-44af-be72-62e04c2ed2cb', 'Azure Application Gateway', FALSE, 3),
    ('97c4c892-9543-4089-9f57-155ae1c038a1', '90ef1dbd-f886-44af-be72-62e04c2ed2cb', 'Azure Load Balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7d92ee4f-9be6-4179-b288-b887819f146a', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A bank needs to connect its headquarters to Azure. The connection must meet the following requirements: - Traffic must NOT traverse the public internet. - Bandwidth must be guaranteed at 5 Gbps. - Latency must be consistent and predictable. - A financial SLA is required. Which Azure connectivity service should the bank use?',
        'ExpressRoute provides a private connection that doesn''t traverse the public internet, with guaranteed bandwidth, predictable latency, and a financial SLA.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7a269389-7f6f-4f09-92ee-4a100f28c1c8', '7d92ee4f-9be6-4179-b288-b887819f146a', 'Azure VPN Gateway (Site-to-Site)', FALSE, 1),
    ('6f69bf9d-7696-4dd5-8a40-15117f2e7cc7', '7d92ee4f-9be6-4179-b288-b887819f146a', 'Azure VPN Gateway (Point-to-Site)', FALSE, 2),
    ('c3259337-1501-40d8-839c-3e4a6a76b3ba', '7d92ee4f-9be6-4179-b288-b887819f146a', 'Azure ExpressRoute', TRUE, 3),
    ('db71e4b2-8871-484a-b3fe-c140cdd451ff', '7d92ee4f-9be6-4179-b288-b887819f146a', 'Azure Virtual WAN', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0ca79ed5-bd9b-478c-981b-5842662f6681', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company has a web application with the following traffic routing requirements: - Requests to example.com/api must go to the API server farm. - Requests to example.com/images must go to the image server farm. - SSL/TLS must be terminated at the load balancer level. - Protection against SQL injection attacks must be included. Which Azure service should they deploy?',
        'Application Gateway operates at Layer 7 and supports URL path-based routing, SSL termination, and a Web Application Firewall (WAF) for SQL injection protection.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a537901a-3650-4a38-9d6e-1545d185d459', '0ca79ed5-bd9b-478c-981b-5842662f6681', 'Azure Load Balancer with NSG rules', FALSE, 1),
    ('981f4759-5d69-4e33-8a6e-307d9bb5768a', '0ca79ed5-bd9b-478c-981b-5842662f6681', 'Azure Traffic Manager', FALSE, 2),
    ('e9b9fb17-2c67-449e-aa67-b71184d7b46d', '0ca79ed5-bd9b-478c-981b-5842662f6681', 'Azure VPN Gateway', FALSE, 3),
    ('cfbd60b8-ee25-413c-a53a-dc3cded0b801', '0ca79ed5-bd9b-478c-981b-5842662f6681', 'Azure Application Gateway with WAF', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('97051a85-ec49-4493-8f80-a06984e4a5dd', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A gaming company hosts a multiplayer game backend on 5 Azure VMs. Players connect via UDP. The company needs to distribute player connections across all 5 VMs to maximize performance. No HTTP inspection is needed. The solution must meet the following requirements: - Distribute UDP traffic across 5 VMs. - No HTTP content inspection. - High performance and low latency. Which Azure service should they use?',
        'Azure Load Balancer operates at Layer 4 (TCP/UDP), distributing traffic like UDP game traffic across VMs without inspecting application content.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('111f8cae-a186-4f24-9d88-81e46b369031', '97051a85-ec49-4493-8f80-a06984e4a5dd', 'Azure Application Gateway', FALSE, 1),
    ('ce8eccd8-64e8-4aae-96fa-9ea024411077', '97051a85-ec49-4493-8f80-a06984e4a5dd', 'Azure Traffic Manager', FALSE, 2),
    ('d405ce27-d7f1-4e08-9db1-44edde9931a3', '97051a85-ec49-4493-8f80-a06984e4a5dd', 'Azure Load Balancer', TRUE, 3),
    ('46154a13-5117-4b09-9a89-8c14f8b92222', '97051a85-ec49-4493-8f80-a06984e4a5dd', 'Azure VPN Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7ac4cbdd-cc40-4160-be5d-44f27b46d06c', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company has deployed two Azure Virtual Networks in different regions: one in West Europe and one in East US. Development teams in both regions need to access shared resources in both VNets using private IP addresses, without sending traffic through the public internet. The solution must meet the following requirements: - Communication between VNets using private IPs. - No public internet traffic. - Cross-region connectivity. Which solution should they implement?',
        'Global VNet Peering connects VNets across different regions using private IP addresses without traversing the public internet.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('93e6a663-e773-4679-bf16-1c6da2bd4b84', '7ac4cbdd-cc40-4160-be5d-44f27b46d06c', 'Site-to-Site VPN between the two VNets', FALSE, 1),
    ('27f83d11-2fe3-4c97-b693-224b78cbe0a3', '7ac4cbdd-cc40-4160-be5d-44f27b46d06c', 'Global VNet Peering', TRUE, 2),
    ('532a5a4e-b5c2-47ff-9a22-c60bebc74fac', '7ac4cbdd-cc40-4160-be5d-44f27b46d06c', 'Azure ExpressRoute', FALSE, 3),
    ('a3a0e8f5-3a8c-4056-8223-1b06fc5f925a', '7ac4cbdd-cc40-4160-be5d-44f27b46d06c', 'Azure Load Balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ccc0cf05-5b21-465c-9c0a-8125a43a36cd', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A remote employee working from home needs to securely access resources in the company''s Azure Virtual Network, including internal web servers and file shares. The connection must be secure and encrypted. The solution must meet the following requirements: - Single device (laptop) connection to Azure VNet. - Encrypted connection. - No on-premises network equipment required. Which VPN connection type should be configured?',
        'A Point-to-Site VPN lets a single device connect securely to an Azure VNet without requiring any on-premises VPN hardware.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1fdc1083-55d9-4635-8e5e-9fdc3b8dba0c', 'ccc0cf05-5b21-465c-9c0a-8125a43a36cd', 'Site-to-Site (S2S) VPN', FALSE, 1),
    ('4bdb92b1-68e0-496b-996c-1d9841b430d2', 'ccc0cf05-5b21-465c-9c0a-8125a43a36cd', 'VNet-to-VNet VPN', FALSE, 2),
    ('8a1c2ef7-1931-401e-850d-fe2ae77c5442', 'ccc0cf05-5b21-465c-9c0a-8125a43a36cd', 'Point-to-Site (P2S) VPN', TRUE, 3),
    ('8ef951a8-2283-4e45-a912-b2b948524ac9', 'ccc0cf05-5b21-465c-9c0a-8125a43a36cd', 'Azure ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('08f47a47-c56d-4318-a21f-e953f71ead4e', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company has deployed Azure Storage accounts containing sensitive financial data. The security team requires that these storage accounts are only accessible from within the company''s Azure Virtual Network using private IP addresses, and should not be reachable from the public internet at all. The solution must meet the following requirements: - Storage accounts accessible via private IP only. - No public internet exposure. - Traffic stays within Microsoft''s private network. Which Azure service should they configure?',
        'Azure Private Link with Private Endpoints makes a storage account reachable only via a private IP inside the VNet, removing public internet exposure.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3cc8195d-0cb6-4a81-80a4-bb6b87c6579e', '08f47a47-c56d-4318-a21f-e953f71ead4e', 'Azure Firewall', FALSE, 1),
    ('ba9cbcce-91c6-4887-a578-d4100a9d7f05', '08f47a47-c56d-4318-a21f-e953f71ead4e', 'Network Security Groups (NSG)', FALSE, 2),
    ('47ac411d-7469-4ca8-95a7-9786d590e752', '08f47a47-c56d-4318-a21f-e953f71ead4e', 'Azure Private Link with Private Endpoints', TRUE, 3),
    ('0b5de5ed-0d6e-4773-9159-4459aead5dec', '08f47a47-c56d-4318-a21f-e953f71ead4e', 'Azure VPN Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('39474d7f-b873-40eb-8ba1-7850db6472fd', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company''s subnet in Azure hosts 20 web server VMs. The security team needs to create a rule that blocks all inbound SSH traffic (port 22) from the internet to this subnet, while allowing all other inbound traffic on port 443 (HTTPS). The solution must meet the following requirements: - Block port 22 inbound from the internet. - Allow port 443 inbound. - Apply at the subnet level. Which Azure feature should they use?',
        'A Network Security Group lets you define inbound/outbound rules (like blocking port 22 while allowing port 443) at the subnet or NIC level.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3265023c-81e2-4772-baa8-99c6ec3f926a', '39474d7f-b873-40eb-8ba1-7850db6472fd', 'Azure Firewall', FALSE, 1),
    ('cb8398b7-1fd0-4809-99b7-c71fc230ddea', '39474d7f-b873-40eb-8ba1-7850db6472fd', 'Azure DDoS Protection', FALSE, 2),
    ('b2462155-8045-41b1-bf3f-9e07733e3c39', '39474d7f-b873-40eb-8ba1-7850db6472fd', 'Network Security Group (NSG)', TRUE, 3),
    ('24e8142d-639e-47e4-99e5-7f05fdb9782a', '39474d7f-b873-40eb-8ba1-7850db6472fd', 'Azure Application Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('652fe6cf-f99f-4254-aae0-8e4ad742623e', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company is experiencing DDoS attacks on their public-facing Azure web application. The attacks have been growing in scale and the basic Azure DDoS protection is no longer sufficient. They need advanced mitigation with real-time telemetry, SLA guarantees, and detailed attack reports. The solution must meet the following requirements: - Advanced DDoS mitigation beyond the basic tier. - Real-time telemetry and attack analytics. - Financial SLA guarantees. - Detailed post-attack reports. Which solution should they implement?',
        'Azure DDoS Protection Standard adds advanced mitigation, real-time telemetry, attack analytics, and a financial SLA beyond the free Basic tier.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dfd0853b-c61b-49df-8a58-e6fae42bcaa5', '652fe6cf-f99f-4254-aae0-8e4ad742623e', 'Azure DDoS Protection Basic (already enabled)', FALSE, 1),
    ('754cb1e2-eb9b-4aa2-a3ca-20e84d7360c7', '652fe6cf-f99f-4254-aae0-8e4ad742623e', 'Azure DDoS Protection Standard', TRUE, 2),
    ('16e0bc64-ab59-4acd-944d-146319918419', '652fe6cf-f99f-4254-aae0-8e4ad742623e', 'Azure Firewall Premium', FALSE, 3),
    ('b0af00eb-f9b4-44e3-ba05-a9f9215bab28', '652fe6cf-f99f-4254-aae0-8e4ad742623e', 'Azure Application Gateway WAF', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff800e45-2920-4dbb-9449-14e6e2f80dd8', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company hosts its DNS domain (contoso.com) with an external registrar. They want to move the management of DNS records for contoso.com to Azure so they can manage their infrastructure and DNS in one place, using Azure tools and RBAC. The solution must meet the following requirements: - Host DNS zone for contoso.com in Azure. - Manage DNS records via Azure Portal/CLI. - Apply Azure RBAC to DNS zone management. Which Azure service should they use?',
        'Azure DNS lets you host a public DNS zone in Azure and manage records via Azure tools with RBAC applied.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('15b06787-4e1f-45b5-b43b-2243bec3ddaa', 'ff800e45-2920-4dbb-9449-14e6e2f80dd8', 'Azure Private DNS', FALSE, 1),
    ('04154bfd-ccfc-4d43-9cb9-2725e6c74518', 'ff800e45-2920-4dbb-9449-14e6e2f80dd8', 'Azure VPN Gateway', FALSE, 2),
    ('b53af094-d513-44a4-a83c-43ea08667b82', 'ff800e45-2920-4dbb-9449-14e6e2f80dd8', 'Azure DNS (Public zone)', TRUE, 3),
    ('b0d7470c-945b-451e-bc1a-21b85adf3ca3', 'ff800e45-2920-4dbb-9449-14e6e2f80dd8', 'Azure Traffic Manager', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1951a16a-a480-4a5b-87b1-4df6a2bb0170', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company has deployed an internal HR application in Azure. The application servers are in a VNet and must be accessible from the company''s on-premises Active Directory servers over a private connection. However, a recent audit revealed that the connection uses the public internet and is unencrypted. The solution must meet the following requirements: - Encrypted connection between on-premises and Azure. - Must use the public internet (ExpressRoute not budgeted). - Connection must be established immediately. Which solution should they implement quickly?',
        'VPN Gateway Site-to-Site can be deployed quickly over the existing internet connection and encrypts all traffic, without requiring an ExpressRoute circuit.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b33dccd1-1774-4815-9f11-c7822b56d307', '1951a16a-a480-4a5b-87b1-4df6a2bb0170', 'Azure ExpressRoute', FALSE, 1),
    ('2e9d1715-9301-4223-9e50-23108f347b6e', '1951a16a-a480-4a5b-87b1-4df6a2bb0170', 'Azure VPN Gateway (Site-to-Site)', TRUE, 2),
    ('d2425f2f-0335-417e-a751-84d6ac5de51e', '1951a16a-a480-4a5b-87b1-4df6a2bb0170', 'Azure Application Gateway', FALSE, 3),
    ('7bd664de-9b54-4d04-a74c-a7edd53589bc', '1951a16a-a480-4a5b-87b1-4df6a2bb0170', 'VNet Peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('49ddb01a-4151-4cd2-b1b8-5adfbfba325e', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company is designing their Azure network security strategy. They have a production VNet and a development VNet. Developers should be able to connect their local laptops directly to the development VNet to test applications. What type of connection should they configure? The solution must meet the following requirements: - Developer laptops connect to the dev VNet. - Connection must be secure and encrypted. - No on-premises VPN appliance required. Which connection type is most appropriate?',
        'A Point-to-Site VPN lets individual developer laptops connect securely to a VNet without needing an on-premises VPN appliance.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60809029-cfbe-4abb-9659-70184450c74a', '49ddb01a-4151-4cd2-b1b8-5adfbfba325e', 'Site-to-Site VPN', FALSE, 1),
    ('a8a7eb61-11e0-4e8a-ac16-2e241836920c', '49ddb01a-4151-4cd2-b1b8-5adfbfba325e', 'VNet Peering', FALSE, 2),
    ('ebe8166b-0960-4ad7-979e-c6b1336e585b', '49ddb01a-4151-4cd2-b1b8-5adfbfba325e', 'Point-to-Site (P2S) VPN', TRUE, 3),
    ('af4d9619-518d-4dab-868c-1d0f65d1432b', '49ddb01a-4151-4cd2-b1b8-5adfbfba325e', 'ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2d787cf-6985-42b1-9b70-6ba841f1bb4f', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company wants to protect internal Azure Virtual Network resources from threats originating outside the VNet, with the ability to filter traffic based on both domain names (FQDNs) and IP addresses, and log all traffic for compliance purposes. The solution must meet the following requirements: - Filter traffic by FQDN and IP. - Centralized, managed firewall service. - Full traffic logging for compliance. - Stateful inspection. Which Azure service should they use?',
        'Azure Firewall is a managed, stateful network firewall that filters by FQDN and IP address and logs all traffic for compliance.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3833df41-c2ea-49f2-82a5-5e763252c7e7', 'b2d787cf-6985-42b1-9b70-6ba841f1bb4f', 'Network Security Groups (NSG)', FALSE, 1),
    ('70367407-2785-4236-8928-f367675b9126', 'b2d787cf-6985-42b1-9b70-6ba841f1bb4f', 'Azure DDoS Protection', FALSE, 2),
    ('be612b4f-c44c-422a-8e61-29d18b266028', 'b2d787cf-6985-42b1-9b70-6ba841f1bb4f', 'Azure Firewall', TRUE, 3),
    ('d1491761-aea3-4795-b383-8b56c39de7dd', 'b2d787cf-6985-42b1-9b70-6ba841f1bb4f', 'Azure Application Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('66eb0644-389b-4741-b408-6f943a8cb766', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A company has two VNets in the same Azure region: a Hub VNet containing shared services (Active Directory, DNS) and a Spoke VNet containing workload VMs. The workload VMs need to access the shared services using private IP addresses without internet traffic. The solution must meet the following requirements: - Private IP communication between Hub and Spoke VNets. - No internet traffic. - Simple, low-latency connectivity. Which solution is most appropriate?',
        'VNet Peering connects the Hub and Spoke VNets using private IP addresses with low latency and no internet traffic, ideal within the same region.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0abf0177-6873-4384-9b01-7250e8598b26', '66eb0644-389b-4741-b408-6f943a8cb766', 'Site-to-Site VPN between Hub and Spoke', FALSE, 1),
    ('782da026-2df7-4b26-b8c5-19eadd83c0d2', '66eb0644-389b-4741-b408-6f943a8cb766', 'VNet Peering between Hub and Spoke', TRUE, 2),
    ('37c6d24c-b7a1-4da7-b2e2-3613aa13995c', '66eb0644-389b-4741-b408-6f943a8cb766', 'ExpressRoute between Hub and Spoke', FALSE, 3),
    ('b9d73070-9f44-41cf-9eaa-cfdd2a6bc062', '66eb0644-389b-4741-b408-6f943a8cb766', 'Azure Load Balancer connecting the two VNets', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0bcd71fe-e45c-47f3-b056-5c3b01e924c1', '468962a7-34b1-45ee-8af8-4169ee32584b', 'SINGLE_CHOICE', 'A startup is building a multi-region web application. They need to direct users to the nearest Azure region based on geographic location to minimize latency. If one region becomes unavailable, traffic must automatically failover to another region. The solution must meet the following requirements: - Route users to the nearest Azure region. - Automatic failover if a region fails. - DNS-based traffic routing. Which Azure service should they use? ✅  End of scenario questions — Give this document to your trainer for correction. Your trainer will provide answer explanations and discuss common mistakes from this module.',
        'Azure Traffic Manager uses DNS-based routing to send users to the nearest healthy region and automatically fails over if a region becomes unavailable.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f64a5c3f-805b-4f33-b821-e59053dc34ef', '0bcd71fe-e45c-47f3-b056-5c3b01e924c1', 'Azure Load Balancer', FALSE, 1),
    ('b1971939-d22e-492c-afed-cdaa0fc7a84f', '0bcd71fe-e45c-47f3-b056-5c3b01e924c1', 'Azure Application Gateway', FALSE, 2),
    ('2147aa53-95d1-45e5-9acc-0b46921f1d3f', '0bcd71fe-e45c-47f3-b056-5c3b01e924c1', 'Azure Traffic Manager', TRUE, 3),
    ('bdab67a8-ccb6-43bf-a8cc-97dfa2c3e82d', '0bcd71fe-e45c-47f3-b056-5c3b01e924c1', 'Azure VPN Gateway', FALSE, 4);

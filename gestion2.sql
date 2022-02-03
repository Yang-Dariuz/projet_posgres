PGDMP     $        	            z            agence_de_voyage #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) 2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16433    agence_de_voyage    DATABASE     �   CREATE DATABASE agence_de_voyage WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'fr_FR.UTF-8' LC_CTYPE = 'fr_FR.UTF-8';
     DROP DATABASE agence_de_voyage;
                postgres    false            �            1259    16490    agence    TABLE       CREATE TABLE public.agence (
    id_ag integer NOT NULL,
    nom_ag character varying(200),
    adresse character varying(200),
    quartier character varying(200),
    description text,
    com_id integer NOT NULL,
    bus_id integer NOT NULL,
    chauf_id integer NOT NULL
);
    DROP TABLE public.agence;
       public         heap    postgres    false            �            1259    16488    agence_id_ag_seq    SEQUENCE     �   CREATE SEQUENCE public.agence_id_ag_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.agence_id_ag_seq;
       public          postgres    false    211            �           0    0    agence_id_ag_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.agence_id_ag_seq OWNED BY public.agence.id_ag;
          public          postgres    false    210            �            1259    16460 	   agent_com    TABLE     �   CREATE TABLE public.agent_com (
    id_com integer NOT NULL,
    nom character varying(200),
    prenom character varying(200),
    adresse character varying(200),
    tel character varying(200),
    sexe character varying(20)
);
    DROP TABLE public.agent_com;
       public         heap    postgres    false            �            1259    16458    agent_com_id_com_seq    SEQUENCE     �   CREATE SEQUENCE public.agent_com_id_com_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.agent_com_id_com_seq;
       public          postgres    false    207            �           0    0    agent_com_id_com_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.agent_com_id_com_seq OWNED BY public.agent_com.id_com;
          public          postgres    false    206            �            1259    16471    bus    TABLE     �   CREATE TABLE public.bus (
    id_bus integer NOT NULL,
    marque name COLLATE pg_catalog."default",
    puissance integer,
    coleur character(20),
    nom_agent name COLLATE pg_catalog."default"
);
    DROP TABLE public.bus;
       public         heap    postgres    false            �            1259    16469    bus_id_bus_seq    SEQUENCE     �   CREATE SEQUENCE public.bus_id_bus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bus_id_bus_seq;
       public          postgres    false    209            �           0    0    bus_id_bus_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bus_id_bus_seq OWNED BY public.bus.id_bus;
          public          postgres    false    208            �            1259    16449 	   chauffeur    TABLE     �   CREATE TABLE public.chauffeur (
    id_chauf integer NOT NULL,
    nom_chauf character varying(200),
    prenom_chauf character varying(200),
    adresse character varying(200),
    tel character varying(20)
);
    DROP TABLE public.chauffeur;
       public         heap    postgres    false            �            1259    16447    chauffeur_id_chauf_seq    SEQUENCE     �   CREATE SEQUENCE public.chauffeur_id_chauf_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.chauffeur_id_chauf_seq;
       public          postgres    false    205            �           0    0    chauffeur_id_chauf_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chauffeur_id_chauf_seq OWNED BY public.chauffeur.id_chauf;
          public          postgres    false    204            �            1259    16436    client    TABLE     �   CREATE TABLE public.client (
    id_client integer NOT NULL,
    nom_client character varying(200),
    prenom_client character varying(200),
    adresse character varying(200)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    16434    client_id_client_seq    SEQUENCE     �   CREATE SEQUENCE public.client_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_id_client_seq;
       public          postgres    false    203            �           0    0    client_id_client_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;
          public          postgres    false    202            �            1259    16511    facture    TABLE     �   CREATE TABLE public.facture (
    id_fac integer NOT NULL,
    prix double precision NOT NULL,
    description text,
    client_id integer NOT NULL,
    ag_id integer NOT NULL
);
    DROP TABLE public.facture;
       public         heap    postgres    false            �            1259    16509    facture_id_fac_seq    SEQUENCE     �   CREATE SEQUENCE public.facture_id_fac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.facture_id_fac_seq;
       public          postgres    false    213            �           0    0    facture_id_fac_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.facture_id_fac_seq OWNED BY public.facture.id_fac;
          public          postgres    false    212            ?           2604    16493    agence id_ag    DEFAULT     l   ALTER TABLE ONLY public.agence ALTER COLUMN id_ag SET DEFAULT nextval('public.agence_id_ag_seq'::regclass);
 ;   ALTER TABLE public.agence ALTER COLUMN id_ag DROP DEFAULT;
       public          postgres    false    211    210    211            =           2604    16463    agent_com id_com    DEFAULT     t   ALTER TABLE ONLY public.agent_com ALTER COLUMN id_com SET DEFAULT nextval('public.agent_com_id_com_seq'::regclass);
 ?   ALTER TABLE public.agent_com ALTER COLUMN id_com DROP DEFAULT;
       public          postgres    false    206    207    207            >           2604    16474 
   bus id_bus    DEFAULT     h   ALTER TABLE ONLY public.bus ALTER COLUMN id_bus SET DEFAULT nextval('public.bus_id_bus_seq'::regclass);
 9   ALTER TABLE public.bus ALTER COLUMN id_bus DROP DEFAULT;
       public          postgres    false    209    208    209            <           2604    16452    chauffeur id_chauf    DEFAULT     x   ALTER TABLE ONLY public.chauffeur ALTER COLUMN id_chauf SET DEFAULT nextval('public.chauffeur_id_chauf_seq'::regclass);
 A   ALTER TABLE public.chauffeur ALTER COLUMN id_chauf DROP DEFAULT;
       public          postgres    false    204    205    205            ;           2604    16439    client id_client    DEFAULT     t   ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);
 ?   ALTER TABLE public.client ALTER COLUMN id_client DROP DEFAULT;
       public          postgres    false    203    202    203            @           2604    16514    facture id_fac    DEFAULT     p   ALTER TABLE ONLY public.facture ALTER COLUMN id_fac SET DEFAULT nextval('public.facture_id_fac_seq'::regclass);
 =   ALTER TABLE public.facture ALTER COLUMN id_fac DROP DEFAULT;
       public          postgres    false    213    212    213            �          0    16490    agence 
   TABLE DATA           i   COPY public.agence (id_ag, nom_ag, adresse, quartier, description, com_id, bus_id, chauf_id) FROM stdin;
    public          postgres    false    211   |8       �          0    16460 	   agent_com 
   TABLE DATA           L   COPY public.agent_com (id_com, nom, prenom, adresse, tel, sexe) FROM stdin;
    public          postgres    false    207   �<       �          0    16471    bus 
   TABLE DATA           K   COPY public.bus (id_bus, marque, puissance, coleur, nom_agent) FROM stdin;
    public          postgres    false    209   %D       �          0    16449 	   chauffeur 
   TABLE DATA           T   COPY public.chauffeur (id_chauf, nom_chauf, prenom_chauf, adresse, tel) FROM stdin;
    public          postgres    false    205   �G       �          0    16436    client 
   TABLE DATA           O   COPY public.client (id_client, nom_client, prenom_client, adresse) FROM stdin;
    public          postgres    false    203   \N       �          0    16511    facture 
   TABLE DATA           N   COPY public.facture (id_fac, prix, description, client_id, ag_id) FROM stdin;
    public          postgres    false    213   b[       �           0    0    agence_id_ag_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.agence_id_ag_seq', 1, false);
          public          postgres    false    210            �           0    0    agent_com_id_com_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.agent_com_id_com_seq', 1, false);
          public          postgres    false    206            �           0    0    bus_id_bus_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bus_id_bus_seq', 1, false);
          public          postgres    false    208            �           0    0    chauffeur_id_chauf_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chauffeur_id_chauf_seq', 1, false);
          public          postgres    false    204            �           0    0    client_id_client_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.client_id_client_seq', 1, false);
          public          postgres    false    202            �           0    0    facture_id_fac_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.facture_id_fac_seq', 1, false);
          public          postgres    false    212            J           2606    16498    agence agence_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.agence
    ADD CONSTRAINT agence_pkey PRIMARY KEY (id_ag);
 <   ALTER TABLE ONLY public.agence DROP CONSTRAINT agence_pkey;
       public            postgres    false    211            F           2606    16468    agent_com agent_com_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.agent_com
    ADD CONSTRAINT agent_com_pkey PRIMARY KEY (id_com);
 B   ALTER TABLE ONLY public.agent_com DROP CONSTRAINT agent_com_pkey;
       public            postgres    false    207            H           2606    16476    bus bus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bus
    ADD CONSTRAINT bus_pkey PRIMARY KEY (id_bus);
 6   ALTER TABLE ONLY public.bus DROP CONSTRAINT bus_pkey;
       public            postgres    false    209            D           2606    16457    chauffeur chauffeur_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.chauffeur
    ADD CONSTRAINT chauffeur_pkey PRIMARY KEY (id_chauf);
 B   ALTER TABLE ONLY public.chauffeur DROP CONSTRAINT chauffeur_pkey;
       public            postgres    false    205            B           2606    16444    client client_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    203            L           2606    16519    facture facture_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_pkey PRIMARY KEY (id_fac);
 >   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_pkey;
       public            postgres    false    213            N           2606    16504    agence agence_chauf_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.agence
    ADD CONSTRAINT agence_chauf_id_fkey FOREIGN KEY (chauf_id) REFERENCES public.bus(id_bus);
 E   ALTER TABLE ONLY public.agence DROP CONSTRAINT agence_chauf_id_fkey;
       public          postgres    false    211    2888    209            M           2606    16499    agence agence_com_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.agence
    ADD CONSTRAINT agence_com_id_fkey FOREIGN KEY (com_id) REFERENCES public.agent_com(id_com);
 C   ALTER TABLE ONLY public.agence DROP CONSTRAINT agence_com_id_fkey;
       public          postgres    false    211    207    2886            P           2606    16525    facture facture_ag_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.agence(id_ag);
 D   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_ag_id_fkey;
       public          postgres    false    2890    211    213            O           2606    16520    facture facture_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.client(id_client);
 H   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_client_id_fkey;
       public          postgres    false    2882    203    213            �   '  x�mUێ�6}&��_P�/{{L�A�n����}���%G�������d�B�¤��sHNK���S:����V�Y��4�Kj���{q��4��֒����{z�k>S�kr��F��Vt%�2g	�$]]����z��`L�kf)	7͎�,N��5}��,��Q�q�z�5�����wSrBY�E-qEԑ�n��[��2�؎.���d�jT������	ʬ�Ɓ�z�{4��%/&W�����CLg�d�b��_ܺ��}=�^���4�p_�/)�bHA�m�w���6U�Z�E� ��0p���Q��-A����b/1)�Yb.���iටR�qK.s3E�B�7��~�����$tRO!�2���?"n��7�%�5��R��n�=d���4p{C��V����қ��V������b3�T���0ג	�!��-|�����]��[A5{"j����$��T�b�S���!h�*�:E_�EV�>:��/!n஥O�ja'w�ңK~S��Y����N¨V�XO��59x�����ޅ�����- �Ē�AjC��Lwup�ϗ��RFw _L.���.�$�]�&沈�P�y�2���G�����6H0pwk�G:x���4E�]����;��旃���\4թ���R5����==�]1���/���FR�<ǉ�e���AiE{X]ͫo;�m��fྥ'��bwcwC�Xg��i�;lDI�x�R���O&��������ɮM������@窦NQ�.����_u9�G9~o��?v��d���w҄��ؠ��7
��o����&�ui<5p_��d�G7��`	����n��#g��	�����	�4h7a͹o"dࡥ��P=f6�|�a���E����J�>P�	Xso텸��MZ�~)�`���7k{����bzqo�ض��}�x��<�%��� ���>h���xr�Z�ll+_V�5��H��?X��]�C�̢#�
�x��_ҿ��ul�w�D��	�l۰������ư�M�PW�����" f�~b�� �i�      �   b  x�UVْ�:}N�>`�ŏ��4���=1/�XSB�e�*��ϑ���FTP�le�<KF�2;+\c5�siل[A[y��t���9	���
�E�Z��A���j���,�bc������~���R��5u���L)���ĕ���k�1[O6���Ś�Nw��|��-�9�QA]��]�턥�⺔��F	e�����OO��d�cE/��_�-)��T�Q��셷�x��tE�uЧu���R�h����/�㈟�Bׂ���rg,�o���Y�7J��.��H��t�h�8�NcY!�Jmn��E��YH-hf��� e��ԕѢ��q��!����
���R��RС��*h0�}�o���1A5�I��,pB���h"nW��oZ��(��5�^>ƀ�b����~�J��1�4�)�h�^ٖc���G�QH^��3�*�FQ��M�����Mq'8JR�����4�xw�W (/K�&1�t�r+�m,@�'a�D)����[�Rx�v��`%j�����~�;\!Δ�$�1oYv�t�����:�l�/� 5�����(K�#%�_%���R*^Е7֗�ͳcƲ�aq��4Ϧ�<c��:�e�=$*��h�]���Z\I5��\ԧ���h�u�m�q��-���_�i��$�*�)��,���%@�éi�^k�}׍��Hc=���K�j<�cCtt=I�;���x��Oh�D`�}C1}>�e �gNh���\.P��lf��A�����+��)[Z�����-�g)T����I�����j�酔� �"����\�*�J8­4���E����TN\o8u��DЋh��|_�g�eq�Ow�K�d���fw����(�����'��݀z=���.�g�AOQ�z,��c[#Yw/��pA/�=W�ͬ��pWYs�x����P?9�y�n�S�K(���R������?�m��@���`� b$^)�{�ǯt�OK�ק�*�6Y��`�薃�R�ڞ�����k-;�����~<$��΁�5�L�}�w^r6���)瓺�!M*�J0 p�%��q��Z�3[r����
���xF��N�4�6��
x�>`�3�>�D���)�	�|y��x�D��I�+L����H��Q��*��Oh��D��o�(�q���D![���W������SP&e��'P��ڵ�/�x��^�����r,���c�מ���a/���p��g狐�xv��AS�L�f��<t��D��[e��A~6I���Yg�IqB+����9��s���Q>rd���{�I� ���uk��pbXlF��p���L��DkA<�쌓����B!�
��Vݹ����3���O��i���������+q�:PcbL0���@��></�E�\k�kG����m-���O:`G����.+;`�r�S��q8`�l���z�c�X�z�lT	�ӡ9f���5��OObe(�$�;W��㏼����U�x&A�Q�G�)��`"m����5^�ID�n!�wN�3�����+�q������(�Z�)h�.a!G)�wه? d�p����SL�ԯ_��M�咍7����h�'���7�)ù����aK���!<�IB���\��|�/�7���'��C�:�~��W㙏�J�1$i6���\-f�q�v�r���R�r�F
�g��S�R,"xǀ����$�EAI:��1ד���qLE�)ɐ֭F�g���#8}��|u�t��������5A*m��]Z����S?J��K�(�����&�8~')-4�C �7�rZ4�c����>7o�px\��> �7�;���0�{��$�����ш�X�� �+��      �   �  x�uU�v�F]c�B?����I'����s��HB��3��#}}1��H�ͅVW ��ŝ>h���2���Q��5k�+�ݢ��\A�@�-��a�7�!R�cM�����v�w�>wTh,Tѳ�Ʋ�:j�#<4��iP��k�/�E�ɶ�j��Uu�HR�0@��+�y�SS���T�)tԴ��U�+_�Z��Z�+�aI&�rP��ZS�S�B��(���[�nȪ�
�q�q|UҿPtTB�֚�����]�gUStGJ����p�,Is=��-�R��Ml��S�#w��%w���}l/��38��[�l���[w*Ý��e���+߭��Ȩ�>�Sf�RyO�w*�£5�.Ί�� �q�Rp����6�y.�g�:7^2����]�� g{e���}(H	��Cl�#p�#\
w<�㦰�	����Tq�MaU��0�@c���Hxl�ԡPi7���B!y��s\�J��=v�92^�ޠ�6�V�h����#.�犴J'��5���rT��hO�ުt
���hw)�ù���k<P���	lx�M��������i���v�\���}&+����d]ң��m}XT��ug�x��`Vq����g)|q��@��I���-\h��T܈E<���`��N�Ϫ,�^i[M��9�e�ʁ�a)VT���1,�� �9t��:�C��R�q&1Vy'�·������M�yC�p��D�,�i�z��4��Em�)b����饿���I_��W�DN��[�>�d�����%�E%n/ˊ���*OO�$�����n���0;5�y�8?{�U��CK:Z�b����G&?����l�zr�'ݖ�bx��S��������G�@6�±D��g�X��r�A��m�b+�&����~�ޓ;_8�%P�����J��s�      �   z  x�eV�v�:|n~~ 3��Z+�vD�7'g^ �%a��|�-Hv�s�Ŷ,]]U]͘&��j7�N��~O�x�gbc��G�Jk��V>Jh2[�f�/�B|�����bU��{�^,f+��Q�4���D�;�9���5)����(V��|5�]ǎ���XZ۲(��+��R��2*��e!�i^�ڋ�?)K���x�ʉ�|m��I��-�-W\3M��^�*C�@<���'l<;2���8`��?�����꤭Sx��7�f�ȶ�5��t�d�G�֞��V����Nz���{k(˫�? i�|�FC*�ʱo��v��H#��ޘ�,f��Mî��x�;��͌��� �s���Z��)/�5b�lۢ7�o�z�=���b��JϬ���QO�~�Ђ�8���_qΟh+��S����wG%q6�����_A&����K����'ʀ�?t����pCJE�j�庫�`�WtX�$�^��=n:~r�Ykpg����tu�)M-~���?�uS��d�#��Z�
�|fT��8��W�ғC� }��b�5�Ѳb:�$9�}Z���}����6�pԋ�T��Oź�+�� p ��ҫӓF��(�����ܹpnH�}����Q���}8}s��M���g��^tՉ�TL98�}
(�3Jz�X�^1;�1����u��;(�ك�| [���ږ��Q�$�w�wu����*k��ƪ���A�����6|�$����xTL� S|�ۗ0p;')=� �&y
c��|��c�T�u���=ɽ����2@T�?���<��N���Wv�C�3�>Jr��=�um�(OA0z2�|���(���?��¦c�m0�h�O[u���?8ŵ�-z�!kar�c�_][�Ԁ��}�i����Z��baMm�u��c�]�]�Dɐ xmT�F�!`<�Z�SQb�Ts�?�kT��05(Q�0<T�F�t����!��Gs۵�/��Qڣu�-�������J6���Z���(��JZe��w�5�X�P{���7$$  �$L�31��ͬxc������y5-v��J,hc�
�<���@&�?��{0iJ�-�X��L&�v&���\�����Xh�f���]-$x�ђ[Dd�߽)�������ţ���`���EiN|�=_���
�Ǝ��Z$*0N����/�kV����>���V�ãc���I<��~~#�L���]#�އ�v4�F�٠�XH�:'�ހJ[�l1V�t��蕲�i�,�z��w8�D�sH��r����7�h���	��?tJU��G��owŏb�-�	����<˛?＞de=zD�h�yZt��"yb�� M"X����
$������[�ʇ�c�(e���x��,��rw
0� �B�Yo��d��O���(Ka�[Xت�<ʓ4FhAl����H�B��V�f���w��cR@I�����(Wam [�(˩|����t-���� ���J���lr��f�\Ҳ���+sp�	��(~��}G٧	��;r]�~@�"(�DPEd��j0�!Q<�~�A����	bV�紐W�lH6��~;{�k�(�A�ܪ��S��|S/��J�$^>\x�����H����t���݋��()�������{��j�W�2�����p@���+#V�ĭ���(��o�S�      �   �  x��Z�r�8}n|�`˺K�v.�L��Lmj��"ak�Ѐ�����i\H:q2�bg^�H&�F��ӧ����Ҫ�箑5��d�v�˔5m�*U��su�WU����/������{c;�ݘ�u{ɷ���7��/r�o��aY1�g+u��gX���!�v��ry�ڬ�M��tY0�����v���~�͝�[�9����х��j1��rWH�.�������ŉd��r���d�t�oa���P)oJ���]&kx������]#��ު�p��ӹՊ����V�jºw8��d�5�.`x�hK�H,蓮k�˼��jlC�ʳ'�7&�r��H��5y��V�p��/C�
P�U����X�5�����Z�~��q�N���p'VQ��Ǯ{��?�M����C(��q$���T��q�Xѥ�����v-y(Y�YvxC�\2Z��FUY��JXtٶ�M�W2׍�!�7���pa��dK���0����bM�+أ�Rv��C�G�C�u���m�p��խl��6�-�����Y3V�5>4��:|�hm'[�������]���J�oᛎM�q��u�/�I�P�2�X��w'���
�p�6�����U��!_�BǴ�B7br��[}-�-M��p��W�op7<��"��3�Բm%��2[xW���	2\jK�M��l�n�+D��R�$_AjdE��U�g�����9!��
��,�,&S�|h`���m^*�IHg1�֞�B C����r��©��l/-���H`.Cj�}ou���b��1�0���3%~���� G3�BJ1��[�b�.`��L-i���p��r+9���Y6�%����$�3L��`dg<ۃ+�P>����ae~�K@^��g�D�>�R�]���7\Q��n��f��ֵc*��b���L5tQ�/j{ &|x��v�Y��!��;Px��i�L3
��>���E�8��0/�81Y!�ks�4]h�8�3��wy 傘��*,2�2CҏI�[Bm��yC�v�^�׵�ؖ�e ��է��l荳���5Vꖀg��&�i	�{�`/oŕ����>��c�
x�a�m�|�m�3�cw�>�yelA�M"�'��7�
�=��׬���4rKL�X��+��M��Ć���T�\*wڗ�x���j:���@�������$�3z�sSh�����L$�13'�q�����g�gփs�tN���h)��ە4�P,� Qz;a+3�����U�0�*�:��!饒�����B$�ѡ��.��#������.�Kz&-"Q��N���B��0)�C1lt���L����b�E�=�K�����g�B����+pT�"�C����W��^tO��1=�y�E�����^a��ݸD��{�֐���n+�kz�$fg�+j#�[���QK��M�#!]��h���-U�9��V*���e!���/4>��]zඈ�Foˬ�;�a��nA̦�� !��O8d±���k吆������s��&b6�W�5P��$�]{�9��8�y��M�ř���/�佉�-�%vAy�lLQ]� Zyx�(���4��O��B3�Z]���f6����%�L])��PkҢ�!�#B�{��?�2K��cz�pC�`<��]�VtaM�2��J�.{$�b����41�>n�{�!���l�����^�� ��K���az�;0>�!=�C1^,� fPD���K��t��ΜE��P��CKo�K}uE~y�/��ӗY��Q|���(�d1�Чk���ޕ�� 4��ڧ�1�BJ�
���R�tj�|��1T�Ly��@>��$x�7A,�$�4B����NVt�b�3���`�BG��+��K�|N���C�
�ܟ:���+�As�q�^���S��~Rp����E�t��xܙ�*u'�6�7�[��-}�
򮒷�����.�;l�4
V��ګ���?%ki>�����P�G�°M	(m���*�h�`�o�@9�4ߦ���΁Iհ����/C��- �⣂P��Qg��E�r���վW	2��.���+��'��+`Q��g��~C�.�Y����"��XL�
�j_j�IU0KY��O�/������Ȗ���i��Va�>*�X������=Tĩc�o�#s� EO��*��G�n�sC��<I:�w��X�?�ԓS4��� �
����� �X@&�\�}����
knu��N�d��M,���Bp�~��5�S��g�|r�S�Q�+hKtb��QK1K���R��I��X�Qd=�<N�J$�`��)�Ox�s��;����ZW<��s�FO0�K4p΢��'y��(�[{g�8�K"���,ɟ;u*�b9��-D�����o��'��%�S@���Ⱦm�h��d����k�$��:'D���j�{������R6� aS,�(�#�S�G��ǚ���5�B�KW��|�M��Q�Tݎ� ��=ޒ��L�\2	H�,���tt���(�7(A��`��W���4�^�V�-�~:�)�.��rq�*�Ӹ�T=鳄�Z�����.KmM���3_Z4z�>��
�t��q������� �C?��K}�ǜ�P�}]I�j�\@ׁ�����J����ҥE���[eϘ|̕��о�Vz���n�v��[u��?��#��!�J�b����9��<�9�Q�Tb��~�Lw� [�+���9�ۀ'n{ĞF��%�m	�.��k!���@�2X�!E>}�����@D����C�4��l=V����S�Z#6��B��&7UC���dOzVD�s�7ꆕ�P#�81|���}ߺ��l�>�g��*����W��#RO�(>���	7���}fJY�����#"y\�+���J�m��¯P��]�U��ǩ�k�B���{l�_�c���GmQ���!b=�w^��=�ҽ��qH���� ֐K;g��
�c��x��^�X/���
q��b�-�?��s7*兖\�N��M�/�k���+c��۠��{�&�t��x�������*��0�j�����Ml�Ш�*z��nO_=D����a|g~E�wcxƑ̀�AV�p(@�.��G��ΚC�J����^l����N6:��"W�<�^���SKuK��a:⩌�]��o�;�����������AMx\!��^	�:�	"A=��ٚ	&h���%0���Pl�ޏMx���C��wjP���-[]Lc����D$���l�`��7z�a��C���f�-���˥����߶�	�߼ݬ�E���ߡ1��~�ۇ)�Q���H��ĩ�&19��1�3��nu-��3�������!��      �   D  x�-SY��0���'(,j�u��(�� �KjKz��� ���C�@���m�#
�q�W�;*qBm�\����U���N<�E�k������VdB���]�0Ɍ9`K��?b���q>���+�F1##_�	3�1=���5��1
È��С
=˨m_�W;���b\�*:pb<&�Y�~��������j�\��*|7���iY�v�}��W�N��b"��}����G�舉��Œ�Zmm��(jX�G:B�ފ9�P�:<K�zGTE-<�Iy�{�@W��-�;��5�Q'�{�i�uX��qvaɩ����h�SO���D�a�c�iy�?���΢�����m�ӥŎ�ݷ�vkn	JMy(�����F�vp?��u-K��Yvt�c����Z���WB�Ĳ,Eyk[*��o��^;:|3`�AX�S��������}4�D�Y8����>+6���ךjN|�(�UA֍�L/�l�|>��(��r3XF*�M�>a���u-б.[�w�y�Y���q��#���z�%_ �&a梁ע�����{�n	ŏ�K{���ai'�����%"����     
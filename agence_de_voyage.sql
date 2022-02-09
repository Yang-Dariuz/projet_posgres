--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-02-09 10:17:19 WAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 16490)
-- Name: agence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agence (
    id_ag integer NOT NULL,
    nom_ag character varying(200),
    adresse character varying(200),
    quartier character varying(200),
    description text,
    com_id integer NOT NULL,
    bus_id integer NOT NULL,
    chauf_id integer NOT NULL
);


ALTER TABLE public.agence OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16488)
-- Name: agence_id_ag_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agence_id_ag_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agence_id_ag_seq OWNER TO postgres;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 210
-- Name: agence_id_ag_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agence_id_ag_seq OWNED BY public.agence.id_ag;


--
-- TOC entry 207 (class 1259 OID 16460)
-- Name: agent_com; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agent_com (
    id_com integer NOT NULL,
    nom character varying(200),
    prenom character varying(200),
    adresse character varying(200),
    tel character varying(200),
    sexe character varying(20)
);


ALTER TABLE public.agent_com OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16458)
-- Name: agent_com_id_com_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agent_com_id_com_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agent_com_id_com_seq OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 206
-- Name: agent_com_id_com_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agent_com_id_com_seq OWNED BY public.agent_com.id_com;


--
-- TOC entry 209 (class 1259 OID 16471)
-- Name: bus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus (
    id_bus integer NOT NULL,
    marque name COLLATE pg_catalog."default",
    puissance integer,
    coleur character(20),
    nom_agent name COLLATE pg_catalog."default"
);


ALTER TABLE public.bus OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16469)
-- Name: bus_id_bus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bus_id_bus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_id_bus_seq OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 208
-- Name: bus_id_bus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bus_id_bus_seq OWNED BY public.bus.id_bus;


--
-- TOC entry 205 (class 1259 OID 16449)
-- Name: chauffeur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chauffeur (
    id_chauf integer NOT NULL,
    nom_chauf character varying(200),
    prenom_chauf character varying(200),
    adresse character varying(200),
    tel character varying(20)
);


ALTER TABLE public.chauffeur OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16447)
-- Name: chauffeur_id_chauf_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chauffeur_id_chauf_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chauffeur_id_chauf_seq OWNER TO postgres;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 204
-- Name: chauffeur_id_chauf_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chauffeur_id_chauf_seq OWNED BY public.chauffeur.id_chauf;


--
-- TOC entry 203 (class 1259 OID 16436)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id_client integer NOT NULL,
    nom_client character varying(200),
    prenom_client character varying(200),
    adresse character varying(200)
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16434)
-- Name: client_id_client_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_client_seq OWNER TO postgres;

--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 202
-- Name: client_id_client_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;


--
-- TOC entry 213 (class 1259 OID 16511)
-- Name: facture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facture (
    id_fac integer NOT NULL,
    prix double precision NOT NULL,
    description text,
    client_id integer NOT NULL,
    ag_id integer NOT NULL
);


ALTER TABLE public.facture OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16509)
-- Name: facture_id_fac_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facture_id_fac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facture_id_fac_seq OWNER TO postgres;

--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 212
-- Name: facture_id_fac_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facture_id_fac_seq OWNED BY public.facture.id_fac;


--
-- TOC entry 2879 (class 2604 OID 16493)
-- Name: agence id_ag; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agence ALTER COLUMN id_ag SET DEFAULT nextval('public.agence_id_ag_seq'::regclass);


--
-- TOC entry 2877 (class 2604 OID 16463)
-- Name: agent_com id_com; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent_com ALTER COLUMN id_com SET DEFAULT nextval('public.agent_com_id_com_seq'::regclass);


--
-- TOC entry 2878 (class 2604 OID 16474)
-- Name: bus id_bus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus ALTER COLUMN id_bus SET DEFAULT nextval('public.bus_id_bus_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 16452)
-- Name: chauffeur id_chauf; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chauffeur ALTER COLUMN id_chauf SET DEFAULT nextval('public.chauffeur_id_chauf_seq'::regclass);


--
-- TOC entry 2875 (class 2604 OID 16439)
-- Name: client id_client; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 16514)
-- Name: facture id_fac; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture ALTER COLUMN id_fac SET DEFAULT nextval('public.facture_id_fac_seq'::regclass);


--
-- TOC entry 3032 (class 0 OID 16490)
-- Dependencies: 211
-- Data for Name: agence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agence (id_ag, nom_ag, adresse, quartier, description, com_id, bus_id, chauf_id) FROM stdin;
1	Kerrie	hac habitasse	ut	magna	1	1	1
2	Blair	a	enim	turpis	2	2	2
3	Betsy	ultrices aliquet	accumsan	pretium	3	3	3
4	Albie	orci mauris	mi	sapien	4	4	4
5	Nadya	felis	amet	elementum	5	5	5
6	Adria	semper	potenti	est	6	6	6
7	Norrie	adipiscing	diam	vitae	7	7	7
8	Diana	diam in	pellentesque	suspendisse	8	8	8
9	Cory	cras	donec	sagittis	9	9	9
10	Oates	convallis	proin	cum	10	10	10
11	Olimpia	et magnis	accumsan	nam	11	11	11
12	Theodoric	risus semper	laoreet	posuere	12	12	12
13	Caria	ipsum dolor	mauris	aliquam	13	13	13
14	Querida	vel	nonummy	ut	14	14	14
15	Lamar	sapien arcu	condimentum	molestie	15	15	15
16	Winny	nam	aliquam	sit	16	16	16
17	Carrissa	odio curabitur	lectus	in	17	17	17
18	Daune	id justo	quis	turpis	18	18	18
19	Tania	rutrum	cras	sodales	19	19	19
20	Rene	volutpat	lorem	ultrices	20	20	20
21	Gertie	vivamus metus	condimentum	ante	21	21	21
22	Torrance	odio	nisl	imperdiet	22	22	22
23	Ansley	pede malesuada	venenatis	sapien	23	23	23
24	Alfy	sapien	faucibus	luctus	24	24	24
25	Luciano	rutrum nulla	consectetuer	odio	25	25	25
26	Eran	sapien sapien	hac	mauris	26	26	26
27	Lucio	blandit	libero	auctor	27	27	27
28	Elisabeth	blandit	ut	vulputate	28	28	28
29	Karina	sapien placerat	leo	euismod	29	29	29
30	Kristin	nulla ultrices	mauris	vitae	30	30	30
31	Trina	volutpat erat	natoque	blandit	31	31	31
32	Kearney	ligula	diam	dis	32	32	32
33	Herman	in	cras	in	33	33	33
34	Dyan	sed	tortor	nulla	34	34	34
35	Jephthah	ultrices	ultrices	sapien	35	35	35
36	Laverna	at diam	et	venenatis	36	36	36
37	Berne	sit	enim	vel	37	37	37
38	Dav	est	vehicula	ut	38	38	38
39	Beitris	lectus	eros	elementum	39	39	39
40	Vinni	duis ac	id	primis	40	40	40
41	Robbie	id ornare	volutpat	turpis	41	41	41
42	Dunn	at velit	dapibus	libero	42	42	42
43	Artemis	scelerisque	pellentesque	velit	43	43	43
44	Giorgi	scelerisque	justo	blandit	44	44	44
45	Nathanael	lobortis	nulla	ut	45	45	45
46	Lyle	est risus	rutrum	erat	46	46	46
47	Brock	montes nascetur	in	maecenas	47	47	47
48	Irwin	nec condimentum	molestie	luctus	48	48	48
49	Alma	quis	duis	quis	49	49	49
50	Katheryn	non	magna	dolor	50	50	50
\.


--
-- TOC entry 3028 (class 0 OID 16460)
-- Dependencies: 207
-- Data for Name: agent_com; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agent_com (id_com, nom, prenom, adresse, tel, sexe) FROM stdin;
1	MoRreturn Hair Care	Pipet	3979 Nobel Street	nisi	in
2	Hemorrhoidal Cooling	Gornar	59 High Crossing Alley	urna	aliquam
3	VANCOMYCIN HYDROCHLORIDE	Baress	8 Almo Center	blandit	dui
4	ATORVASTATIN CALCIUM	Whiskerd	03 Division Way	lacus	metus
5	Nu Skin 180 Degree UV Defense Hydrator SPF 18	Guislin	45 Coolidge Hill	urna	quam
6	Butalbital, Acetaminophen and Caffeine	Grolle	269 Shoshone Way	ut	lacus
7	Terazosin hydrochloride	Tharme	68695 Sycamore Place	sapien	fermentum
8	Cephalexin	Oyley	8068 Dapin Road	aliquet	in
9	Cephalexin	Wallbrook	6209 Oneill Pass	diam	quam
10	Caduet	Atthow	13 Buhler Street	platea	felis
11	Lidodextrapine	Eddowis	898 Erie Court	libero	pede
12	The Medicine Shoppe Chest Congestion Relief	Alder	2 Bay Avenue	velit	vel
13	Baby Magic Diaper Rx	Keddle	384 Magdeline Court	hac	mauris
14	AHAVA ACTIVE DEADSEA MINERALS	Tipperton	5 Ryan Pass	sem	luctus
15	Rose Quartz Skin Protection	Norquoy	54486 Maple Road	id	dignissim
16	Halls	Spring	08 Knutson Terrace	elit	est
17	Monistat 7 Combination Pack	Brent	841 Darwin Alley	libero	id
18	Atenolol	Piggens	57 Golf Hill	posuere	at
19	Body	Lewcock	23 Mayfield Plaza	lobortis	phasellus
20	Aspergillus fumigatus	Cancellario	057 Marcy Junction	tempus	vitae
21	SMOKING WITHDRAWAL SUPPORT	Masserel	59386 Clemons Crossing	amet	lectus
22	Fluoxetine	Backen	14382 Anthes Point	vitae	eget
23	Salt Grass	Goathrop	364 Vernon Court	lacus	nulla
24	Estradiol Transdermal System	Roddan	5617 Alpine Point	nullam	pretium
25	Amerfresh Clear	Masarrat	980 Sachtjen Alley	sit	in
26	Olanzapine	Nattriss	14955 Nevada Drive	vel	luctus
27	Childrens Pain Relief	Lotze	19 Porter Lane	nulla	congue
28	Rite Aid	Dunkerk	365 Carberry Court	sodales	erat
29	XtraCare Antibacterial Hand Cleanse	Sellman	98802 Portage Terrace	nunc	eu
30	Amerfresh	Eacott	95410 Leroy Street	nam	erat
31	LidoPro	Abyss	80504 Dunning Crossing	pede	sagittis
32	Sertraline Hydrochloride	Gabey	34 Michigan Point	felis	elementum
33	Hydrocodone Bitartrate And Acetaminophen	Dumphrey	6560 Dunning Trail	maecenas	morbi
34	Midazolam	Von Helmholtz	1595 Bluestem Drive	ut	nullam
35	Hydrocortisone	Greedier	301 Coolidge Parkway	nec	proin
36	Afeditab	Fain	0 Pennsylvania Point	platea	vestibulum
37	PEG-3350 and Electrolytes	Crush	33 Chinook Hill	in	accumsan
38	Prevent	Earingey	96 Valley Edge Place	morbi	nulla
39	EB306 NASAL DECONGESTANT	Pinfold	98797 Graedel Place	purus	eleifend
40	valsartan and hydrochlorothiazide	Vitte	68115 Melrose Circle	arcu	in
41	Zyprexa	Ife	1 Dexter Place	nibh	ultrices
42	Family Wellness	Parnaby	9 Butterfield Alley	ridiculus	orci
43	ADVANCED CELL BOOSTING EX EYE	Hawtrey	396 Hovde Place	turpis	integer
44	VETERAN SHIELD 24	Charrington	5 Rowland Crossing	quis	est
45	HEADACHE/MIGRAINE RELIEF	Kinkaid	960 Annamark Lane	sem	consequat
46	Desonide	Milmoe	49772 Cambridge Hill	ante	curae
47	Nystatin	Ballsdon	43899 Saint Paul Drive	tortor	aliquam
48	Acyclovir	Sprowell	514 Pine View Alley	vestibulum	rutrum
49	Invirase	Fonteyne	2 School Avenue	sit	etiam
50	Risperidone	Mattioli	0110 Manitowish Way	in	enim
\.


--
-- TOC entry 3030 (class 0 OID 16471)
-- Dependencies: 209
-- Data for Name: bus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus (id_bus, marque, puissance, coleur, nom_agent) FROM stdin;
1	Flexidy	3	orci                	Skilith
2	Voyatouch	11	sapien              	Avavee
3	Ronstring	13	maecenas            	Browseblab
4	Hatity	11	lorem               	Omba
5	Flexidy	11	non                 	Babbleopia
6	Cardguard	12	eu                  	Wikizz
7	Keylex	7	semper              	Brightdog
8	Alphazap	14	nunc                	Voonder
9	Keylex	13	cubilia             	Kayveo
10	Bigtax	13	sapien              	Jatri
11	Konklux	10	cursus              	Edgepulse
12	Holdlamis	20	felis               	Npath
13	Tin	13	integer             	Livefish
14	Latlux	20	urna                	Thoughtworks
15	Lotlux	11	donec               	Zooveo
16	Home Ing	8	curae               	Meetz
17	Sonair	13	amet                	Zazio
18	Fintone	4	vestibulum          	Browseblab
19	Wrapsafe	12	libero              	Digitube
20	Temp	7	quisque             	Trilith
21	Konklab	6	porta               	Kaymbo
22	Sonair	3	lacus               	Fiveclub
23	Greenlam	17	quisque             	Twinte
24	Lotlux	1	habitasse           	Skinder
25	Overhold	14	volutpat            	Midel
26	Stronghold	1	penatibus           	Tekfly
27	Otcom	4	curabitur           	Gigaclub
28	Fintone	6	vivamus             	Thoughtmix
29	Sonair	11	posuere             	Tekfly
30	Treeflex	20	vel                 	Cogilith
31	Asoka	8	curabitur           	Zoonoodle
32	Prodder	16	tellus              	Trupe
33	Stim	7	tincidunt           	Meejo
34	Trippledex	8	fusce               	Yacero
35	Pannier	9	eget                	Meetz
36	Cardify	18	sed                 	Kayveo
37	Y-Solowarm	15	sem                 	Zoozzy
38	Tampflex	5	eleifend            	Yambee
39	Zoolab	18	velit               	Kayveo
40	Veribet	8	sed                 	Kwimbee
41	Quo Lux	17	suscipit            	Skyble
42	Latlux	2	nulla               	Gabtune
43	Veribet	13	porta               	Ntag
44	Opela	8	diam                	Skimia
45	Overhold	15	sed                 	Miboo
46	Zoolab	14	vel                 	Izio
47	Konklux	8	malesuada           	Linkbridge
48	Latlux	2	proin               	Mydeo
49	Temp	13	aenean              	Chatterbridge
50	Otcom	13	ante                	Miboo
52	toyota	12	bleu                	zepekinio
\.


--
-- TOC entry 3026 (class 0 OID 16449)
-- Dependencies: 205
-- Data for Name: chauffeur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chauffeur (id_chauf, nom_chauf, prenom_chauf, adresse, tel) FROM stdin;
1	CHANTIX	Jobb	61954 Portage Hill	velit
2	CENTER-AL - HOLCUS LANATUS POLLEN	Boggas	84692 Bunting Road	in
3	TIZANIDINE	Tuerena	0 Moose Alley	sociis
4	Senna-Lax	Ickovitz	42870 Fair Oaks Trail	velit
5	Recede	Dowbakin	47 Kipling Center	nam
6	Donepezil Hydrochloride	Wheowall	50 Cascade Park	neque
7	Bisoprolol Fumarate	Malbon	3 Myrtle Trail	lectus
8	Sucrets Cough	Van Merwe	34384 Sommers Point	turpis
9	Enalapril Maleate	Gulliford	5 Vernon Crossing	justo
10	ZANAFLEX	Steely	0 High Crossing Center	sit
11	Babyteeth	Rabat	157 Bonner Trail	feugiat
12	Nortriptyline Hydrochloride	Starton	90 Sullivan Trail	volutpat
13	Acid Reducer	Reynalds	8601 Cambridge Trail	tellus
14	Lamivudine and Zidovudine	Mandeville	639 Talisman Road	nisl
15	Tretinoin	Kringe	3921 Dryden Place	pharetra
16	Levofloxacin	Rosander	0143 Northfield Way	lacus
17	Laxative	Klambt	4 Service Road	purus
18	Ibuprofen	Stannis	5172 Prentice Park	et
19	Diazepam	Iowarch	23 Del Mar Center	ante
20	Rocky Mountain Juniper	Triplet	63573 Melody Pass	nulla
21	Chlorhexidine Gluconate	Biddiss	6374 Morning Center	eget
22	Sucrets Cough	Heggie	175 Dorton Crossing	primis
23	Flucelvax	Deelay	57261 Mifflin Parkway	habitasse
24	Childrens Ibuprofen	Stelfox	6573 Gerald Way	pede
25	Gillette Odor Shield	Knappen	59408 Kedzie Avenue	aliquet
26	Rifampin	Friedlos	17 Parkside Terrace	fusce
27	Paroxetine	Buttress	10145 Londonderry Point	rutrum
28	PredniSONE	Castillo	13 Schlimgen Crossing	mi
29	Acetic Acid	Simao	1149 Dovetail Hill	suspendisse
30	OcuMend	Roalfe	4 Sycamore Pass	libero
31	Diclofenac Potassium	Stigger	9 Mosinee Crossing	tristique
32	CLE DE PEAU BEAUTE FOUNDATION L	Poston	053 John Wall Center	risus
33	DR DENTAL CARE 250ML	Doneld	908 Killdeer Court	aliquam
34	Mesalamine	Twinbourne	0076 Hoard Point	mauris
35	Fever - Infection	Breewood	553 Arapahoe Center	eleifend
36	SPF 15 Protective Balm with UVA/UVB Sunscreens	Leadbeater	8899 Union Lane	curae
37	Sodium Bicarbonate	Saunderson	54038 Prentice Hill	in
38	COMPLETE FLU CARE	Ind	489 Nobel Hill	ultrices
39	MIRTAZAPINE	Marmion	0884 Merry Court	hac
40	Hazelnut	Lukesch	121 7th Junction	nec
41	Amantadine Hydrochloride	Leadbitter	1 Haas Drive	lacus
42	Diclofenac Sodium	Cherrison	40967 Vidon Avenue	nibh
43	Silace	Alecock	5231 Glendale Crossing	varius
44	NAPROXEN	Stovell	170 Sherman Circle	arcu
45	SHISEIDO ULTIMATE SUN PROTECTION PLUS	McIlory	8584 Pine View Hill	nibh
46	Conex	Tweddle	31 Ilene Lane	condimentum
47	Levetiracetam	Purry	6 Stone Corner Place	turpis
48	Arth RX Topical Analgesic	Shurmore	029 Manufacturers Crossing	felis
49	Allergy	Tuer	8293 3rd Center	quam
50	Kidney Tonic	Antalffy	8841 Gina Street	est
\.


--
-- TOC entry 3024 (class 0 OID 16436)
-- Dependencies: 203
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id_client, nom_client, prenom_client, adresse) FROM stdin;
1	Juliet	Dunan	nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget
2	Collette	Clemmensen	augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi
3	Magdalena	Doggett	ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum
4	Arie	Lynds	sapien non mi integer ac neque duis bibendum morbi non quam
5	Simmonds	Harriagn	nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy
6	Mamie	Thaim	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus
7	Gerianna	Orts	eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat
8	Jeanne	Gather	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas
9	Roz	Tinghill	hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in
10	Marika	Panter	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis
11	Clair	Anscombe	cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet
12	Wynnie	Kirsche	est et tempus semper est quam pharetra magna ac consequat metus sapien ut
13	Donia	Yandle	et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent
14	Melisenda	Bartoloma	suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient
15	Tracy	Gilleon	consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo
16	Fiann	Blazeby	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat
17	Timofei	Birnie	in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices
18	Dedra	Prandi	magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus
19	Lurette	Morais	velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla
20	George	Poundsford	curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor
21	Cynthie	Johnston	dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient
22	Bordy	Perl	commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel
23	Nicol	Delacroix	orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est
24	Guenevere	Collough	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque
25	Alicia	Fearne	sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque
26	Carlita	Masserel	vulputate justo in blandit ultrices enim lorem ipsum dolor sit
27	Gerry	Fri	luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi
28	Nolly	Ambrosio	lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada
29	Noll	Eubank	lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur
30	Andrus	Rohan	in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis
31	Ring	Benoi	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at
32	Myer	Elintune	nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris
33	Hort	Coyte	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur
34	Amalita	Roiz	lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc
35	Florie	Woodman	ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et
36	Hailee	Leonards	quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie
37	Broddy	Disley	lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu
38	Angelika	Filyaev	lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum
39	Laetitia	Ahlin	lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat
40	Denys	McGiff	elit ac nulla sed vel enim sit amet nunc viverra dapibus
41	Skippy	Lightbody	lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia
42	Luce	Ferrao	ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor
43	Donal	Garlett	diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed
44	Ranna	Pledge	a ipsum integer a nibh in quis justo maecenas rhoncus aliquam
45	Theo	Mettricke	velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel
46	Else	Fison	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt
47	Barbabas	Shillinglaw	suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero
48	Darb	Abbott	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti
49	Arleen	Delgado	bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed
50	Nial	Reeve	porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea
51	Deedee	Ierland	lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu
52	Josephina	Pedlingham	posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac
53	Tracee	Julian	morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam
54	Yuri	Molineaux	nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac
55	Rivkah	Alelsandrowicz	imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue
56	Franklin	Meeking	ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at
57	Rory	Heimes	nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam
58	Felicity	Borthram	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras
59	Camila	Baudichon	aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum
60	Aurore	Sawnwy	etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate
61	Adelle	Cotter	a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam
62	Rosa	Helgass	luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet
63	Kanya	Case	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas
64	Shamus	Stare	consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat
65	Abra	Faulder	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus
66	Rora	Walklot	aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate
67	Huntington	Kemwall	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
68	Raul	Youthed	cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus
69	Lissie	Ghioni	pellentesque eget nunc donec quis orci eget orci vehicula condimentum
70	Fransisco	Wulfinger	nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
71	Elden	Borris	venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet
72	Griffy	De Cristofalo	nisl duis ac nibh fusce lacus purus aliquet at feugiat
73	Meggi	Drewson	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
74	Leesa	Hastin	vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque
75	Calla	Manley	amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris
76	Elisha	Chevolleau	convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate
77	Ethyl	Lippitt	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor
78	Candide	Lincoln	magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient
79	Donnie	Leving	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis
80	Curtis	Kluger	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris
81	Shirleen	Cohalan	nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede
82	Dory	Dumbelton	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
83	Menard	Ostick	tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse
84	Northrop	Pepi	lectus pellentesque at nulla suspendisse potenti cras in purus eu
85	Aguste	Scholte	dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut
86	Arden	Baseggio	vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
87	Carmella	De Biaggi	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo
88	Linet	Hooke	sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium
89	Waneta	Abbots	ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam
90	Hewe	Nardrup	eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor
91	Demetria	Croyser	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis
92	Morganica	Face	eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices
93	Andrew	Onion	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam
94	Rolph	Baudry	nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat
95	Orlando	Colleran	dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh
96	Roscoe	Vasilyonok	praesent lectus vestibulum quam sapien varius ut blandit non interdum in
97	Sharity	Gatch	nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget
98	Englebert	Kesley	vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa
99	Ina	Beggi	id massa id nisl venenatis lacinia aenean sit amet justo
100	Courtney	Gatus	duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti
\.


--
-- TOC entry 3034 (class 0 OID 16511)
-- Dependencies: 213
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facture (id_fac, prix, description, client_id, ag_id) FROM stdin;
1	22	nonummy	1	1
2	45	sapien	2	2
3	97	turpis	3	3
4	96	est donec	4	4
5	63	ante	5	5
6	9	nec dui	6	6
7	90	lacus	7	7
8	86	mattis	8	8
9	99	morbi vel	9	9
10	2	sed	10	10
11	96	nulla	11	11
12	13	arcu	12	12
13	39	nunc purus	13	13
14	11	ut	14	14
15	72	risus	15	15
16	58	eu	16	16
17	91	mauris sit	17	17
18	66	accumsan felis	18	18
19	62	volutpat	19	19
20	76	eros vestibulum	20	20
21	8	donec	21	21
22	89	iaculis diam	22	22
23	59	maecenas	23	23
24	96	varius	24	24
25	91	amet lobortis	25	25
26	37	ac diam	26	26
27	62	nullam	27	27
28	36	congue eget	28	28
29	21	quam nec	29	29
30	84	nulla	30	30
31	62	vitae ipsum	31	31
32	31	quam sollicitudin	32	32
33	1	eros	33	33
34	1	donec	34	34
35	92	id luctus	35	35
36	26	ut nulla	36	36
37	42	at diam	37	37
38	12	vel	38	38
39	22	mauris	39	39
40	37	platea dictumst	40	40
41	84	imperdiet et	41	41
42	48	in	42	42
43	52	ut	43	43
44	46	vitae	44	44
45	7	a	45	45
46	60	sit	46	46
47	80	nulla ultrices	47	47
48	49	ante vel	48	48
49	55	nulla eget	49	49
50	93	cubilia curae	50	50
\.


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 210
-- Name: agence_id_ag_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agence_id_ag_seq', 1, false);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 206
-- Name: agent_com_id_com_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agent_com_id_com_seq', 1, false);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 208
-- Name: bus_id_bus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bus_id_bus_seq', 1, false);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 204
-- Name: chauffeur_id_chauf_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chauffeur_id_chauf_seq', 1, false);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 202
-- Name: client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_client_seq', 1, false);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 212
-- Name: facture_id_fac_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facture_id_fac_seq', 1, false);


--
-- TOC entry 2890 (class 2606 OID 16498)
-- Name: agence agence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agence
    ADD CONSTRAINT agence_pkey PRIMARY KEY (id_ag);


--
-- TOC entry 2886 (class 2606 OID 16468)
-- Name: agent_com agent_com_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent_com
    ADD CONSTRAINT agent_com_pkey PRIMARY KEY (id_com);


--
-- TOC entry 2888 (class 2606 OID 16476)
-- Name: bus bus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus
    ADD CONSTRAINT bus_pkey PRIMARY KEY (id_bus);


--
-- TOC entry 2884 (class 2606 OID 16457)
-- Name: chauffeur chauffeur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chauffeur
    ADD CONSTRAINT chauffeur_pkey PRIMARY KEY (id_chauf);


--
-- TOC entry 2882 (class 2606 OID 16444)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);


--
-- TOC entry 2892 (class 2606 OID 16519)
-- Name: facture facture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_pkey PRIMARY KEY (id_fac);


--
-- TOC entry 2894 (class 2606 OID 16504)
-- Name: agence agence_chauf_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agence
    ADD CONSTRAINT agence_chauf_id_fkey FOREIGN KEY (chauf_id) REFERENCES public.bus(id_bus);


--
-- TOC entry 2893 (class 2606 OID 16499)
-- Name: agence agence_com_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agence
    ADD CONSTRAINT agence_com_id_fkey FOREIGN KEY (com_id) REFERENCES public.agent_com(id_com);


--
-- TOC entry 2896 (class 2606 OID 16525)
-- Name: facture facture_ag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.agence(id_ag);


--
-- TOC entry 2895 (class 2606 OID 16520)
-- Name: facture facture_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.client(id_client);


-- Completed on 2022-02-09 10:17:19 WAT

--
-- PostgreSQL database dump complete
--


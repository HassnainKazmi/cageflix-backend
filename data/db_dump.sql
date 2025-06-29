--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-06-29 20:40:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

CREATE DATABASE IF NOT EXISTS ""


--
-- TOC entry 220 (class 1259 OID 40145)
-- Name: cast; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."cast" (
    tconst character varying NOT NULL,
    nconst character varying NOT NULL,
    category character varying,
    job character varying,
    characters character varying
);


ALTER TABLE public."cast" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 40119)
-- Name: persons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persons (
    nconst character varying NOT NULL,
    "primaryName" character varying NOT NULL,
    "birthYear" character varying,
    "deathYear" character varying,
    "primaryProfession" character varying
);


ALTER TABLE public.persons OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 40133)
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    tconst character varying NOT NULL,
    "averageRating" numeric,
    "numVotes" integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 40126)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    tconst character varying NOT NULL,
    "titleType" character varying,
    "primaryTitle" character varying NOT NULL,
    "originalTitle" character varying,
    "isAdult" boolean,
    "startYear" character varying,
    "endYear" character varying,
    "runtimeMinutes" character varying,
    genres character varying
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 40145)
-- Dependencies: 220
-- Data for Name: cast; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."cast" (tconst, nconst, category, job, characters) FROM stdin;
tt0082064	nm0000417	actor	\N	Crispin
tt0082064	nm0774337	actress	\N	Jill
tt0082064	nm0000115	actor	\N	Nicholas
tt0082064	nm0682161	actress	\N	Julie
tt0082064	nm2845184	actor	\N	Kevin
tt0082064	nm2295980	actress	\N	Lisa
tt0082064	nm1721648	actor	\N	David
tt0082064	nm0732198	actress	\N	Janet
tt0082064	nm0556750	actor	\N	Mr
tt0082064	nm0178527	actor	\N	Band
tt0086216	nm0000369	actor	\N	Rusty
tt0086216	nm0000620	actor	\N	The
tt0086216	nm0000178	actress	\N	Patty
tt0086216	nm0000454	actor	\N	Father
tt0086216	nm0769311	actress	\N	Cassandra
tt0086216	nm0001759	actor	\N	Steve
tt0086216	nm0000115	actor	\N	Smokey
tt0086216	nm0001606	actor	\N	B
tt0086216	nm0000401	actor	\N	Midget
tt0086216	nm0810342	actor	\N	Patterson
tt0086525	nm0000115	actor	\N	Randy
tt0086525	nm0286033	actress	\N	Julie
tt0086525	nm0197354	actress	\N	Loryn
tt0086525	nm0100889	actor	\N	Tommy
tt0086525	nm0245650	actor	\N	Fred
tt0086525	nm0390503	actress	\N	Stacey
tt0086525	nm0001534	actress	\N	Suzi
tt0086525	nm0857297	actress	\N	Samantha
tt0086525	nm0002517	actress	\N	Beth
tt0086525	nm0761687	actor	\N	Drivers
tt0086969	nm0000546	actor	\N	Birdy
tt0086969	nm0000115	actor	\N	Al
tt0086969	nm0363157	actor	\N	Doctor
tt0086969	nm0056310	actor	\N	Mr
tt0086969	nm0949744	actress	\N	Hannah
tt0086969	nm0456124	actor	\N	Renaldi
tt0086969	nm0279297	actress	\N	Mrs
tt0086969	nm0002667	actor	\N	Birdy
tt0086969	nm0756050	actress	\N	Birdy
tt0086969	nm0752763	actor	\N	Joe
tt0087089	nm0000152	actor	\N	Dixie
tt0087089	nm0002138	actor	\N	Sandman
tt0087089	nm0000178	actress	\N	Vera
tt0087089	nm0571188	actress	\N	Lila
tt0087089	nm0001364	actor	\N	Owney
tt0087089	nm0001664	actor	\N	Dutch
tt0087089	nm0000115	actor	\N	Vincent
tt0087089	nm0307255	actor	\N	Abbadabba
tt0087089	nm0001304	actor	\N	Frenchy
tt0087089	nm0893862	actress	\N	Tish
tt0087968	nm0000576	actor	\N	Henry
tt0087968	nm0001527	actress	\N	Caddie
tt0087968	nm0000115	actor	\N	Nicky
tt0087968	nm0439482	actor	\N	Mr
tt0087968	nm0017377	actress	\N	Mrs
tt0087968	nm0795289	actor	\N	Mr
tt0087968	nm0000417	actor	\N	Gatsby
tt0087968	nm0397135	actress	\N	Gatsby
tt0087968	nm0549475	actor	\N	Al
tt0087968	nm0621357	actor	\N	Soldier
tt0090769	nm0000115	actor	\N	Ned
tt0090769	nm0197664	actress	\N	Margaret
tt0090769	nm0001626	actor	\N	Knox
tt0090769	nm0622544	actor	\N	Bill
tt0090769	nm0838330	actor	\N	Walter
tt0090769	nm0000758	actress	\N	Dulcie
tt0090769	nm0235096	actor	\N	Collins
tt0090769	nm0557355	actor	\N	Mayor
tt0090769	nm0932270	actor	\N	Bainbridge
tt0090769	nm0185980	actor	\N	Kinnear
tt0091738	nm0000678	actress	\N	Peggy
tt0091738	nm0000115	actor	\N	Charlie
tt0091738	nm0587944	actor	\N	Richard
tt0091738	nm0382819	actress	\N	Carol
tt0091738	nm0000260	actress	\N	Maddy
tt0091738	nm0640413	actor	\N	Michael
tt0091738	nm0000120	actor	\N	Walter
tt0091738	nm0675484	actress	\N	Delores
tt0091738	nm0421087	actress	\N	Rosalie
tt0091738	nm0795407	actor	\N	Arthur
tt0093565	nm0000333	actress	\N	Loretta
tt0093565	nm0000115	actor	\N	Ronny
tt0093565	nm0001156	actress	\N	Rose
tt0093565	nm0000732	actor	\N	Mr
tt0093565	nm0306696	actor	\N	Cosmo
tt0093565	nm0100566	actress	\N	Rita
tt0093565	nm0001498	actor	\N	Perry
tt0093565	nm0348927	actor	\N	Raymond
tt0093565	nm0149923	actor	\N	Old
tt0093565	nm0319036	actress	\N	Mona
tt0093822	nm0000115	actor	\N	H
tt0093822	nm0000456	actress	\N	Ed
tt0093822	nm0934254	actor	\N	Nathan
tt0093822	nm0000422	actor	\N	Gale
tt0093822	nm0001235	actor	\N	Evelle
tt0093822	nm0573481	actor	\N	Glen
tt0093822	nm0000531	actress	\N	Dot
tt0093822	nm0002012	actor	\N	Leonard
tt0093822	nm0474160	actor	\N	Nathan
tt0093822	nm0457703	actress	\N	Florence
tt0095722	nm0160004	actress	\N	Tuesday
tt0095722	nm0490774	actor	\N	Matt
tt0095722	nm0000916	actor	\N	Eddie
tt0095722	nm0026579	actor	\N	Zombie
tt0095722	nm0304918	actor	\N	Zombie
tt0095722	nm0669129	actor	\N	Zombie
tt0095722	nm0780558	actor	\N	Zombie
tt0095722	nm0000115	actor	\N	Man
tt0095722	nm0000144	actor	\N	Tow
tt0095722	nm0000389	actor	\N	Tow
tt0098577	nm0000115	actor	\N	Peter
tt0098577	nm0000744	actress	\N	Alva
tt0098577	nm0000884	actress	\N	Rachel
tt0098577	nm0039051	actress	\N	Dr
tt0098577	nm0501435	actress	\N	Jackie
tt0098577	nm0525439	actor	\N	Emilio
tt0098577	nm0526649	actress	\N	Sharon
tt0098577	nm0907892	actor	\N	Donald
tt0098577	nm0504007	actor	\N	Fantasy
tt0098577	nm0461545	actor	\N	Andrew
tt0099575	nm0000115	actor	\N	Jake
tt0099575	nm0000169	actor	\N	Brad
tt0099575	nm0000707	actress	\N	Billie
tt0099575	nm0450461	actor	\N	Breaker
tt0099575	nm0224532	actress	\N	Sharon
tt0099575	nm0245653	actor	\N	A
tt0099575	nm0870729	actress	\N	Janet
tt0099575	nm0696430	actor	\N	General
tt0099575	nm0648846	actor	\N	Rice
tt0099575	nm0487260	actor	\N	Darren
tt0099844	nm0000368	actress	\N	Heartbroken
tt0099844	nm0000115	actor	\N	Heartbreaker
tt0099844	nm0190023	actress	\N	The
tt0099844	nm1855991	actress	\N	Female
tt0099844	nm0087745	actor	\N	Male
tt0099844	nm0027199	actor	\N	Woodsman
tt0099844	nm1832166	actor	\N	Clarinet
tt0099844	nm0068293	actor	\N	The
tt0099844	nm1832438	actor	\N	Snare
tt0099844	nm0277782	actress	\N	Back
tt0100762	nm0000115	actor	\N	Enrico
tt0100762	nm0865573	actor	\N	Mario
tt0100762	nm0695623	actress	\N	Mariam
tt0100762	nm0269416	actor	\N	Army
tt0100762	nm0163303	actor	\N	Doctor
tt0100762	nm0509672	actor	\N	Joannes
tt0100762	nm0006467	actor	\N	\N
tt0100762	nm0028377	actor	\N	Troops
tt0100762	nm0563510	actor	\N	Army
tt0100762	nm0577568	actor	\N	Blonde
tt0100935	nm0000115	actor	\N	Sailor
tt0100935	nm0000368	actress	\N	Lula
tt0100935	nm0000353	actor	\N	Bobby
tt0100935	nm0293422	actor	\N	Santos
tt0100935	nm0000417	actor	\N	Dell
tt0100935	nm0002663	actress	\N	Marietta
tt0100935	nm0516865	actor	\N	Reggie
tt0100935	nm0000618	actress	\N	Perdita
tt0100935	nm0001765	actor	\N	Johnnie
tt0100935	nm0951471	actress	\N	Juana
tt0101004	nm0000115	actor	\N	Johnny
tt0101004	nm0026692	actress	\N	Zandalee
tt0101004	nm0001662	actor	\N	Thierry
tt0101004	nm0001592	actor	\N	Gerri
tt0101004	nm0511798	actress	\N	Tatta
tt0101004	nm0005270	actor	\N	Jack
tt0101004	nm0000114	actor	\N	OPP
tt0101004	nm0000718	actor	\N	Louis
tt0101004	nm0000673	actress	\N	Remy
tt0101004	nm0814437	actor	\N	Bartender
tt0104438	nm0001001	actor	\N	Tommy
tt0104438	nm0000115	actor	\N	Jack
tt0104438	nm0000572	actress	\N	Betsy
tt0104438	nm0001552	actor	\N	Mahi
tt0104438	nm0930971	actor	\N	Johnny
tt0104438	nm0135306	actor	\N	Sally
tt0104438	nm0182456	actor	\N	Sidney
tt0104438	nm0000843	actress	\N	Bea
tt0104438	nm0001967	actor	\N	Chief
tt0104438	nm0319096	actor	\N	Roy
tt0105226	nm0000115	actor	\N	Michael
tt0105226	nm0000454	actor	\N	Lyle
tt0105226	nm0001223	actress	\N	Suzanne
tt0105226	nm0714198	actor	\N	Jim
tt0105226	nm0426390	actor	\N	Mr
tt0105226	nm0031987	actor	\N	Howard
tt0105226	nm0568658	actor	\N	Old
tt0105226	nm0000687	actor	\N	Wayne
tt0105226	nm0316912	actor	\N	Kurt
tt0105226	nm0663019	actor	\N	Cashier
tt0106266	nm0000115	actor	\N	Amos
tt0106266	nm0000168	actor	\N	Andrew
tt0106266	nm0503627	actor	\N	Phil
tt0106266	nm0171513	actress	\N	Judy
tt0106266	nm0001056	actor	\N	Chief
tt0106266	nm0000374	actor	\N	Officer
tt0106266	nm0743304	actor	\N	Earl
tt0106266	nm0387734	actor	\N	Waldo
tt0106266	nm0089796	actor	\N	Ernie
tt0106266	nm0917361	actor	\N	Stan
tt0106684	nm0000299	actor	\N	Joe
tt0106684	nm0872755	actress	\N	Diane
tt0106684	nm0000115	actor	\N	Eddie
tt0106684	nm0000336	actor	\N	Mike
tt0106684	nm0001228	actor	\N	Pete
tt0106684	nm0000221	actor	\N	Morgan
tt0106684	nm0001735	actress	\N	Sam
tt0106684	nm0132517	actor	\N	Huey
tt0106684	nm0176073	actor	\N	Frank
tt0106684	nm0178898	actor	\N	Bob
tt0109951	nm0000511	actress	\N	Tess
tt0109951	nm0000115	actor	\N	Doug
tt0109951	nm0671721	actor	\N	Earl
tt0109951	nm0001902	actor	\N	Barry
tt0109951	nm0714310	actor	\N	Howard
tt0109951	nm0341743	actor	\N	Frederick
tt0109951	nm0741803	actor	\N	Tom
tt0109951	nm0333701	actor	\N	Lee
tt0109951	nm0947742	actor	\N	Ralph
tt0109951	nm0482466	actor	\N	Joe
tt0110167	nm0000115	actor	\N	Charlie
tt0110167	nm0000403	actress	\N	Yvonne
tt0110167	nm0001609	actress	\N	Muriel
tt0110167	nm0682495	actor	\N	Bo
tt0110167	nm0005002	actor	\N	Angel
tt0110167	nm0737882	actor	\N	Jesu
tt0110167	nm0001025	actor	\N	Jack
tt0110167	nm0001804	actor	\N	Eddie
tt0110167	nm0293422	actor	\N	Sal
tt0110167	nm0000999	actor	\N	Walter
tt0111477	nm0000115	actor	\N	Bill
tt0111477	nm0001484	actor	\N	Dave
tt0111477	nm0001022	actor	\N	Alvin
tt0111477	nm0795711	actor	\N	Father
tt0111477	nm0375332	actor	\N	Chief
tt0111477	nm0825974	actor	\N	Monty
tt0111477	nm0255330	actor	\N	Cop
tt0111477	nm0242659	actor	\N	Cop
tt0111477	nm0418317	actress	\N	Shopkeeper
tt0111477	nm0822476	actress	\N	Ma
tt0113552	nm0000325	actor	\N	Jimmy
tt0113552	nm0000168	actor	\N	Calvin
tt0113552	nm0000115	actor	\N	Little
tt0113552	nm0000166	actress	\N	Bev
tt0113552	nm0002062	actress	\N	Rosie
tt0113552	nm0001804	actor	\N	Frank
tt0113552	nm0001650	actor	\N	Ronnie
tt0113552	nm0000609	actor	\N	Omar
tt0113552	nm0001311	actor	\N	Big
tt0113552	nm0372217	actor	\N	Jack
tt0113627	nm0000115	actor	\N	Ben
tt0113627	nm0000223	actress	\N	Sera
tt0113627	nm0001696	actor	\N	Yuri
tt0113627	nm0507659	actor	\N	Peter
tt0113627	nm0001836	actor	\N	Marc
tt0113627	nm0011128	actress	\N	Sheila
tt0113627	nm0698346	actress	\N	Debbie
tt0113627	nm0716537	actor	\N	Man
tt0113627	nm0000420	actress	\N	Terri
tt0113627	nm0065320	actor	\N	L
tt0117500	nm0000125	actor	\N	John
tt0117500	nm0000115	actor	\N	Stanley
tt0117500	nm0000438	actor	\N	General
tt0117500	nm0817983	actor	\N	F
tt0117500	nm0001556	actor	\N	Major
tt0117500	nm0001235	actor	\N	Ernest
tt0117500	nm0000299	actor	\N	Commander
tt0117500	nm0000522	actress	\N	Carla
tt0117500	nm0001525	actor	\N	Marine
tt0117500	nm0819440	actor	\N	Captain
tt0118880	nm0000115	actor	\N	Cameron
tt0118880	nm0000131	actor	\N	Agent
tt0118880	nm0000518	actor	\N	Cyrus
tt0118880	nm0000538	actor	\N	Agent
tt0118880	nm0932112	actor	\N	Baby
tt0118880	nm0157915	actor	\N	William
tt0118880	nm0763632	actor	\N	Sally
tt0118880	nm0000609	actor	\N	Nathan
tt0118880	nm0152638	actor	\N	Pinball
tt0118880	nm0001797	actress	\N	Guard
tt0119094	nm0000237	actor	\N	Sean
tt0119094	nm0000115	actor	\N	Castor
tt0119094	nm0000260	actress	\N	Eve
tt0119094	nm0005273	actor	\N	Pollux
tt0119094	nm0000153	actress	\N	Sasha
tt0119094	nm0000663	actress	\N	Jamie
tt0119094	nm0001024	actor	\N	Dietrich
tt0119094	nm0696193	actor	\N	Victor
tt0119094	nm0272173	actor	\N	Dr
tt0119094	nm0002253	actor	\N	Prison
tt0120632	nm0000115	actor	\N	Seth
tt0120632	nm0000212	actress	\N	Dr
tt0120632	nm0105672	actor	\N	Cassiel
tt0120632	nm0001240	actor	\N	Nathaniel
tt0120632	nm0272173	actor	\N	Jordan
tt0120632	nm0000862	actress	\N	Anne
tt0120632	nm0581008	actress	\N	Teresa
tt0120632	nm0198970	actress	\N	Susan
tt0120632	nm0234564	actress	\N	Susan
tt0120632	nm0316708	actor	\N	Doctor
tt0120832	nm0000115	actor	\N	Rick
tt0120832	nm0000641	actor	\N	Commander
tt0120832	nm0001334	actor	\N	Gilbert
tt0120832	nm0001303	actress	\N	Julia
tt0120832	nm0789976	actor	\N	Lincoln
tt0120832	nm0242656	actor	\N	Lou
tt0120832	nm0728346	actor	\N	Jimmy
tt0120832	nm0264603	actor	\N	Charles
tt0120832	nm0350079	actor	\N	Cyrus
tt0120832	nm0383371	actor	\N	Ned
tt0134273	nm0000115	actor	\N	Tom
tt0134273	nm0001618	actor	\N	Max
tt0134273	nm0001254	actor	\N	Eddie
tt0134273	nm0001780	actor	\N	Dino
tt0134273	nm0372217	actor	\N	Longdale
tt0134273	nm0061777	actor	\N	Machine
tt0134273	nm0001416	actress	\N	Amy
tt0134273	nm0141839	actress	\N	Mrs
tt0134273	nm0607920	actress	\N	Janet
tt0134273	nm0694158	actress	\N	Mary
tt0163988	nm0000115	actor	\N	Frank
tt0163988	nm0000099	actress	\N	Mary
tt0163988	nm0000422	actor	\N	Larry
tt0163988	nm0000609	actor	\N	Marcus
tt0163988	nm0001744	actor	\N	Tom
tt0163988	nm0004711	actor	\N	Noel
tt0163988	nm0002148	actress	\N	Nurse
tt0163988	nm0193295	actor	\N	Cy
tt0163988	nm0785594	actor	\N	Dr
tt0163988	nm0878152	actress	\N	Nurse
tt0187078	nm0000115	actor	\N	Memphis
tt0187078	nm0001401	actress	\N	Sara
tt0187078	nm0000610	actor	\N	Kip
tt0187078	nm0189278	actor	\N	Mirror
tt0187078	nm0005406	actor	\N	Toby
tt0187078	nm0004790	actor	\N	Tumbler
tt0187078	nm0001166	actor	\N	Freb
tt0187078	nm0001599	actor	\N	Atley
tt0187078	nm0005148	actor	\N	Det
tt0187078	nm0648249	actor	\N	Detective
tt0189998	nm0000518	actor	\N	Friedrich
tt0189998	nm0000353	actor	\N	Max
tt0189998	nm0001424	actor	\N	Albin
tt0189998	nm0000144	actor	\N	Fritz
tt0189998	nm0001517	actress	\N	Greta
tt0189998	nm0412850	actress	\N	Gustav
tt0189998	nm0319010	actor	\N	Henrik
tt0189998	nm0254574	actor	\N	Paul
tt0189998	nm0895812	actor	\N	Wolfgang
tt0189998	nm0486359	actress	\N	Elke
tt0205314	nm12310050	actor	\N	Narrator
tt0218967	nm0000115	actor	\N	Jack
tt0218967	nm0000495	actress	\N	Kate
tt0218967	nm0000332	actor	\N	Cash
tt0218967	nm0005315	actor	\N	Arnie
tt0218967	nm0007210	actor	\N	Alan
tt0218967	nm0813977	actor	\N	Peter
tt0218967	nm0891863	actress	\N	Annie
tt0218967	nm0587572	actor	\N	Josh
tt0218967	nm0587574	actor	\N	Josh
tt0218967	nm0861462	actress	\N	Evelyn
tt0221823	nm0000828	actress	\N	Agnes
tt0221823	nm0178898	actor	\N	Curson
tt0221823	nm0694112	actor	\N	Morgan
tt0221823	nm0748075	actress	\N	Sara
tt0221823	nm0712675	actor	\N	Rusty
tt0221823	nm0786075	actress	\N	Vera
tt0221823	nm0281486	actor	\N	Gus
tt0221823	nm0326345	actress	\N	Chelsea
tt0221823	nm0592367	actor	\N	Lawyer
tt0221823	nm0237724	actress	\N	Rusty
tt0238112	nm0000115	actor	\N	Captain
tt0238112	nm0004851	actress	\N	Pelagia
tt0238112	nm0000457	actor	\N	Dr
tt0238112	nm0000288	actor	\N	Mandras
tt0238112	nm0660327	actress	\N	Drosoula
tt0238112	nm0804105	actor	\N	Mr
tt0238112	nm0469415	actress	\N	Mrs
tt0238112	nm0316233	actor	\N	Kokolios
tt0238112	nm0434052	actor	\N	Father
tt0238112	nm0765688	actor	\N	Velisarios
tt0245562	nm0000115	actor	\N	Joe
tt0245562	nm0063440	actor	\N	Ben
tt0245562	nm0001780	actor	\N	Hjelmstad
tt0245562	nm0001187	actor	\N	Chick
tt0245562	nm0749263	actor	\N	Pappas
tt0245562	nm0887144	actor	\N	Harrigan
tt0245562	nm0376540	actor	\N	Nellie
tt0245562	nm0932194	actor	\N	Charlie
tt0245562	nm0640323	actress	\N	Rita
tt0245562	nm0000225	actor	\N	Ox
tt0246354	nm0443373	actor	\N	Dennis
tt0246354	nm3924928	actor	\N	Actor
tt0246354	nm4886833	actress	\N	Actor
tt0246354	nm1150695	actress	\N	Actor
tt0259324	nm0000115	actor	\N	Johnny
tt0259324	nm0578949	actress	\N	Roxanne
tt0259324	nm0000385	actor	\N	Caretaker
tt0259324	nm1668265	actor	\N	Young
tt0259324	nm0018161	actress	\N	Young
tt0259324	nm0191442	actor	\N	Barton
tt0259324	nm0001228	actor	\N	Mephistopheles
tt0259324	nm0006610	actor	\N	Mack
tt0259324	nm2524656	actor	\N	Team
tt0259324	nm1320100	actor	\N	Team
tt0259929	nm0001003	actor	\N	Scrooge
tt0259929	nm0000701	actress	\N	Belle
tt0259929	nm0000115	actor	\N	Marley
tt0259929	nm0001363	actress	\N	Ghost
tt0259929	nm0002091	actor	\N	Ghost
tt0259929	nm0406975	actor	\N	Bob
tt0259929	nm0828980	actress	\N	Mrs
tt0259929	nm0515753	actor	\N	Old
tt0259929	nm0428241	actor	\N	Fred
tt0259929	nm0568801	actor	\N	Fezziwig
tt0268126	nm0000115	actor	\N	Charlie
tt0268126	nm0000658	actress	\N	Susan
tt0268126	nm0177933	actor	\N	John
tt0268126	nm0842770	actress	\N	Valerie
tt0268126	nm0851610	actor	\N	Matthew
tt0268126	nm0514342	actor	\N	Russell
tt0268126	nm0932194	actor	\N	Randy
tt0268126	nm0064769	actor	\N	Ranger
tt0268126	nm0786806	actress	\N	Amelia
tt0268126	nm0427964	actor	\N	Augustus
tt0289992	nm0000228	actor	\N	David
tt0289992	nm0000701	actress	\N	Bitsey
tt0289992	nm0001473	actress	\N	Constance
tt0289992	nm0454598	actress	\N	Barbara
tt0289992	nm0427801	actress	\N	Reporter
tt0289992	nm0728517	actor	\N	Joe
tt0289992	nm0542759	actor	\N	Zack
tt0289992	nm0002023	actor	\N	Dusty
tt0289992	nm0514521	actress	\N	Motel
tt0289992	nm1331905	actress	\N	Margie
tt0305973	nm0290556	actor	\N	Sonny
tt0305973	nm0000950	actress	\N	Jewel
tt0305973	nm0002546	actress	\N	Carol
tt0305973	nm0001765	actor	\N	Henry
tt0305973	nm0001025	actor	\N	Albert
tt0305973	nm0882853	actress	\N	Meg
tt0305973	nm0004861	actress	\N	Gretchen
tt0305973	nm1293751	actor	\N	Cal
tt0305973	nm0790285	actress	\N	Wealthy
tt0305973	nm0017449	actress	\N	Catherine
tt0325805	nm0000115	actor	\N	Roy
tt0325805	nm0517844	actress	\N	Angela
tt0325805	nm0005377	actor	\N	Frank
tt0325805	nm0022883	actor	\N	Dr
tt0325805	nm0569226	actor	\N	Chuck
tt0325805	nm0641266	actress	\N	Mrs
tt0325805	nm0247611	actor	\N	Mr
tt0325805	nm0335275	actress	\N	Laundry
tt0325805	nm0445992	actress	\N	Kathy
tt0325805	nm0469823	actor	\N	Slacker
tt0368891	nm0000115	actor	\N	Benjamin
tt0368891	nm1208167	actress	\N	Abigail
tt0368891	nm0058581	actor	\N	Riley
tt0368891	nm0000293	actor	\N	Ian
tt0368891	nm0000685	actor	\N	Patrick
tt0368891	nm0000172	actor	\N	Sadusky
tt0368891	nm0001626	actor	\N	John
tt0368891	nm1113959	actor	\N	Shaw
tt0368891	nm0278000	actor	\N	Powell
tt0368891	nm0847727	actor	\N	Shippen
tt0375568	nm0383603	actor	\N	Astro
tt0375568	nm0000115	actor	\N	Dr
tt0375568	nm0068338	actress	\N	Cora
tt0375568	nm0000234	actress	\N	Our
tt0375568	nm0830198	actor	\N	Mr
tt0375568	nm0506405	actor	\N	Orrin
tt0375568	nm0000661	actor	\N	President
tt0375568	nm0631490	actor	\N	Dr
tt0375568	nm0004979	actor	\N	Mr
tt0375568	nm0876138	actor	\N	Mr
tt0384680	nm0000115	actor	\N	David
tt0384680	nm0204706	actress	\N	Noreen
tt0384680	nm0396558	actor	\N	Mike
tt0384680	nm0000323	actor	\N	Robert
tt0384680	nm0478810	actress	\N	Shelly
tt0384680	nm0728346	actor	\N	Russ
tt0384680	nm0004743	actor	\N	Don
tt0384680	nm0566282	actress	\N	Lauren
tt0384680	nm1706644	actor	\N	DMV
tt0384680	nm1795428	actress	\N	Andrea
tt0399295	nm0000115	actor	\N	Yuri
tt0399295	nm0000160	actor	\N	Jack
tt0399295	nm0001467	actor	\N	Vitaly
tt0399295	nm0005256	actress	\N	Ava
tt0399295	nm1356769	actress	\N	Irina
tt0399295	nm1099079	actor	\N	Anatoly
tt0399295	nm1545942	actor	\N	Ukrainian
tt0399295	nm2001258	actor	\N	Ukrainian
tt0399295	nm0795856	actor	\N	Ukrainian
tt0399295	nm2003521	actor	\N	Ukrainian
tt0417797	nm0295285	actress	\N	Narrator
tt0429589	nm0316079	actor	\N	Stan
tt0429589	nm0000115	actor	\N	Zoc
tt0429589	nm0000210	actress	\N	Hova
tt0429589	nm0000658	actress	\N	Queen
tt0429589	nm0878940	actor	\N	Lucas
tt0429589	nm0005093	actress	\N	Kreela
tt0429589	nm0132257	actor	\N	Fugax
tt0429589	nm0005499	actress	\N	Mommo
tt0429589	nm0652783	actress	\N	Doreen
tt0429589	nm0588777	actor	\N	Fred
tt0435705	nm0000115	actor	\N	Cris
tt0435705	nm0000194	actress	\N	Callie
tt0435705	nm0004754	actress	\N	Liz
tt0435705	nm0470981	actor	\N	Mr
tt0435705	nm0457796	actor	\N	Cavanaugh
tt0435705	nm0959242	actor	\N	Security
tt0435705	nm0064769	actor	\N	NSA
tt0435705	nm0124798	actor	\N	Jeff
tt0435705	nm0873998	actor	\N	Kendall
tt0435705	nm0162281	actor	\N	Mr
tt0446304	nm1939687	actor	\N	\N
tt0448011	nm0000115	actor	\N	John
tt0448011	nm2425105	actor	\N	Caleb
tt0448011	nm0126284	actress	\N	Diana
tt0448011	nm3041648	actress	\N	Abby
tt0448011	nm3138157	actor	\N	The
tt0448011	nm0870166	actress	\N	Grace
tt0448011	nm0394086	actor	\N	Reverend
tt0448011	nm1506789	actress	\N	Allison
tt0448011	nm3346497	actor	\N	Younger
tt0448011	nm0141560	actress	\N	Miss
tt0450345	nm0000115	actor	\N	Edward
tt0450345	nm0000995	actress	\N	Sister
tt0450345	nm0005447	actress	\N	Sister
tt0450345	nm0063571	actress	\N	Sister
tt0450345	nm0175814	actress	\N	Dr
tt0450345	nm0662504	actress	\N	Sister
tt0450345	nm0216392	actress	\N	Sister
tt0450345	nm0936488	actor	\N	Pete
tt0450345	nm2000023	actress	\N	Rowan
tt0450345	nm0132300	actress	\N	Truck
tt0465234	nm0000115	actor	\N	Ben
tt0465234	nm1208167	actress	\N	Abigail
tt0465234	nm0058581	actor	\N	Riley
tt0465234	nm0000685	actor	\N	Patrick
tt0465234	nm0000545	actress	\N	Emily
tt0465234	nm0000438	actor	\N	Mitch
tt0465234	nm0000172	actor	\N	Sadusky
tt0465234	nm0339304	actor	\N	The
tt0465234	nm0123092	actor	\N	Connor
tt0465234	nm0538002	actor	\N	Daniel
tt0469641	nm0000115	actor	\N	John
tt0469641	nm0671567	actor	\N	Will
tt0469641	nm0004742	actress	\N	Donna
tt0469641	nm0350454	actress	\N	Allison
tt0469641	nm1269733	actor	\N	Steven
tt0469641	nm2153642	actor	\N	JJ
tt0469641	nm2057769	actress	\N	Erin
tt0469641	nm1468783	actress	\N	Caitlin
tt0469641	nm1269976	actor	\N	Antonio
tt0469641	nm0379596	actor	\N	Dominick
tt0479997	nm0000115	actor	\N	Behmen
tt0479997	nm0000579	actor	\N	Felson
tt0479997	nm2946516	actress	\N	The
tt0479997	nm1304386	actor	\N	Debelzaq
tt0479997	nm0334318	actor	\N	Hagamar
tt0479997	nm0860947	actor	\N	Eckhart
tt0479997	nm1588066	actor	\N	Kay
tt0479997	nm0000489	actor	\N	Cardinal
tt0479997	nm3486873	actor	\N	Dying
tt0479997	nm1336506	actor	\N	Jail
tt0481499	nm0000115	actor	\N	Grug
tt0481499	nm0005351	actor	\N	Guy
tt0481499	nm1297015	actress	\N	Eep
tt0481499	nm0001416	actress	\N	Ugga
tt0481499	nm0001458	actress	\N	Gran
tt0481499	nm0241173	actor	\N	Thunk
tt0481499	nm0761498	actor	\N	Belt
tt0481499	nm0858378	actor	\N	Sandy
tt0728558	nm2150199	actor	\N	Various
tt0763831	nm0000552	actor	\N	Jack
tt0763831	nm0193295	actor	\N	Dr
tt0763831	nm0913488	actress	\N	Caroline
tt0763831	nm0241173	actor	\N	Aaron
tt0763831	nm4927323	actor	\N	Tyler
tt0763831	nm1035082	actress	\N	Woman
tt0763831	nm0172333	actor	\N	Construction
tt0763831	nm2786816	actor	\N	Starbucks
tt0763831	nm0929454	actor	\N	Starbucks
tt0763831	nm2192211	actress	\N	Starbucks
tt0805631	nm0057113	actor	\N	\N
tt0805631	nm1069256	actor	\N	\N
tt0814022	nm0000115	actor	\N	Joe
tt0814022	nm0947777	actress	\N	Fon
tt0814022	nm1395312	actor	\N	Kong
tt0814022	nm2486428	actress	\N	Aom
tt0814022	nm0437747	actor	\N	Surat
tt0814022	nm1742063	actor	\N	Aran
tt0814022	nm3111515	actor	\N	Kong
tt0814022	nm2352129	actor	\N	Michigan
tt0814022	nm2355521	actor	\N	USC
tt0814022	nm0999139	actor	\N	Chicago
tt0854163	nm0000032	actor	\N	\N
tt0957462	nm0192926	actor	\N	Narrator
tt0963093	nm1683137	actress	\N	\N
tt0963966	nm0000115	actor	\N	Balthazar
tt0963966	nm0059431	actor	\N	Dave
tt0963966	nm0000547	actor	\N	Horvath
tt0963966	nm1954240	actress	\N	Becky
tt0963966	nm1527905	actor	\N	Drake
tt0963966	nm0589077	actor	\N	Bennet
tt0963966	nm0000899	actress	\N	Veronica
tt0963966	nm0000481	actress	\N	Morgana
tt0963966	nm1544084	actor	\N	Young
tt0963966	nm0827044	actor	\N	Merlin
tt0966941	nm0564836	actor	\N	Cloppy
tt10690676	nm0000115	actor	\N	Evan
tt10690676	nm0001393	actress	\N	Michelle
tt10690676	nm0947338	actor	\N	Milton
tt1071875	nm0000115	actor	\N	Johnny
tt1071875	nm0001354	actor	\N	Roarke
tt1071875	nm0252961	actor	\N	Moreau
tt1071875	nm0686376	actress	\N	Nadya
tt1071875	nm0926615	actor	\N	Ray
tt1071875	nm2171157	actor	\N	Danny
tt1071875	nm1872855	actor	\N	Grannik
tt1071875	nm1442945	actor	\N	Kurdish
tt1071875	nm0464522	actor	\N	Terrokov
tt1071875	nm0372117	actor	\N	Benedict
tt1095217	nm0000115	actor	\N	Terence
tt1095217	nm0578949	actress	\N	Frankie
tt1095217	nm2963760	actor	\N	A
tt1095217	nm0000174	actor	\N	Stevie
tt1095217	nm0944702	actor	\N	Big
tt1095217	nm0000103	actress	\N	Heidi
tt1095217	nm0004999	actor	\N	Armand
tt1095217	nm0177639	actress	\N	Genevieve
tt1095217	nm0101005	actor	\N	Pat
tt1095217	nm0193554	actor	\N	Captain
tt11003218	nm0000115	actor	\N	Rob
tt11003218	nm1842974	actor	\N	Amir
tt11003218	nm0035060	actor	\N	Darius
tt11003218	nm10208010	actor	\N	Lori
tt11003218	nm4280796	actress	\N	Bree
tt11003218	nm3577929	actor	\N	Scratch
tt11003218	nm5171772	actress	\N	Donna
tt11003218	nm3456797	actor	\N	Drunk
tt11003218	nm0789479	actor	\N	Audiobook
tt11003218	nm0179151	actress	\N	Mac
tt1104009	nm0442622	actor	\N	Peter
tt1104009	nm0378660	actor	\N	Bernie
tt11291274	nm0000115	actor	\N	Nick
tt11291274	nm0050959	actor	\N	Javi
tt11291274	nm1840504	actress	\N	Vivian
tt11291274	nm1279721	actress	\N	Olivia
tt11291274	nm1346713	actor	\N	Lucas
tt11291274	nm0000439	actor	\N	Richard
tt11291274	nm2091852	actress	\N	Addy
tt11291274	nm1616937	actress	\N	Gabriela
tt11291274	nm0778501	actor	\N	Carlos
tt11291274	nm9016307	actress	\N	Maria
tt11358390	nm0396558	actor	\N	Renfield
tt11358390	nm0000115	actor	\N	Dracula
tt11358390	nm5377144	actress	\N	Rebecca
tt11358390	nm2355635	actor	\N	Tedward
tt11358390	nm0013037	actress	\N	Bellafrancesca
tt11358390	nm1601147	actor	\N	Mark
tt11358390	nm0553440	actor	\N	Chris
tt11358390	nm0155166	actress	\N	Kate
tt11358390	nm1581597	actress	\N	Caitlyn
tt11358390	nm3957052	actress	\N	Carol
tt1214962	nm0000115	actor	\N	Will
tt1214962	nm0005064	actress	\N	Laura
tt1214962	nm0001602	actor	\N	Simon
tt1214962	nm0674782	actor	\N	Jimmy
tt1214962	nm1358539	actress	\N	Trudy
tt1214962	nm1533036	actor	\N	Scar
tt1214962	nm0701818	actor	\N	Cancer
tt1214962	nm0075359	actor	\N	Lieutenant
tt1214962	nm0114177	actor	\N	Detective
tt1214962	nm0876305	actor	\N	Sideburns
tt12409886	nm0001424	actor	\N	Franz
tt12409886	nm0600667	actress	\N	Eva
tt12409886	nm0869981	actor	\N	Lt
tt12409886	nm0000356	actress	\N	Gretchen
tt12409886	nm0608405	actor	\N	Dr
tt12409886	nm3141716	actress	\N	Lead
tt12409886	nm0000115	actor	\N	Fu
tt12409886	nm0212619	actor	\N	Gun
tt12409886	nm2055475	actress	\N	Werewolf
tt12409886	nm1382856	actress	\N	Harem
tt1250777	nm1093951	actor	\N	Dave
tt1250777	nm0000115	actor	\N	Damon
tt1250777	nm1631269	actress	\N	Mindy
tt1250777	nm0113595	actor	\N	Mr
tt1250777	nm0241173	actor	\N	Marty
tt1250777	nm1404239	actor	\N	Todd
tt1250777	nm0878597	actress	\N	Mrs
tt1250777	nm0960912	actress	\N	Katie
tt1250777	nm2348343	actress	\N	Erika
tt1250777	nm0001527	actress	\N	Mrs
tt1274586	nm0000115	actor	\N	Evan
tt1274586	nm0947338	actor	\N	Milton
tt1274586	nm0992562	actor	\N	Muhammad
tt1274586	nm0001393	actress	\N	Michelle
tt1274586	nm3643989	actor	\N	Mbui
tt1274586	nm3043480	actor	\N	Aasim
tt1274586	nm5680429	actor	\N	Ghedi
tt1274586	nm0805195	actor	\N	James
tt1274586	nm0290162	actor	\N	Dr
tt1274586	nm0141324	actor	\N	Dr
tt13060064	nm0000115	actor	\N	Lord
tt13097724	nm0000115	actor	\N	Lord
tt1334557	nm2322864	actor	\N	C
tt1391303	nm1065206	actor	\N	Bernie
tt1426251	nm0711781	actor	\N	\N
tt1427334	nm0443373	actor	\N	Dennis
tt1462759	nm0000115	actor	\N	Miller
tt1462759	nm9538520	actor	\N	Will
tt1462759	nm2205243	actor	\N	Fred
tt1462759	nm0705152	actor	\N	McDonald
tt1462759	nm0075359	actor	\N	Charlie
tt1462759	nm5043859	actress	\N	Francine
tt1462759	nm3478273	actress	\N	Wagon
tt1462759	nm15393849	actress	\N	Wagon
tt1462759	nm15393850	actor	\N	Wagon
tt1462759	nm12357044	actor	\N	Hunter
tt14827638	nm0000115	actor	\N	Matt
tt14827638	nm2230865	actress	\N	Ashley
tt14827638	nm11164361	actress	\N	Sarah
tt14827638	nm0000579	actor	\N	Bobo
tt14827638	nm0355097	actor	\N	Donnie
tt14827638	nm0001368	actor	\N	Joseph
tt14827638	nm6349706	actress	\N	Hector
tt14827638	nm0005551	actress	\N	Drisdale
tt14827638	nm0601376	actor	\N	Fitzsimmons
tt14827638	nm3045861	actor	\N	Jimmy
tt1502404	nm0000115	actor	\N	Milton
tt1502404	nm1720028	actress	\N	Piper
tt1502404	nm0001209	actor	\N	The
tt1502404	nm0121605	actor	\N	Jonah
tt1502404	nm0001556	actor	\N	Webster
tt1502404	nm0267805	actor	\N	Frank
tt1502404	nm0132300	actress	\N	Mona
tt1502404	nm0005383	actress	\N	Candy
tt1502404	nm0040662	actor	\N	Cap
tt1502404	nm0569079	actor	\N	Fat
tt1519189	nm0296592	actress	\N	Narrator
tt1552224	nm0000115	actor	\N	Gallain
tt1552224	nm0159789	actor	\N	Jacob
tt1552224	nm2843513	actor	\N	Crusader
tt1552224	nm0910844	actor	\N	Lieutenant
tt1552224	nm2162501	actress	\N	Moor
tt1552224	nm1777809	actor	\N	Captain
tt1552224	nm0157312	actor	\N	Captain
tt1552224	nm4975017	actor	\N	Crusader
tt1552224	nm1785158	actress	\N	Anika
tt1552224	nm4402227	actor	\N	Moor
tt16360004	nm4271336	actor	\N	Miles
tt16360004	nm2794962	actress	\N	Gwen
tt16360004	nm3109964	actor	\N	Jefferson
tt16360004	nm0000115	actor	\N	Spider
tt16360004	nm0904967	actress	\N	Rio
tt16360004	nm2159926	actor	\N	Peter
tt16360004	nm1209966	actor	\N	Miguel
tt16360004	nm0005403	actor	\N	Jonathan
tt16360004	nm4793987	actress	\N	Jessica
tt16360004	nm4175221	actor	\N	Pavitr
tt1656186	nm0000115	actor	\N	Will
tt1656186	nm0015196	actress	\N	Riley
tt1656186	nm0524197	actor	\N	Vincent
tt1656186	nm0396812	actor	\N	Tim
tt1656186	nm3774109	actress	\N	Alison
tt1656186	nm1517407	actor	\N	Jacobs
tt1656186	nm0885090	actor	\N	Fletcher
tt1656186	nm0377106	actor	\N	Reginald
tt1656186	nm0301370	actor	\N	Hoyt
tt1656186	nm0263625	actor	\N	Rookie
tt1674784	nm0000115	actor	\N	Kyle
tt1674784	nm0000173	actress	\N	Sarah
tt1674784	nm1544217	actor	\N	Jonah
tt1674784	nm0578853	actor	\N	Elias
tt1674784	nm1882929	actress	\N	Avery
tt1674784	nm0819079	actress	\N	Petal
tt1674784	nm0005231	actor	\N	Ty
tt1674784	nm2007030	actress	\N	Kendra
tt1674784	nm3380171	actor	\N	Jake
tt1674784	nm2847901	actor	\N	Dylan
tt1690688	nm0022901	actor	\N	Phone
tt1691230	nm2958631	actor	\N	Squeeze
tt2005374	nm0000115	actor	\N	Sgt
tt2005374	nm1227814	actress	\N	Cindy
tt2005374	nm0000131	actor	\N	Robert
tt2005374	nm0606487	actor	\N	Sgt
tt2005374	nm1213456	actress	\N	Debbie
tt2005374	nm4749828	actor	\N	Sgt
tt2005374	nm0377034	actor	\N	Carl
tt2005374	nm0569732	actor	\N	Vice
tt2005374	nm0478762	actress	\N	Fran
tt2005374	nm1645352	actor	\N	Officer
tt2032572	nm0000115	actor	\N	Captain
tt2032572	nm0001744	actor	\N	McWhorter
tt2032572	nm0005048	actor	\N	Lt
tt2032572	nm1782667	actor	\N	Bama
tt2032572	nm0001664	actor	\N	Admiral
tt2032572	nm0696169	actor	\N	Waxman
tt2032572	nm1798276	actor	\N	Hashimoto
tt2032572	nm3619000	actor	\N	Connor
tt2032572	nm5593433	actor	\N	D
tt2032572	nm3132733	actor	\N	West
tt2132638	nm5810577	actress	\N	Narrator
tt2134512	nm5810577	actress	\N	Narrator
tt21942866	nm12844103	actress	\N	Sophie
tt21942866	nm0000115	actor	\N	Paul
tt21942866	nm0629855	actress	\N	Janet
tt21942866	nm2970078	actress	\N	Hannah
tt21942866	nm9007701	actress	\N	Greta
tt21942866	nm5697985	actor	\N	Andy
tt21942866	nm7386306	actor	\N	Miles
tt21942866	nm11060098	actress	\N	Avery
tt21942866	nm0099202	actress	\N	Sheila
tt21942866	nm0574160	actress	\N	Claire
tt21991654	nm0000115	actor	\N	The
tt21991654	nm1172478	actor	\N	The
tt21991654	nm5201194	actress	\N	Waitress
tt21991654	nm7340667	actor	\N	Cop
tt21991654	nm14064124	actor	\N	Boy
tt21991654	nm5439765	actor	\N	Owner
tt21991654	nm1049044	actor	\N	Trucker
tt21991654	nm14096042	actor	\N	Grandmother
tt21991654	nm1839980	actor	\N	Colleague
tt21991654	nm2428220	actress	\N	Nurse
tt2219977	nm0587043	actor	\N	James
tt2219977	nm1506981	actor	\N	Albert
tt22939186	nm0000115	actor	\N	Paul
tt22939186	nm5897057	actor	\N	Joseph
tt22939186	nm3069420	actor	\N	Thomas
tt22939186	nm10082934	actress	\N	Charlotte
tt22939186	nm1570014	actress	\N	Mrs
tt22939186	nm0228878	actor	\N	Mr
tt22939186	nm2807722	actor	\N	Hobson
tt22939186	nm14673660	actor	\N	Militant
tt23468450	nm2140860	actress	\N	Agent
tt23468450	nm0000115	actor	\N	Longlegs
tt23468450	nm0005516	actor	\N	Agent
tt23468450	nm0001860	actress	\N	Ruth
tt23468450	nm5500408	actress	\N	Agent
tt23468450	nm4464492	actor	\N	Agent
tt23468450	nm12295410	actress	\N	Young
tt23468450	nm2215143	actress	\N	Carrie
tt23468450	nm16235629	actress	\N	Young
tt23468450	nm2991942	actor	\N	Father
tt2382396	nm0000115	actor	\N	Joe
tt2382396	nm4446467	actor	\N	Gary
tt2382396	nm5371554	actor	\N	Wade
tt2382396	nm1237235	actor	\N	Willie
tt2382396	nm2395048	actress	\N	Connie
tt2382396	nm5371617	actor	\N	Junior
tt2382396	nm5925614	actor	\N	Earl
tt2382396	nm0734200	actress	\N	Merle
tt2382396	nm0434526	actress	\N	Lacy
tt2382396	nm0095652	actress	\N	Mother
tt23951630	nm0035676	actor	\N	Dean
tt2401807	nm0000115	actor	\N	Paul
tt2401807	nm0629697	actress	\N	Vanessa
tt2401807	nm1043075	actor	\N	Kane
tt2401807	nm0569732	actor	\N	Danny
tt2401807	nm0001780	actor	\N	Francis
tt2401807	nm0527945	actor	\N	Chernov
tt2401807	nm1324845	actor	\N	Anton
tt2401807	nm2000606	actor	\N	Young
tt2401807	nm3198531	actor	\N	Mike
tt2401807	nm2874427	actress	\N	Caitlin
tt2467046	nm0000115	actor	\N	Rayford
tt2467046	nm0000670	actress	\N	Irene
tt2467046	nm2216125	actress	\N	Chloe
tt2467046	nm0614877	actor	\N	Buck
tt2467046	nm1764351	actress	\N	Hattie
tt2467046	nm2554052	actress	\N	Shasta
tt2467046	nm0344196	actor	\N	Dennis
tt2467046	nm2466842	actor	\N	Simon
tt2467046	nm0458514	actor	\N	Melvin
tt2467046	nm0035709	actress	\N	Venice
tt24818230	nm0000115	actor	\N	John
tt24818230	nm0000288	actor	\N	Al
tt24818230	nm5805772	actor	\N	\N
tt24818230	nm1063517	actress	\N	Virginia
tt24818230	nm1825214	actor	\N	Trip
tt24818230	nm1092227	actress	\N	Carol
tt24818230	nm0615063	actor	\N	Pat
tt24818230	nm8133761	actor	\N	Football
tt24818230	nm16826679	actress	\N	Patron
tt24850708	nm0001151	actor	\N	Thomas
tt24850708	nm0001287	actress	\N	Val
tt24850708	nm0000115	actor	\N	Ben
tt24850708	nm0000871	actor	\N	Doc
tt24850708	nm1640173	actor	\N	Levi
tt24850708	nm0002245	actor	\N	Lin
tt24850708	nm0413658	actor	\N	Robert
tt24850708	nm0541908	actor	\N	Jericho
tt24850708	nm2371805	actress	\N	Bella
tt24850708	nm0001530	actor	\N	\N
tt27706987	nm0000115	actor	\N	Yuri
tt27706987	nm0803889	actor	\N	Anton
tt27706987	nm5637553	actress	\N	\N
tt27813235	nm0000115	actor	\N	The
tt27813235	nm7567974	actor	\N	The
tt27813235	nm2738931	actor	\N	The
tt27813235	nm3172635	actor	\N	Curly
tt27813235	nm8240130	actor	\N	Pitbull
tt27813235	nm0573037	actor	\N	Scally
tt27813235	nm1694381	actor	\N	Mortgage
tt27813235	nm8610486	actor	\N	Blondie
tt27813235	nm2732198	actor	\N	Work
tt27813235	nm9068738	actress	\N	Blondie
tt27944913	nm3437060	actor	\N	Announcer
tt2850386	nm0000115	actor	\N	Grug
tt2850386	nm1297015	actress	\N	Eep
tt2850386	nm0005351	actor	\N	Guy
tt2850386	nm0001416	actress	\N	Ugga
tt2850386	nm0001458	actress	\N	Gran
tt2850386	nm0241173	actor	\N	Thunk
tt2850386	nm0005182	actress	\N	Hope
tt2850386	nm0227759	actor	\N	Phil
tt2850386	nm4511652	actress	\N	Dawn
tt2850386	nm12080960	actress	\N	Sandy
tt30460310	nm0000115	actor	\N	\N
tt30460310	nm2255271	actor	\N	\N
tt30460310	nm0322407	actor	\N	\N
tt30460310	nm4050835	actress	\N	\N
tt30460310	nm1658935	actor	\N	\N
tt30460310	nm2031358	actor	\N	Robbie
tt30460310	nm6554076	actor	\N	\N
tt30460310	nm1767468	actor	\N	Walters
tt30460310	nm5158491	actor	\N	\N
tt30460310	nm11130674	actress	\N	\N
tt31172323	nm0000115	actor	\N	\N
tt31172323	nm0000206	actor	\N	\N
tt31172323	nm1128780	actress	\N	\N
tt31632368	nm0000115	actor	\N	\N
tt31632368	nm0322407	actor	\N	\N
tt31632368	nm1658935	actor	\N	\N
tt31632368	nm4050835	actress	\N	\N
tt31632368	nm5158491	actor	\N	\N
tt31632368	nm2031358	actor	\N	Robbie
tt31632368	nm5476731	actress	\N	Agnes
tt31632368	nm6554076	actor	\N	\N
tt31632368	nm11130674	actress	\N	\N
tt32304349	nm0000115	actor	\N	\N
tt32304349	nm7415871	actor	\N	\N
tt32304349	nm9113893	actress	\N	\N
tt32304349	nm4766226	actress	\N	\N
tt32304349	nm9548332	actress	\N	\N
tt32304349	nm6667155	actor	\N	Angel
tt32304349	nm2899405	actress	\N	Leper
tt32304349	nm9198841	actress	\N	Child
tt32365977	nm0000115	actor	\N	\N
tt32365977	nm4763412	actress	\N	\N
tt32365977	nm10481425	actress	\N	\N
tt32604452	nm2020278	actor	\N	Parker
tt32604452	nm0000115	actor	\N	\N
tt32604452	nm0799777	actor	\N	\N
tt32604452	nm0002064	actor	\N	\N
tt32604452	nm0000412	actor	\N	\N
tt32604452	nm0005350	actor	\N	\N
tt32604452	nm0000350	actress	\N	\N
tt32604452	nm0741219	actor	\N	\N
tt32604452	nm0005439	actress	\N	Susan
tt32604452	nm0103750	actor	\N	\N
tt33452921	nm0000115	actor	\N	\N
tt33452921	nm1420224	actress	\N	Nurse
tt33452921	nm0322407	actor	\N	\N
tt33452921	nm1658935	actor	\N	\N
tt33452921	nm4050835	actress	\N	\N
tt33452921	nm2046480	actor	\N	\N
tt33452921	nm2031358	actor	\N	Robbie
tt33452921	nm6554076	actor	\N	\N
tt33452921	nm1767468	actor	\N	Walters
tt33452926	nm0000115	actor	\N	\N
tt33452926	nm0322407	actor	\N	\N
tt33452926	nm1658935	actor	\N	\N
tt33452926	nm2255271	actor	\N	\N
tt33452926	nm4050835	actress	\N	\N
tt33452926	nm2031358	actor	\N	Robbie
tt33452926	nm6554076	actor	\N	\N
tt33498865	nm0000115	actor	\N	\N
tt33498865	nm1483273	actor	\N	\N
tt33498865	nm2255271	actor	\N	\N
tt33498865	nm1567768	actress	\N	\N
tt33498865	nm1767468	actor	\N	Walters
tt33498870	nm0000115	actor	\N	\N
tt33498870	nm2255271	actor	\N	\N
tt33498878	nm0000115	actor	\N	\N
tt33498878	nm2255271	actor	\N	\N
tt33498883	nm0000115	actor	\N	\N
tt33498883	nm0392703	actor	\N	Priest
tt33498883	nm2255271	actor	\N	\N
tt3481634	nm0000153	actress	\N	Angela
tt3481634	nm1764351	actress	\N	Katie
tt3481634	nm0000115	actor	\N	Brian
tt3481634	nm9274239	actress	\N	Maddie
tt3481634	nm8882271	actress	\N	Cora
tt3481634	nm4921550	actress	\N	Linda
tt3481634	nm0001159	actress	\N	Donna
tt3481634	nm1642866	actor	\N	Barry
tt3481634	nm0887695	actor	\N	Dr
tt3481634	nm2364777	actor	\N	Jake
tt3687398	nm0000115	actor	\N	Colin
tt3687398	nm0005299	actress	\N	Kate
tt3687398	nm0001228	actor	\N	Rayne
tt3687398	nm0001567	actress	\N	Deborah
tt3687398	nm0682495	actor	\N	Frank
tt3687398	nm0061262	actor	\N	Mark
tt3687398	nm0077512	actor	\N	Hal
tt3687398	nm2234564	actress	\N	Lucy
tt3687398	nm0499791	actor	\N	Senator
tt3687398	nm1664127	actor	\N	Dr
tt3733774	nm0000115	actor	\N	Stone
tt3733774	nm0000704	actor	\N	Waters
tt3733774	nm3650037	actress	\N	Woman
tt3733774	nm7180653	actor	\N	Big
tt3733774	nm2558287	actress	\N	Nina
tt3733774	nm0839486	actor	\N	Detective
tt3733774	nm2020108	actor	\N	Captain
tt3733774	nm0931736	actor	\N	Cliff
tt3733774	nm5086096	actor	\N	Drug
tt3733774	nm0001471	actor	\N	Stone
tt3733778	nm0000115	actor	\N	Mike
tt3733778	nm0915637	actress	\N	Kristen
tt3733778	nm0274704	actress	\N	Hannah
tt3733778	nm0072713	actor	\N	Jordan
tt3733778	nm3664051	actress	\N	Annie
tt3733778	nm6779196	actress	\N	Ghost
tt3733778	nm5385972	actor	\N	Charlie
tt3733778	nm0565569	actor	\N	Blind
tt3733778	nm0389100	actress	\N	Jane
tt3733778	nm0410336	actor	\N	Angry
tt3758162	nm0000115	actor	\N	Frank
tt3758162	nm7885187	actor	\N	Joey
tt3758162	nm2764521	actress	\N	Simone
tt3758162	nm4343850	actor	\N	Jimmy
tt3758162	nm0870439	actor	\N	Tank
tt3758162	nm0000973	actor	\N	Q
tt3758162	nm5238466	actor	\N	Young
tt3758162	nm9287372	actor	\N	Max
tt3758162	nm4926955	actor	\N	Bagman
tt3758162	nm3468618	actor	\N	Young
tt4054654	nm0000115	actor	\N	Troy
tt4054654	nm0000353	actor	\N	Mad
tt4054654	nm4232922	actor	\N	Diesel
tt4054654	nm0234174	actor	\N	Moon
tt4054654	nm2106801	actress	\N	Zoe
tt4054654	nm5451383	actress	\N	Lina
tt4054654	nm1274545	actor	\N	Chepe
tt4054654	nm6703031	actress	\N	Sheila
tt4054654	nm3966733	actor	\N	Maurie
tt4054654	nm1486879	actor	\N	Gun
tt4382824	nm0000115	actor	\N	Gary
tt4382824	nm1258970	actor	\N	God
tt4382824	nm1018488	actress	\N	Marci
tt4382824	nm0149447	actor	\N	Osama
tt4382824	nm1179677	actor	\N	Pickles
tt4382824	nm0766005	actor	\N	Roy
tt4382824	nm8543475	actress	\N	Lizzie
tt4382824	nm0641354	actor	\N	Agent
tt4382824	nm0933988	actor	\N	Agent
tt4382824	nm8622675	actor	\N	Front
tt4976192	nm0000115	actor	\N	Mike
tt4976192	nm5310225	actress	\N	Lisa
tt4976192	nm3691729	actor	\N	Kenny
tt4976192	nm0131564	actor	\N	Steve
tt4976192	nm2000606	actor	\N	Luke
tt4976192	nm0362484	actor	\N	Hanson
tt4976192	nm1035854	actor	\N	Tre
tt4976192	nm8565680	actor	\N	Police
tt4976192	nm6343096	actress	\N	Sarah
tt4976192	nm0069076	actor	\N	Hyde
tt5073642	nm0000115	actor	\N	Nathan
tt5073642	nm0000613	actress	\N	Theresa
tt5073642	nm4699715	actress	\N	Lavinia
tt5073642	nm3231931	actor	\N	Ward
tt5073642	nm0001045	actor	\N	Ezra
tt5073642	nm2063811	actor	\N	Benny
tt5073642	nm6623135	actor	\N	Jack
tt5073642	nm1892220	actor	\N	Sheriff
tt5073642	nm0452963	actress	\N	Mayor
tt5073642	nm2834550	actress	\N	Reporter
tt5195776	nm6765141	actor	\N	Wiz
tt5195776	nm6765142	actor	\N	Boomstick
tt5195776	nm5210839	actor	\N	Battle
tt5195776	nm0000115	actor	\N	Dr
tt5195776	nm0003944	actor	\N	Mega
tt5195776	nm0383603	actor	\N	Astro
tt5195776	nm0458342	actor	\N	Cut
tt5460530	nm0000115	actor	\N	John
tt5460530	nm0404307	actress	\N	Teena
tt5460530	nm5145057	actress	\N	Bethie
tt5460530	nm0000679	actress	\N	Agnes
tt5460530	nm0000467	actor	\N	Jay
tt5460530	nm2282254	actor	\N	Marvin
tt5460530	nm3587081	actor	\N	Lloyd
tt5460530	nm5240978	actor	\N	Jimmy
tt5460530	nm3264067	actor	\N	Fritz
tt5460530	nm0005492	actress	\N	Irma
tt5462326	nm0000115	actor	\N	Brent
tt5462326	nm0004757	actress	\N	Kendall
tt5462326	nm3453476	actress	\N	Carly
tt5462326	nm6236879	actor	\N	Josh
tt5462326	nm8217562	actor	\N	Damon
tt5462326	nm1478028	actress	\N	Riley
tt5462326	nm0000448	actor	\N	Mel
tt5462326	nm0268047	actress	\N	Barbara
tt5462326	nm0501489	actress	\N	Jenna
tt5462326	nm0718647	actor	\N	Homeroom
tt5580536	nm0000115	actor	\N	Eddie
tt5580536	nm0000131	actor	\N	Sal
tt5580536	nm0004978	actor	\N	JP
tt5580536	nm0000628	actor	\N	Mikey
tt5580536	nm1055590	actress	\N	Lizzie
tt5580536	nm1151972	actor	\N	Luca
tt5580536	nm4758407	actress	\N	Alexis
tt5580536	nm6374072	actor	\N	Young
tt5580536	nm7377716	actor	\N	Young
tt5580536	nm2072006	actress	\N	Vicki
tt5792656	nm0000115	actor	\N	The
tt5792656	nm0000401	actor	\N	The
tt5792656	nm0004753	actress	\N	Agent
tt5792656	nm0369513	actor	\N	The
tt5792656	nm0004965	actor	\N	The
tt5792656	nm0004906	actor	\N	Number
tt5792656	nm0001608	actor	\N	The
tt5792656	nm1631819	actor	\N	Border
tt5792656	nm8037956	actress	\N	The
tt5792656	nm1324884	actor	\N	The
tt6083648	nm0000115	actor	\N	Ray
tt6083648	nm0000677	actress	\N	Maggie
tt6083648	nm0089456	actor	\N	Howard
tt6083648	nm0113536	actor	\N	Tommy
tt6083648	nm0336693	actress	\N	Jessica
tt6083648	nm5591269	actress	\N	Strawberry
tt6083648	nm0092877	actor	\N	Ben
tt6083648	nm5211528	actor	\N	Gas
tt6083648	nm2673512	actor	\N	Gas
tt6083648	nm8551777	actress	\N	Becky
tt6143568	nm0000115	actor	\N	Noah
tt6143568	nm0511264	actress	\N	Rachel
tt6143568	nm3240434	actor	\N	Lucas
tt6143568	nm0227003	actor	\N	Adam
tt6143568	nm0788370	actor	\N	Agent
tt6143568	nm0750343	actor	\N	Adolf
tt6143568	nm4087248	actress	\N	Schroder
tt6143568	nm4165005	actor	\N	Spiky
tt6143568	nm4810527	actor	\N	Little
tt6143568	nm0522704	actor	\N	Irving
tt6372694	nm0000115	actor	\N	Hero
tt6372694	nm1154749	actress	\N	Bernice
tt6372694	nm0001024	actor	\N	Psycho
tt6372694	nm0608405	actor	\N	Governor
tt6372694	nm1056120	actor	\N	Yasujiro
tt6372694	nm5880581	actor	\N	Ratman
tt6372694	nm0323102	actor	\N	Enoch
tt6372694	nm12944270	actor	\N	Chimera
tt6372694	nm5230317	actor	\N	Curi
tt6372694	nm0913880	actor	\N	Nabe
tt6760434	nm8911093	actor	\N	The
tt6760434	nm8911094	actor	\N	The
tt6760434	nm0000115	actor	\N	Peter
tt6998518	nm0000115	actor	\N	Red
tt6998518	nm2057859	actress	\N	Mandy
tt6998518	nm0730070	actor	\N	Jeremiah
tt6998518	nm0219329	actor	\N	Brother
tt6998518	nm0288260	actress	\N	Mother
tt6998518	nm0104114	actor	\N	The
tt6998518	nm0004886	actor	\N	Caruthers
tt6998518	nm4793477	actress	\N	Sister
tt6998518	nm9456010	actor	\N	Brother
tt6998518	nm6002720	actor	\N	Brother
tt7295450	nm0000115	actor	\N	Joe
tt7295450	nm0004376	actress	\N	Julie
tt7295450	nm3241414	actress	\N	Billie
tt7295450	nm2372412	actor	\N	Mike
tt7295450	nm1813421	actor	\N	Rick
tt7295450	nm1935905	actress	\N	Mary
tt7295450	nm8610007	actress	\N	Jasmine
tt7295450	nm1840086	actor	\N	Larry
tt7295450	nm0614861	actor	\N	Doctor
tt7295450	nm1787921	actress	\N	Lettie
tt7394816	nm0000115	actor	\N	Frank
tt7394816	nm0000463	actress	\N	Dr
tt7394816	nm0243806	actor	\N	Loffler
tt7394816	nm5138610	actor	\N	Rafael
tt7394816	nm1206818	actor	\N	John
tt7394816	nm0408284	actor	\N	Freed
tt7394816	nm2397267	actor	\N	Vasquez
tt7394816	nm0144996	actor	\N	Morales
tt7394816	nm2142537	actor	\N	Forrest
tt7394816	nm0926355	actor	\N	Scuddy
tt8114980	nm0000115	actor	\N	The
tt8114980	nm6376834	actress	\N	Liv
tt8114980	nm0335275	actress	\N	Sheriff
tt8114980	nm0718680	actor	\N	Tex
tt8114980	nm1070870	actor	\N	Jed
tt8114980	nm9090581	actress	\N	Kathy
tt8114980	nm10731411	actor	\N	Chris
tt8114980	nm8886849	actor	\N	Dan
tt8114980	nm7570216	actor	\N	Bob
tt8114980	nm6764801	actor	\N	Aaron
tt8380776	nm0000115	actor	\N	Walter
tt8380776	nm0834380	actress	\N	Fancy
tt8380776	nm0972851	actor	\N	Buddy
tt8380776	nm0001288	actor	\N	Detective
tt8380776	nm1748489	actress	\N	Detective
tt8380776	nm3165541	actor	\N	Officer
tt8380776	nm4937591	actress	\N	Lisa
tt8380776	nm5682752	actress	\N	Patty
tt8380776	nm1038783	actor	\N	Police
tt8380776	nm1035135	actor	\N	Police
tt8535180	nm0000115	actor	\N	Ara
tt8535180	nm4166320	actress	\N	Renata
tt8535180	nm0170186	actor	\N	The
tt8535180	nm0477127	actor	\N	Lance
tt8535180	nm0148382	actress	\N	The
tt8535180	nm1603145	actor	\N	Sanchez
tt8535180	nm9088277	actor	\N	Miguel
tt8535180	nm0050584	actor	\N	The
tt8535180	nm1025966	actor	\N	The
tt8535180	nm11040870	actor	\N	Oso
tt8593824	nm0000115	actor	\N	Colton
tt8593824	nm8740834	actress	\N	Brooke
tt8593824	nm7885187	actor	\N	James
tt8593824	nm0397212	actor	\N	Eustice
tt8593824	nm0072344	actor	\N	Michael
tt8593824	nm1944279	actress	\N	Ruth
tt8593824	nm0005089	actor	\N	Robert
tt8593824	nm0493797	actor	\N	Greg
tt8593824	nm1738155	actor	\N	Walter
tt8593824	nm0780678	actor	\N	Marshal
tt9624766	nm3857692	actor	\N	Jake
tt9624766	nm0000115	actor	\N	Wylie
tt9624766	nm12083010	actor	\N	Fisherman
tt9624766	nm12083011	actress	\N	Fisherman
tt9624766	nm2142537	actor	\N	Private
tt9624766	nm6545385	actor	\N	Hickman
tt9624766	nm1100337	actor	\N	Tex
tt9624766	nm0950935	actor	\N	Captain
tt9624766	nm2955595	actress	\N	Myra
tt9624766	nm12083012	actor	\N	Soldier
\.


--
-- TOC entry 4909 (class 0 OID 40119)
-- Dependencies: 217
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persons (nconst, "primaryName", "birthYear", "deathYear", "primaryProfession") FROM stdin;
nm0000032	Charlton Heston	1923	2008	actor,director,writer
nm0000099	Patricia Arquette	1968	\N	actress,producer,director
nm0000103	Fairuza Balk	1974	\N	actress,soundtrack,archive_footage
nm0000114	Steve Buscemi	1957	\N	actor,producer,director
nm0000115	Nicolas Cage	1964	\N	actor,producer,director
nm0000120	Jim Carrey	1962	\N	actor,writer,producer
nm0000125	Sean Connery	1930	2020	actor,producer,director
nm0000131	John Cusack	1966	\N	actor,producer,writer
nm0000144	Cary Elwes	1962	\N	actor,producer,miscellaneous
nm0000152	Richard Gere	1949	\N	actor,producer,music_department
nm0000153	Gina Gershon	1962	\N	actress,producer,writer
nm0000160	Ethan Hawke	1970	\N	actor,producer,writer
nm0000166	Helen Hunt	1963	\N	actress,producer,director
nm0000168	Samuel L. Jackson	1948	\N	actor,producer,miscellaneous
nm0000169	Tommy Lee Jones	1946	\N	actor,director,writer
nm0000172	Harvey Keitel	1939	\N	actor,producer,soundtrack
nm0000173	Nicole Kidman	1967	\N	actress,producer,music_department
nm0000174	Val Kilmer	1959	2025	actor,producer,director
nm0000178	Diane Lane	1965	\N	actress,soundtrack,archive_footage
nm0000194	Julianne Moore	1960	\N	actress,producer,soundtrack
nm0000206	Keanu Reeves	1964	\N	actor,producer,miscellaneous
nm0000210	Julia Roberts	1967	\N	actress,producer,soundtrack
nm0000212	Meg Ryan	1961	\N	actress,producer,director
nm0000221	Charlie Sheen	1965	\N	actor,producer,writer
nm0000223	Elisabeth Shue	1963	\N	actress,producer,soundtrack
nm0000225	Christian Slater	1969	\N	actor,producer,director
nm0000228	Kevin Spacey	1959	\N	actor,producer,director
nm0000234	Charlize Theron	1975	\N	producer,actress,costume_designer
nm0000237	John Travolta	1954	\N	actor,producer,music_department
nm0000260	Joan Allen	1956	\N	actress,producer,soundtrack
nm0000288	Christian Bale	1974	\N	actor,producer,editorial_department
nm0000293	Sean Bean	1959	\N	actor,producer,animation_department
nm0000299	Michael Biehn	1956	\N	actor,producer,director
nm0000323	Michael Caine	1933	\N	actor,producer,miscellaneous
nm0000325	David Caruso	1956	\N	actor,producer,archive_footage
nm0000332	Don Cheadle	1964	\N	actor,producer,director
nm0000333	Cher	1946	\N	music_artist,actress,producer
nm0000336	James Coburn	1928	2002	actor,producer,director
nm0000350	Beverly D'Angelo	1951	\N	actress,producer,soundtrack
nm0000353	Willem Dafoe	1955	\N	actor,producer,writer
nm0000356	Sybil Danning	\N	\N	actress,producer,writer
nm0000368	Laura Dern	1967	\N	actress,producer,writer
nm0000369	Matt Dillon	1964	\N	actor,director,producer
nm0000374	Brad Dourif	1950	\N	actor,archive_footage,archive_sound
nm0000385	Sam Elliott	1944	\N	actor,producer,writer
nm0000389	Emilio Estevez	1962	\N	actor,director,producer
nm0000401	Laurence Fishburne	1961	\N	actor,producer,director
nm0000403	Bridget Fonda	1964	\N	actress,soundtrack,archive_footage
nm0000412	Andy Garcia	1956	\N	actor,producer,director
nm0000417	Crispin Glover	\N	\N	actor,director,writer
nm0000420	Valeria Golino	1965	\N	actress,writer,producer
nm0000422	John Goodman	1952	\N	actor,producer,soundtrack
nm0000438	Ed Harris	1950	\N	actor,producer,director
nm0000439	Neil Patrick Harris	1973	\N	actor,producer,writer
nm0000448	Lance Henriksen	1940	\N	actor,producer,miscellaneous
nm0000454	Dennis Hopper	1936	2010	actor,director,writer
nm0000456	Holly Hunter	1958	\N	actress,producer,miscellaneous
nm0000457	John Hurt	1940	2017	actor,soundtrack,archive_footage
nm0000463	Famke Janssen	1964	\N	actress,writer,producer
nm0000467	Don Johnson	1949	\N	actor,producer,director
nm0000481	Alice Krige	1954	\N	actress,producer,writer
nm0000489	Christopher Lee	1922	2015	actor,miscellaneous,producer
nm0000495	Téa Leoni	1966	\N	actress,producer,miscellaneous
nm0000511	Shirley MacLaine	1934	\N	actress,writer,producer
nm0000518	John Malkovich	1953	\N	actor,producer,writer
nm0000522	Vanessa Marcil	1968	\N	actress,archive_footage
nm0000531	Frances McDormand	1957	\N	actress,producer,soundtrack
nm0000538	Colm Meaney	1953	\N	actor,producer,soundtrack
nm0000545	Helen Mirren	1945	\N	actress,producer,director
nm0000546	Matthew Modine	1959	\N	actor,producer,director
nm0000547	Alfred Molina	1953	\N	actor,producer,director
nm0000552	Eddie Murphy	1961	\N	actor,writer,producer
nm0000572	Sarah Jessica Parker	1965	\N	actress,producer,miscellaneous
nm0000576	Sean Penn	1960	\N	actor,producer,director
nm0000579	Ron Perlman	1950	\N	actor,producer,director
nm0000609	Ving Rhames	1959	\N	actor,producer,writer
nm0000610	Giovanni Ribisi	1974	\N	actor,producer,cinematographer
nm0000613	Joely Richardson	1965	\N	actress,producer,soundtrack
nm0000618	Isabella Rossellini	1952	\N	actress,director,writer
nm0000620	Mickey Rourke	1952	\N	actor,writer,producer
nm0000628	Johnathon Schaech	1969	\N	actor,producer,writer
nm0000641	Gary Sinise	1955	\N	actor,producer,director
nm0000658	Meryl Streep	1949	\N	actress,writer,producer
nm0000661	Donald Sutherland	1935	2024	actor,producer,writer
nm0000663	Dominique Swain	1980	\N	actress,producer,assistant_director
nm0000670	Lea Thompson	1961	\N	actress,director,producer
nm0000673	Marisa Tomei	1964	\N	actress,producer,soundtrack
nm0000677	Robin Tunney	1972	\N	actress,soundtrack,archive_footage
nm0000678	Kathleen Turner	1954	\N	actress,producer,director
nm0000679	Deborah Kara Unger	1966	\N	actress,producer,miscellaneous
nm0000685	Jon Voight	1938	\N	actor,producer,writer
nm0000687	J.T. Walsh	1943	1998	actor,archive_footage,archive_sound
nm0000701	Kate Winslet	1975	\N	actress,producer,director
nm0000704	Elijah Wood	1981	\N	actor,producer,director
nm0000707	Sean Young	\N	\N	actress,miscellaneous,director
nm0000718	Ian Abercrombie	1934	2012	actor,miscellaneous,archive_footage
nm0000732	Danny Aiello	1933	2019	actor,producer,writer
nm0000744	Maria Conchita Alonso	1955	\N	actress,producer,composer
nm0000758	Melody Anderson	1955	\N	actress,manager,archive_footage
nm0000828	Barbara Bain	1931	\N	actress,soundtrack,archive_footage
nm0000843	Anne Bancroft	1931	2005	actress,director,writer
nm0000862	Robin Bartlett	1951	\N	actress,miscellaneous,archive_footage
nm0000871	Randall Batinkoff	1968	\N	actor,producer,director
nm0000884	Jennifer Beals	1963	\N	actress,producer,camera_department
nm0000899	Monica Bellucci	1964	\N	actress,producer,soundtrack
nm0000916	Peter Berg	1964	\N	producer,actor,writer
nm0000950	Brenda Blethyn	1946	\N	actress,writer,soundtrack
nm0000973	Benjamin Bratt	\N	\N	actor,producer,director
nm0000995	Ellen Burstyn	1932	\N	actress,producer,director
nm0000999	Red Buttons	1919	2006	actor,writer,miscellaneous
nm0001001	James Caan	1940	2022	actor,director,stunts
nm0001003	Simon Callow	1949	\N	actor,writer,director
nm0001022	Dana Carvey	1955	\N	actor,writer,producer
nm0001024	Nick Cassavetes	1959	\N	actor,director,writer
nm0001025	Seymour Cassel	1935	2019	actor,cinematographer,miscellaneous
nm0001045	Tommy Chong	1938	\N	actor,writer,producer
nm0001056	Dabney Coleman	1932	2024	actor,miscellaneous,producer
nm0001151	Stephen Dorff	1973	\N	actor,producer,writer
nm0001156	Olympia Dukakis	1931	2021	actress,producer,archive_footage
nm0001159	Faye Dunaway	1941	\N	actress,producer,director
nm0001166	James Duval	1972	\N	actor,producer,writer
nm0001187	Noah Emmerich	1965	\N	actor,director
nm0001209	William Fichtner	1956	\N	actor,producer,director
nm0001223	Lara Flynn Boyle	1970	\N	actress,producer,soundtrack
nm0001228	Peter Fonda	1940	2019	actor,producer,director
nm0001235	William Forsythe	1955	\N	actor,producer,writer
nm0001240	Dennis Franz	1944	\N	actor,writer,producer
nm0001254	James Gandolfini	1961	2013	actor,producer,soundtrack
nm0001287	Heather Graham	1970	\N	actress,producer,director
nm0001288	Kelsey Grammer	1955	\N	producer,actor,music_department
nm0001303	Carla Gugino	1971	\N	actress,producer,soundtrack
nm0001304	Fred Gwynne	1926	1993	actor,writer,soundtrack
nm0001311	Philip Baker Hall	1931	2022	actor,soundtrack,archive_footage
nm0001334	John Heard	1946	2017	actor,producer,soundtrack
nm0001354	Ciarán Hinds	1953	\N	actor,soundtrack,archive_footage
nm0001363	Jane Horrocks	1964	\N	actress,writer,music_department
nm0001364	Bob Hoskins	1942	2014	actor,director,producer
nm0001368	Ernie Hudson	1945	\N	actor,producer,writer
nm0001393	Irène Jacob	1966	\N	actress,executive,archive_footage
nm0001401	Angelina Jolie	1975	\N	actress,producer,director
nm0001416	Catherine Keener	1959	\N	actress,producer,casting_department
nm0001424	Udo Kier	\N	\N	actor,writer,producer
nm0001458	Cloris Leachman	1926	2021	actress,soundtrack,archive_footage
nm0001467	Jared Leto	1971	\N	actor,producer,director
nm0001471	Jerry Lewis	1926	2017	actor,writer,director
nm0001473	Laura Linney	1964	\N	actress,producer,miscellaneous
nm0001484	Jon Lovitz	1957	\N	actor,writer,producer
nm0001498	John Mahoney	1940	2018	actor,producer,soundtrack
nm0001517	Catherine McCormack	1972	\N	actress,director,writer
nm0001525	John C. McGinley	1959	\N	actor,producer,writer
nm0001527	Elizabeth McGovern	1961	\N	actress,producer,writer
nm0001530	William McNamara	\N	\N	actor,producer,director
nm0001534	Michelle Meyrink	1962	\N	actress,archive_footage
nm0001552	Pat Morita	1932	2005	actor,writer,producer
nm0001556	David Morse	1953	\N	actor,producer,director
nm0001567	Connie Nielsen	1965	\N	actress,producer,writer
nm0001592	Joe Pantoliano	1951	\N	actor,producer,writer
nm0001599	Will Patton	1954	\N	actor,soundtrack,archive_footage
nm0001602	Guy Pearce	1967	\N	actor,producer,soundtrack
nm0001606	Chris Penn	1965	2006	actor,producer,director
nm0001608	Barry Pepper	1970	\N	actor,producer,executive
nm0001609	Rosie Perez	1964	\N	actress,miscellaneous,director
nm0001618	Joaquin Phoenix	1974	\N	actor,producer,director
nm0001626	Christopher Plummer	1929	2021	actor,producer,music_department
nm0001650	Michael Rapaport	1970	\N	actor,director,producer
nm0001662	Judge Reinhold	\N	\N	actor,producer,director
nm0001664	James Remar	1953	\N	actor,soundtrack,archive_footage
nm0001696	Julian Sands	1958	2023	actor,assistant_director,soundtrack
nm0001735	Talia Shire	1946	\N	actress,producer,director
nm0001744	Tom Sizemore	1961	2023	actor,producer,writer
nm0001759	Vincent Spano	\N	\N	actor,director,producer
nm0001765	Harry Dean Stanton	1926	2017	actor,soundtrack,archive_footage
nm0001780	Peter Stormare	1953	\N	actor,writer,producer
nm0001797	Rachel Ticotin	1958	\N	actress,miscellaneous,archive_footage
nm0001804	Stanley Tucci	1960	\N	actor,producer,writer
nm0001836	Steven Weber	1961	\N	actor,producer,writer
nm0001860	Alicia Witt	1975	\N	actress,music_department,producer
nm0001902	Edward Albert	1951	2006	actor,miscellaneous,producer
nm0001967	Peter Boyle	1935	2006	actor,soundtrack,archive_footage
nm0002012	Randall 'Tex' Cobb	1950	\N	actor,archive_footage
nm0002023	Matt Craven	1956	\N	actor,producer,archive_footage
nm0002062	Kathryn Erbe	1965	\N	actress,miscellaneous
nm0002064	Giancarlo Esposito	1958	\N	music_department,actor,producer
nm0002091	Michael Gambon	1940	2023	actor,music_department,soundtrack
nm0002138	Gregory Hines	1946	2003	actor,miscellaneous,director
nm0002148	Mary Beth Hurt	1946	\N	actress,archive_footage
nm0002245	Tzi Ma	1952	\N	actor,producer,archive_footage
nm0002253	John Carroll Lynch	1963	\N	actor,director,editor
nm0002517	Lee Purcell	\N	\N	actress,producer,director
nm0002546	Mena Suvari	1979	\N	actress,producer,writer
nm0002663	Diane Ladd	1935	\N	actress,producer,director
nm0002667	George Buck	\N	\N	actor
nm0003944	Ian James Corlett	1962	\N	actor,writer,music_department
nm0004376	Franka Potente	1974	\N	actress,director,writer
nm0004711	Marc Anthony	1968	\N	music_artist,actor,composer
nm0004742	Maria Bello	1967	\N	actress,producer,writer
nm0004743	Gil Bellows	1967	\N	actor,producer,director
nm0004753	Leslie Bibb	1973	\N	actress,producer,soundtrack
nm0004754	Jessica Biel	1982	\N	actress,producer,director
nm0004757	Selma Blair	1972	\N	actress,archive_footage
nm0004790	Scott Caan	1976	\N	actor,writer,producer
nm0004851	Penélope Cruz	1974	\N	actress,producer,director
nm0004861	Josie Davis	\N	\N	actress,producer,writer
nm0004886	Bill Duke	1943	\N	actor,director,producer
nm0004906	Peter Facinelli	1973	\N	actor,director,producer
nm0004965	Adam Goldberg	1970	\N	actor,writer,director
nm0004978	Adrian Grenier	1976	\N	actor,producer,director
nm0004979	David Alan Grier	1956	\N	actor,writer,producer
nm0004999	Shawn Hatosy	1975	\N	actor,director,writer
nm0005002	Isaac Hayes	1942	2008	music_artist,actor,music_department
nm0005048	Thomas Jane	1969	\N	actor,producer,director
nm0005064	January Jones	1978	\N	actress,soundtrack,archive_footage
nm0005089	Boyd Kestner	1964	\N	actor,writer,producer
nm0005093	Regina King	1971	\N	actress,producer,director
nm0005148	Delroy Lindo	1952	\N	actor,producer,soundtrack
nm0005182	Leslie Mann	1972	\N	actress,archive_footage
nm0005231	Dash Mihok	1974	\N	actor,director,producer
nm0005256	Bridget Moynahan	1971	\N	actress,director,producer
nm0005270	Aaron Neville	1941	\N	actor,composer,writer
nm0005273	Alessandro Nivola	1972	\N	actor,producer,executive
nm0005299	Sarah Paulson	1974	\N	actress,producer,director
nm0005315	Jeremy Piven	1965	\N	actor,producer,writer
nm0005350	Simon Rex	1974	\N	actor,producer,writer
nm0005351	Ryan Reynolds	1976	\N	actor,producer,writer
nm0005377	Sam Rockwell	1968	\N	actor,producer,director
nm0005383	Charlotte Ross	1968	\N	actress,soundtrack,archive_footage
nm0005403	Jason Schwartzman	1980	\N	actor,music_department,producer
nm0005406	William Lee Scott	1973	\N	actor,writer,archive_footage
nm0005439	Azura Skye	1981	\N	actress
nm0005447	Leelee Sobieski	1983	\N	actress,producer,archive_footage
nm0005492	Charlene Tilton	1958	\N	actress,producer,soundtrack
nm0005499	Lily Tomlin	1939	\N	actress,producer,writer
nm0005516	Blair Underwood	1964	\N	actor,producer,director
nm0005551	Lynn Whitfield	1953	\N	actress,producer
nm0006467	Vittorio Amandola	1952	2010	actor,miscellaneous
nm0006610	Donal Logue	1966	\N	actor,producer,director
nm0007210	Saul Rubinek	1948	\N	actor,director,writer
nm0011128	Kim Adams	\N	\N	actress
nm0013037	Shohreh Aghdashloo	1952	\N	actress,producer,soundtrack
nm0015196	Malin Akerman	1978	\N	actress,producer,soundtrack
nm0017377	Rutanya Alda	1942	\N	actress,miscellaneous,writer
nm0017449	Cary Wilmot Alden	\N	\N	actress
nm0018161	Raquel Alessi	1983	\N	actress,miscellaneous
nm0022883	Bruce Altman	1955	\N	actor,archive_footage
nm0022901	Jeff Altman	1951	\N	actor,producer,soundtrack
nm0026579	Dave Anderson	\N	\N	actor
nm0026692	Erika Anderson	1963	\N	actress,miscellaneous
nm0027199	Michael J. Anderson	1953	\N	actor,archive_footage
nm0028377	Pao Pei Andreoli	1968	\N	actor,producer
nm0031987	Robert Apel	\N	\N	actor
nm0035060	Adam Arkin	1956	\N	actor,director,producer
nm0035676	Dean Armstrong	1973	\N	producer,actor,director
nm0035709	Georgina Armstrong	\N	\N	stunts,actress,miscellaneous
nm0039051	Elizabeth Ashley	1939	\N	actress,archive_footage
nm0040662	Tom Atkins	1938	\N	actor,archive_footage
nm0050584	Alimi Ballard	1977	\N	actor,producer,archive_footage
nm0050959	Pedro Pascal	1975	\N	actor,producer,soundtrack
nm0056310	Sandy Baron	1936	2001	actor,writer,archive_footage
nm0057113	Dicky Barrett	1964	\N	actor,composer,miscellaneous
nm0058581	Justin Bartha	1978	\N	actor,producer,miscellaneous
nm0059431	Jay Baruchel	1982	\N	actor,producer,director
nm0061262	Bryan Batt	1963	\N	actor,producer,archive_footage
nm0061777	Chris Bauer	1966	\N	actor,archive_footage
nm0063440	Adam Beach	1972	\N	actor,producer,miscellaneous
nm0063571	Kate Beahan	1974	\N	actress,assistant_director,miscellaneous
nm0064769	Jim Beaver	1950	\N	actor,writer,producer
nm0065320	Graham Beckel	1949	\N	actor,director,music_department
nm0068293	John Bell	\N	\N	actor
nm0068338	Kristen Bell	1980	\N	actress,producer,writer
nm0069076	Michael Bellisario	1980	\N	actor,miscellaneous,soundtrack
nm0072344	Abraham Benrubi	1969	\N	actor,soundtrack
nm0072713	Lyriq Bent	1974	\N	actor,producer,writer
nm0075359	Xander Berkeley	1955	\N	actor,producer,make_up_department
nm0077512	Christopher Berry	\N	\N	actor
nm0087745	Félix Blaska	1941	\N	actor
nm0089456	Marc Blucas	1972	\N	actor,producer,writer
nm0089796	Jeff Blumenkrantz	\N	\N	actor,composer,producer
nm0092877	Bill Bolender	1940	\N	actor
nm0095652	Brenda Isaacs Booth	\N	\N	actress,producer,casting_director
nm0099202	Paula Boudreau	\N	\N	actress
nm0100566	Julie Bovasso	1930	1991	actress,miscellaneous
nm0100889	Michael Bowen	1958	\N	actor,soundtrack,archive_footage
nm0101005	Tom Bower	1938	2024	actor,producer,archive_footage
nm0103750	Wayne Brady	1972	\N	producer,actor,writer
nm0104114	Richard Brake	\N	\N	actor,archive_footage
nm0105672	Andre Braugher	1962	2023	actor,producer,director
nm0113536	Ernie Lively	1947	2021	actor,producer,director
nm0113595	Garrett M. Brown	1948	\N	actor,writer
nm0114177	Marcus Lyle Brown	1970	\N	actor,producer,miscellaneous
nm0121605	Billy Burke	1966	\N	actor,producer,writer
nm0123092	Ty Burrell	1967	\N	actor,producer,writer
nm0124798	Jason Butler Harner	\N	\N	actor
nm0126284	Rose Byrne	1979	\N	actress,producer,soundtrack
nm0131564	Dwayne Cameron	1981	\N	actor,producer,director
nm0132257	Bruce Campbell	1958	\N	actor,producer,director
nm0132300	Christa Campbell	1972	\N	producer,executive,actress
nm0132517	J. Kenneth Campbell	1947	\N	actor,archive_footage
nm0135306	John Capodice	1941	2024	actor,producer,archive_footage
nm0141324	Silas Carson	1965	\N	actor,archive_footage,archive_sound
nm0141560	Danielle Carter	\N	\N	actress,miscellaneous,archive_footage
nm0141839	Myra Carter	1929	2016	actress,transportation_department
nm0144996	Braulio Castillo hijo	1958	\N	actor
nm0148382	Angie Cepeda	1974	\N	actress,music_department
nm0149447	Amar Chadha-Patel	1986	\N	actor,director,writer
nm0149923	Feodor Chaliapin Jr.	1905	1992	actor,archive_footage
nm0152638	Dave Chappelle	1973	\N	writer,producer,actor
nm0155166	Camille Chen	\N	\N	actress,producer,director
nm0157312	Fernando Chien	\N	\N	actor,director,assistant_director
nm0157915	Nick Chinlund	1961	\N	actor,producer
nm0159789	Hayden Christensen	1981	\N	actor,producer,archive_footage
nm0160004	Claudia Christian	\N	\N	actress,director,producer
nm0162281	Enzo Cilenti	1974	\N	actor,producer
nm0163303	Georges Claisse	1941	2021	actor,writer,miscellaneous
nm0170186	Enrico Colantoni	1963	\N	actor,producer,director
nm0171513	Margaret Colin	1958	\N	actress,archive_footage
nm0172333	Greg Collins	1952	\N	actor,stunts
nm0175814	Frances Conroy	1953	\N	actress,soundtrack,archive_footage
nm0176073	Michael Constantine	1927	2021	actor,archive_footage
nm0177639	Jennifer Coolidge	1961	\N	actress,writer,soundtrack
nm0177933	Chris Cooper	1951	\N	actor,director,producer
nm0178527	Marc Copage	1962	\N	actor,director,writer
nm0178898	Marc Coppola	1958	\N	actor,casting_department,producer
nm0179151	Gretchen Corbett	1945	\N	actress
nm0182456	Robert Costanzo	1942	\N	actor,producer,director
nm0185980	Philip Craig	\N	\N	actor,producer
nm0189278	T.J. Cross	\N	\N	actor
nm0190023	Julee Cruise	1956	2022	actress,music_department,soundtrack
nm0191442	Brett Cullen	1956	\N	actor,camera_department,producer
nm0192926	James Curreri	\N	\N	actor,casting_department
nm0193295	Cliff Curtis	1968	\N	actor,producer,archive_footage
nm0193554	Vondie Curtis-Hall	1950	\N	actor,director,writer
nm0197354	Elizabeth Daily	\N	\N	actress,producer,writer
nm0197664	Cynthia Dale	1961	\N	actress,producer,archive_footage
nm0198970	Sarah Dampf	1990	\N	actress
nm0204706	Hope Davis	1964	\N	actress,soundtrack,archive_footage
nm0212619	Michael Deak	1960	\N	special_effects,make_up_department,actor
nm0216392	Diane Delano	1957	2024	actress,soundtrack,archive_footage
nm0219329	Ned Dennehy	1965	\N	actor,soundtrack,miscellaneous
nm0224532	Illana Diamant	1961	\N	actress,casting_director,producer
nm0227003	Hugh Dillon	1963	\N	actor,writer,producer
nm0227759	Peter Dinklage	1969	\N	actor,producer,stunts
nm0228878	Joe Dixon	1965	\N	actor,archive_footage
nm0234174	Omar J. Dorsey	1975	\N	actor,producer,director
nm0234564	Rhonda Dotson	\N	2022	actress
nm0235096	James B. Douglas	1929	2009	actor,archive_footage
nm0237724	Stephanie Drewel	\N	\N	actress
nm0241173	Clark Duke	\N	\N	actor,director,producer
nm0242656	Kevin Dunn	1955	\N	actor,producer,soundtrack
nm0242659	Kirk Dunn	1964	\N	actor,writer
nm0243806	Kevin Durand	1974	\N	actor,director,writer
nm0245650	Cameron Dye	1959	\N	actor,soundtrack,art_department
nm0245653	Dale Dye	1944	\N	actor,miscellaneous,writer
nm0247611	Steve Eastin	1948	\N	actor,producer,miscellaneous
nm0252961	Idris Elba	1972	\N	actor,producer,writer
nm0254574	Nicholas Elliott	\N	\N	actor,writer,director
nm0255330	Greg Ellwand	\N	\N	actor,archive_footage
nm0263625	JD Evermore	1968	\N	actor,editor,producer
nm0264603	Joel Fabiani	1936	\N	actor,archive_footage
nm0267805	Todd Farmer	1968	\N	writer,actor,producer
nm0268047	Marilyn Dodds Frank	\N	\N	actress
nm0269416	Gianluca Favilla	1950	1991	actor
nm0272173	Colm Feore	1958	\N	actor,writer,archive_footage
nm0274704	Veronica Ferres	1965	\N	actress,producer,miscellaneous
nm0277782	Ann C. Fink	\N	\N	actress,sound_department,miscellaneous
nm0278000	Stewart Finlay-McLennan	1957	\N	actor
nm0279297	Nancy Fish	1938	\N	actress,archive_footage
nm0281486	Charles Fleischer	1950	\N	actor,writer,miscellaneous
nm0286033	Deborah Foreman	1962	\N	actress,archive_footage
nm0288260	Olwen Fouéré	\N	\N	actress,writer,director
nm0290162	Geff Francis	\N	\N	actor
nm0290556	James Franco	1978	\N	actor,producer,director
nm0293422	J.E. Freeman	1946	2014	actor,archive_footage
nm0295285	Lisa Friedman	\N	\N	actress
nm0296592	Mariella Frostrup	1962	\N	actress,writer,miscellaneous
nm0301370	M.C. Gainey	1948	\N	actor,producer,archive_footage
nm0304918	Mark Garbarino	\N	\N	make_up_department,special_effects,actor
nm0306696	Vincent Gardenia	1920	1992	actor,soundtrack,archive_footage
nm0307255	Allen Garfield	1939	2020	actor,writer,soundtrack
nm0316079	Paul Giamatti	1967	\N	actor,producer,director
nm0316233	Mihalis Giannatos	1941	2013	actor,archive_footage
nm0316708	Nigel Gibbs	\N	\N	actor
nm0316912	Dale Gibson	\N	\N	stunts,actor,assistant_director
nm0319010	Aden Gillett	1958	\N	actor,archive_footage,archive_sound
nm0319036	Anita Gillette	1936	\N	actress,soundtrack,archive_footage
nm0319096	Burton Gilliam	1938	\N	actor,archive_footage
nm0322407	Brendan Gleeson	1955	\N	actor,producer,director
nm0323102	Charles Glover	1962	\N	actor,producer,miscellaneous
nm0326345	Simone Goldstene	1984	\N	actress,miscellaneous
nm0333701	David Graf	1950	2001	actor,archive_footage
nm0334318	Stephen Graham	1973	\N	actor,producer,writer
nm0335275	Beth Grant	\N	\N	actress,producer,director
nm0336693	Jacque Gray	1977	\N	actress
nm0339304	Bruce Greenwood	1956	\N	actor,producer,soundtrack
nm0341743	Richard Griffiths	1947	2013	actor,writer,archive_footage
nm0344196	Gary Grubbs	1949	\N	actor,writer,soundtrack
nm0348927	Louis Guss	1918	2008	actor,soundtrack,archive_footage
nm0350079	Luis Guzmán	1956	\N	actor,producer,writer
nm0350454	Maggie Gyllenhaal	1977	\N	actress,producer,director
nm0355097	Jackie Earle Haley	1961	\N	actor,director,writer
nm0362484	Cory Hardrict	1979	\N	actor,producer,archive_footage
nm0363157	John Harkins	1932	1999	actor,archive_footage
nm0369513	Cole Hauser	1975	\N	actor,producer,director
nm0372117	Anthony Head	1954	\N	actor,soundtrack,archive_footage
nm0372217	Anthony Heald	1944	\N	actor,archive_footage
nm0375332	Jack Heller	\N	\N	actor,director,writer
nm0376540	Martin Henderson	1974	\N	actor,director,assistant_director
nm0377034	Brad William Henke	1966	2022	actor,director,writer
nm0377106	Barry Shabaka Henley	1954	\N	actor,producer,soundtrack
nm0378660	Michael Herbig	1968	\N	actor,director,writer
nm0379596	Jay Hernandez	1978	\N	actor,producer,director
nm0382819	Catherine Hicks	1951	\N	actress,soundtrack,archive_footage
nm0383371	David Anthony Higgins	1961	\N	actor,writer,producer
nm0383603	Freddie Highmore	1992	\N	actor,producer,director
nm0387734	I.M. Hobson	1935	2003	actor,soundtrack
nm0389100	Susannah Hoffmann	1963	\N	actress,miscellaneous
nm0390503	Heidi Holicker	1960	\N	actress,miscellaneous,special_effects
nm0392703	Hugh B. Holub	1952	\N	actor
nm0394086	Alan Hopgood	1934	2022	writer,actor,script_department
nm0396558	Nicholas Hoult	1989	\N	actor,producer,executive
nm0396812	Danny Huston	1962	\N	actor,director,camera_department
nm0397135	Barbara Howard	1956	\N	actress,archive_footage
nm0397212	Clint Howard	1959	\N	actor,writer,producer
nm0404307	Anna Hutchison	1986	\N	actress,producer,archive_footage
nm0406975	Rhys Ifans	1967	\N	actor,producer,soundtrack
nm0408284	Michael Imperioli	1966	\N	actor,writer,producer
nm0410336	Mark Irvingsen	\N	\N	actor,producer,miscellaneous
nm0412850	Eddie Izzard	1962	\N	actress,producer,writer
nm0413658	Jeremy Kent Jackson	1973	\N	actor,miscellaneous,producer
nm0418317	Blanca Jansuzian	\N	\N	actress,casting_department
nm0421087	Lucinda Jenney	1954	\N	actress,archive_footage
nm0426390	Vance Johnson	\N	\N	actor
nm0427801	Constance Jones	\N	\N	actress
nm0427964	Doug Jones	1960	\N	actor,producer,soundtrack
nm0428241	Iain Jones	\N	\N	actor
nm0434052	Dimitris Kaberidis	1946	2010	actor,music_department,soundtrack
nm0434526	Heather Kafka	\N	\N	actress,writer,producer
nm0437747	Nirattisai Kaljareuk	\N	\N	director,producer,actor
nm0439482	John Karlen	1933	2020	actor,soundtrack,archive_footage
nm0442622	Rick Kavanian	1971	\N	actor,writer,producer
nm0443373	Paul Kaye	1965	\N	actor,writer,composer
nm0445992	Sheila Kelley	1961	\N	actress,producer,miscellaneous
nm0450461	Bryan Kestner	1964	\N	writer,producer,actor
nm0452963	Q'orianka Kilcher	1990	\N	actress,producer,director
nm0454598	Cleo King	1962	\N	actress,director,miscellaneous
nm0456124	Bruno Kirby	1949	2006	actor,director,writer
nm0457703	Lynne Kitei	\N	\N	miscellaneous,writer,director
nm0457796	Tory Kittles	1975	\N	actor,composer,producer
nm0458342	Terry Klassen	1957	\N	actor,miscellaneous,casting_department
nm0458514	Martin Klebba	1969	\N	actor,stunts,producer
nm0461545	Michael Knowles	1937	\N	actor,writer,archive_sound
nm0464522	Jacek Koman	1956	\N	actor,soundtrack,archive_footage
nm0469415	Aspasia Kralli	\N	\N	actress
nm0469823	Fran Kranz	1981	\N	actor,producer,director
nm0470981	Thomas Kretschmann	1962	\N	actor,archive_footage
nm0474160	T.J. Kuhn	1985	\N	actor
nm0477127	Ryan Kwanten	1976	\N	actor,producer,archive_footage
nm0478762	Katherine LaNasa	1966	\N	actress,producer
nm0478810	Gemmenne de la Peña	1992	\N	actress,producer,writer
nm0482466	James Lally	1956	\N	actor
nm0486359	Sophie Langevin	\N	\N	actress,director,writer
nm0487260	Charles Lanyer	1942	2020	actor
nm0490774	Andy Lauer	1965	\N	actor,director,producer
nm0493797	Adam Lazarre-White	\N	\N	actor,writer,producer
nm0499791	Fredric Lehne	1959	\N	actor,director,writer
nm0501435	Kasi Lemmons	1959	\N	actress,director,writer
nm0501489	Samantha Lemole	\N	\N	actress,producer,art_department
nm0503627	Michael Lerner	1941	2023	actor,archive_footage
nm0504007	Boris Lyoskin	1923	2020	actor
nm0506405	Eugene Levy	1946	\N	actor,writer,producer
nm0507659	Richard Lewis	1947	2024	actor,writer,producer
nm0509672	Robert Liensol	1922	2011	actor,archive_sound
nm0511264	Sarah Lind	1982	\N	actress,director,casting_department
nm0511798	Viveca Lindfors	1920	1995	actress,director,writer
nm0514342	Litefoot	1968	\N	actor,producer,director
nm0514521	Brandy Little	\N	\N	actress,soundtrack
nm0515753	Robert Llewellyn	1956	\N	actor,writer,producer
nm0516865	Calvin Lockhart	1934	2007	actor,director,archive_footage
nm0517844	Alison Lohman	1979	\N	actress,producer,archive_footage
nm0522704	David Lovgren	1969	\N	actor
nm0524197	Josh Lucas	1971	\N	actor,producer,cinematographer
nm0525439	Robert Lujan	\N	\N	actor,composer,music_department
nm0526649	Jessica Lundy	\N	\N	actress,writer
nm0527945	Pasha D. Lychnikoff	1967	\N	actor,archive_footage
nm0538002	Michael Maize	1974	\N	actor,producer,writer
nm0541908	Costas Mandylor	1965	\N	actor,archive_footage
nm0542759	Gabriel Mann	\N	\N	actor,soundtrack
nm0549475	Bob Maroff	1934	1991	actor
nm0553440	Adrian Martinez	\N	\N	actor,writer,director
nm0556750	Jackie Mason	1928	2021	actor,writer,producer
nm0557355	Walter Massey	1928	2014	actor,director,writer
nm0563510	Mario Mazzarotto	\N	\N	producer,actor
nm0564836	Brian McCann	1965	\N	writer,actor,producer
nm0565569	Stephen McHattie	1947	\N	actor,director,producer
nm0566282	Judith McConnell	1944	\N	actress,writer,archive_footage
nm0568658	Bobby Joe McFadden	1932	2002	actor
nm0568801	Colin McFarlane	1961	\N	actor,music_department,soundtrack
nm0569079	Jack McGee	1949	\N	actor,archive_footage
nm0569226	Bruce McGill	1950	\N	actor,soundtrack,archive_footage
nm0569732	Michael McGrady	\N	\N	actor,archive_footage
nm0571188	Lonette McKee	1954	\N	actress,composer,director
nm0573037	Julian McMahon	1968	\N	actor,producer,archive_footage
nm0573481	Sam McMurray	1952	\N	actor,producer,soundtrack
nm0574160	Marnie McPhail	\N	\N	actress,archive_footage
nm0577568	Michele Melega	1961	\N	actor
nm0578853	Ben Mendelsohn	1969	\N	actor,producer,script_department
nm0578949	Eva Mendes	1974	\N	actress,director,writer
nm0581008	Joanna Merlin	1931	2023	actress,casting_director,casting_department
nm0587043	A.D. Miles	\N	\N	writer,actor,producer
nm0587572	Jake Milkovich	\N	\N	actor
nm0587574	Ryan Milkovich	\N	\N	actor
nm0587944	Barry Miller	1958	\N	actor,soundtrack,archive_footage
nm0588777	Larry Miller	1953	\N	actor,writer,producer
nm0589077	Omar Benson Miller	1978	\N	actor,producer,director
nm0592367	Ernie Mirich	1965	\N	actor
nm0600667	Sheri Moon Zombie	1970	\N	actress,producer,miscellaneous
nm0601376	Joel David Moore	1977	\N	actor,producer,director
nm0606487	Dean Norris	1963	\N	actor,producer,soundtrack
nm0607920	Amy Morton	1959	\N	actress
nm0608405	Bill Moseley	1951	\N	actor,producer,writer
nm0614861	Brett Murray	\N	\N	sound_department,actor,miscellaneous
nm0614877	Chad Michael Murray	1981	\N	actor,producer,director
nm0615063	Joel Murray	1963	\N	actor,director,writer
nm0621357	Dominic Nardini	1970	\N	actor
nm0622544	David Naughton	1951	\N	actor,music_department,miscellaneous
nm0629697	Rachel Nichols	1980	\N	actress,producer
nm0629855	Julianne Nicholson	1971	\N	actress,producer,director
nm0631490	Bill Nighy	1949	\N	actor,producer,soundtrack
nm0640323	Frances O'Connor	\N	\N	actress,director,writer
nm0640413	Kevin J. O'Connor	1963	\N	actor,soundtrack,archive_footage
nm0641266	Jenny O'Hara	\N	\N	actress,director,soundtrack
nm0641354	Denis O'Hare	1962	\N	actor,writer,producer
nm0648249	Timothy Olyphant	1968	\N	actor,producer,soundtrack
nm0648846	Peter Onorati	1953	\N	actor,writer,producer
nm0652783	Cheri Oteri	1962	\N	actress,writer,producer
nm0660327	Irene Papas	1929	2022	actress,director,soundtrack
nm0662504	Molly Parker	1972	\N	actress,producer,director
nm0663019	Ted Parks	\N	\N	actor
nm0669129	Melvyn Pearls	\N	\N	actor
nm0671567	Michael Peña	1976	\N	actor,producer,soundtrack
nm0671721	Austin Pendleton	1940	\N	actor,director,writer
nm0674782	Harold Perrineau	1963	\N	actor,producer,miscellaneous
nm0675484	Lisa Jane Persky	1955	\N	actress,miscellaneous
nm0682161	Julie Piekarski	1963	\N	actress,archive_footage
nm0682495	Wendell Pierce	1963	\N	actor,producer,director
nm0686376	Violante Placido	1976	\N	actress,composer
nm0694112	Esteban Powell	1976	\N	actor,producer,camera_department
nm0694158	Jenny Powell	\N	\N	actress
nm0695623	Patrice-Flora Praxo	1966	2024	actress
nm0696169	Brian Presley	1977	\N	actor,producer,director
nm0696193	Harve Presnell	1933	2009	actor,soundtrack,archive_footage
nm0696430	J.A. Preston	1932	\N	actor,archive_footage
nm0698346	Emily Procter	1968	\N	actress
nm0701818	Wayne Pére	1965	\N	actor,producer,director
nm0705152	Paul Raci	\N	\N	actor,writer,producer
nm0711781	Shannon Ratigan	\N	\N	actor
nm0712675	Lou Rawls	1933	2006	actor,music_department,producer
nm0714198	Craig Reay	\N	\N	actor
nm0714310	James Rebhorn	1948	2014	actor,archive_footage
nm0716537	Stuart Regen	1959	1998	actor,producer
nm0718647	Joseph D. Reitman	1968	\N	actor,producer,director
nm0718680	Ric Reitz	\N	\N	actor,writer,producer
nm0728346	Michael Rispoli	1960	\N	actor,writer,producer
nm0728517	Lee Ritchey	\N	\N	actor
nm0730070	Linus Roache	1964	\N	actor,composer,soundtrack
nm0732198	Janet Robin	\N	\N	actress,composer,music_department
nm0734200	Sue Rock	\N	\N	actress,producer,writer
nm0737882	Victor Rojas	\N	\N	actor,miscellaneous
nm0741219	Adam Rose	1987	\N	actor,writer,director
nm0741803	John Roselius	1944	2018	actor,miscellaneous,stunts
nm0743304	Chelcie Ross	1942	\N	actor,soundtrack,archive_footage
nm0748075	Jennifer Rubin	1962	\N	actress,producer,archive_footage
nm0749263	Mark Ruffalo	1967	\N	actor,producer,writer
nm0750343	Kurt Max Runte	\N	\N	actor,casting_department,archive_footage
nm0752763	Pat Ryan	1946	1991	actor,archive_footage
nm0756050	Dolores Sage	\N	\N	actress
nm0761498	Chris Sanders	1962	\N	writer,actor,animation_department
nm0761687	Richard Sanders	1940	\N	actor,writer,producer
nm0763632	Renoly Santiago	1974	\N	actor,director
nm0765688	Pietro Sarubbi	\N	\N	actor,stunts
nm0766005	Will Sasso	1975	\N	actor,writer,producer
nm0769311	Diana Scarwid	1955	\N	actress,soundtrack,archive_footage
nm0774337	Jill Schoelen	1963	\N	actress,director,soundtrack
nm0778501	Jacob Scipio	\N	\N	actor,writer,archive_footage
nm0780558	Brett Seals	\N	\N	actor
nm0780678	Nick Searcy	1959	\N	actor,producer,director
nm0785594	Nestor Serrano	1955	\N	actor,archive_footage
nm0786075	Elizabeth Seton	\N	\N	actress
nm0786806	Cara Seymour	1964	\N	actress,soundtrack
nm0788370	Vicellous Shannon	1971	\N	actor,producer,miscellaneous
nm0789479	David Shaughnessy	1957	\N	actor,director,producer
nm0789976	Stan Shaw	1952	\N	actor,producer,archive_footage
nm0790285	Janet Shea	\N	\N	actress
nm0795289	Max Showalter	1917	2000	actor,music_department,soundtrack
nm0795407	Wil Shriner	1953	\N	writer,director,actor
nm0795711	Richard B. Shull	1929	1999	actor,writer,soundtrack
nm0795856	David Shumbris	1972	\N	stunts,actor
nm0799777	J.K. Simmons	1955	\N	actor,soundtrack,archive_footage
nm0803889	Bill Skarsgård	1990	\N	actor,producer,director
nm0804105	Gerasimos Skiadaresis	1960	\N	actor,archive_sound
nm0805195	Robert G. Slade	\N	\N	actor,miscellaneous
nm0810342	William Smith	1933	2021	actor,stunts,miscellaneous
nm0813977	Josef Sommer	1934	\N	actor,archive_footage
nm0814437	Jo-El Sonnier	1946	2024	actor,soundtrack
nm0817983	John Spencer	1946	2005	actor,archive_footage
nm0819079	Jordana Spiro	1977	\N	actress,producer,director
nm0819440	Gregory Sporleder	1964	\N	actor,writer,producer
nm0822476	Florence Stanley	1924	2003	actress,director,soundtrack
nm0825974	Mike Steiner	\N	\N	actor,miscellaneous
nm0827044	James A. Stephens	\N	\N	actor
nm0828980	Juliet Stevenson	1956	\N	actress,soundtrack,archive_footage
nm0830198	Ryan Stiles	1959	\N	producer,actor,miscellaneous
nm0834380	KaDee Strickland	1975	\N	actress,archive_footage
nm0838330	Sean Sullivan	1921	1985	actor,archive_footage
nm0839486	Ethan Suplee	1976	\N	actor,writer,soundtrack
nm0842770	Tilda Swinton	1960	\N	actress,producer,writer
nm0847727	Oleg Taktarov	1967	\N	actor,director,producer
nm0851610	Jay Tavare	\N	\N	actor,miscellaneous,special_effects
nm0857297	Tina Theberge	\N	\N	actress
nm0858378	Randy Thom	\N	\N	sound_department,actor,miscellaneous
nm0860947	Ulrich Thomsen	1963	\N	actor,producer,director
nm0861462	Lisa Thornhill	1966	\N	actress
nm0865573	Ricky Tognazzi	1955	\N	actor,director,writer
nm0869981	Tom Towles	1950	2015	actor,writer,archive_footage
nm0870166	Nadia Townsend	\N	\N	miscellaneous,actress,producer
nm0870439	Ian Tracey	1964	\N	actor,director,camera_department
nm0870729	Mary Ellen Trainor	1952	2015	actress,miscellaneous,archive_footage
nm0872755	Sarah Trigger	1968	\N	actress,stunts,archive_footage
nm0873998	Michael Trucco	\N	\N	actor,director,archive_footage
nm0876138	Alan Tudyk	1971	\N	actor,producer,writer
nm0876305	Dikran Tulaine	\N	\N	actor,director,producer
nm0878152	Aida Turturro	1962	\N	actress,soundtrack,archive_footage
nm0878597	Deborah Twiss	\N	\N	actress,producer,director
nm0878940	Zach Tyler Eisen	1993	\N	actor,sound_department,assistant_director
nm0882853	Brenda Vaccaro	1939	\N	actress,camera_department,archive_footage
nm0885090	Mark Valley	\N	\N	actor,producer,director
nm0887144	Brian Van Holt	1969	\N	actor,director
nm0887695	James Van Patten	\N	\N	actor,writer,producer
nm0891863	Makenzie Vega	1994	\N	actress,archive_footage
nm0893862	Gwen Verdon	1925	2000	actress,miscellaneous,art_department
nm0895812	Ronan Vibert	1964	2022	actor,archive_footage
nm0904967	Luna Lauren Velez	1964	\N	actress,producer,archive_footage
nm0907892	Johnny Walker	\N	\N	actor
nm0910844	Bozhao Wang	\N	\N	actor,producer
nm0913488	Kerry Washington	1977	\N	actress,producer,director
nm0913880	Tetsu Watanabe	1950	\N	actor,camera_department
nm0915637	Sarah Wayne Callies	\N	\N	actress,director,writer
nm0917361	Todd Weeks	1964	\N	actor
nm0926355	Sewell Whitney	\N	\N	actor
nm0926615	Johnny Whitworth	\N	\N	actor,producer,archive_footage
nm0929454	Michael G. Wilkinson	\N	\N	actor
nm0930971	Johnny Williams	\N	\N	actor,writer,producer
nm0931736	Steven Williams	1949	\N	actor,director,producer
nm0932112	Mykelti Williamson	1957	\N	actor,director,writer
nm0932194	Roger Willie	1964	\N	actor,producer
nm0932270	Austin Willis	1917	2004	actor,archive_footage
nm0933988	Rainn Wilson	1966	\N	actor,producer,writer
nm0934254	Trey Wilson	1948	1989	actor,composer,producer
nm0936488	Michael Wiseman	1967	\N	actor
nm0944702	Xzibit	1974	\N	actor,composer,music_department
nm0947338	Anton Yelchin	1989	2016	actor,camera_department,soundtrack
nm0947742	Don Yesso	1954	\N	actor,writer,producer
nm0947777	Charlie Yeung	1974	\N	actress,director,writer
nm0949744	Karen Young	1958	\N	actress,director,writer
nm0950935	Rick Yune	1971	\N	actor,producer,writer
nm0951471	Grace Zabriskie	1941	\N	actress,producer,soundtrack
nm0959242	José Zúñiga	1965	\N	actor,archive_footage
nm0960912	Lyndsy Fonseca	1987	\N	actress,soundtrack,archive_footage
nm0972851	Luke Benward	1995	\N	actor,producer,director
nm0992562	Alexander Karim	1976	\N	actor,writer,producer
nm0999139	James With	1967	\N	publicist,producer,actor
nm10082934	Sadie Soverall	2002	\N	actress
nm1018488	Wendi McLendon-Covey	1969	\N	actress,producer,writer
nm10208010	Cassandra Violet	\N	\N	music_department,actor,composer
nm1025966	Pedro Calvo	1985	\N	actor,writer
nm1035082	Jill Basey	1942	\N	actress
nm1035135	Danny Le Boyer	\N	\N	stunts,actor,assistant_director
nm1035854	Ori Pfeffer	1975	\N	actor,miscellaneous
nm1038783	Rob Mars	\N	\N	stunts,actor,assistant_director
nm1043075	Max Ryan	1967	\N	actor,producer,stunts
nm10481425	Jude Salazar	\N	\N	actress,producer
nm1049044	Rich Hopkins	\N	\N	stunts,actor,producer
nm1055590	Lydia Hull	\N	\N	actress,producer
nm1056120	Tak Sakaguchi	1975	\N	actor,miscellaneous,stunts
nm1063517	Kathryn Hahn	1973	\N	actress,producer,writer
nm1065206	Peter 'Pete' Fatovich	1930	2015	assistant_director,actor,director
nm1069256	Brett Gurewitz	1962	\N	actor,composer,producer
nm1070870	Chris Warner	1970	\N	actor,writer,producer
nm10731411	Kai Kadlec	\N	\N	actor
nm1092227	Sienna Miller	1981	\N	actress,miscellaneous,producer
nm1093951	Aaron Taylor-Johnson	1990	\N	actor,writer,music_department
nm1099079	Jean-Pierre Nshanian	\N	\N	actor
nm1100337	Eddie Steeples	1973	\N	actor,producer,writer
nm11040870	Yusuf Tangarife	\N	\N	actor
nm11060098	Liz Adjei	\N	\N	actress
nm11130674	Karen Rodriguez	\N	\N	actress
nm1113959	David Dayan Fisher	\N	\N	actor,producer,archive_sound
nm11164361	Thalia Campbell	2010	\N	actress
nm1128780	Elizabeth Tulloch	\N	\N	actress,location_management,producer
nm1150695	Alex Rittner	\N	\N	actress
nm1151972	William Mark McCullough	\N	\N	actor,producer,writer
nm1154749	Sofia Boutella	1982	\N	actress,soundtrack,archive_footage
nm1172478	Joel Kinnaman	1979	\N	actor,producer,archive_footage
nm1179677	Paul Scheer	\N	\N	actor,writer,director
nm1206818	LaMonica Garrett	\N	\N	actor,producer
nm12080960	Kailey Crawford	\N	\N	actress
nm1208167	Diane Kruger	1976	\N	actress,producer,camera_department
nm12083010	Raymond Pinharry	\N	\N	actor
nm12083011	Mary Makariou	\N	\N	actress
nm12083012	Philip Kkalas	\N	\N	actor
nm1209966	Oscar Isaac	1979	\N	actor,producer,soundtrack
nm1213456	Gia Mantegna	1990	\N	actress,costume_department,producer
nm1227814	Vanessa Hudgens	1988	\N	actress,producer,soundtrack
nm12295410	Lauren Acala	\N	\N	actress
nm12310050	Reuven Miller	\N	\N	\N
nm12357044	Duncan Vezain	\N	\N	miscellaneous,actor,stunts
nm1237235	Ronnie Gene Blevins	1977	\N	actor,writer,producer
nm1258970	Russell Brand	1975	\N	producer,writer,actor
nm1269733	Connor Paolo	\N	\N	actor,writer,director
nm1269976	Armando Riesco	\N	\N	actor,miscellaneous,writer
nm1274545	Reynaldo Gallegos	\N	\N	actor
nm1279721	Sharon Horgan	1970	\N	actress,producer,writer
nm12844103	Lily Bird	\N	\N	actress
nm1293751	Willie Metcalf	1930	2004	actor,soundtrack
nm12944270	Cici Zhou	\N	\N	actor
nm1297015	Emma Stone	1988	\N	actress,producer,soundtrack
nm1304386	Stephen Campbell Moore	1979	\N	actor,miscellaneous,archive_footage
nm1320100	Hugh Sexton	\N	\N	actor
nm1324845	Patrice Cols	\N	\N	actor
nm1324884	Tait Fletcher	1971	\N	actor,stunts,executive
nm1331905	Cindy Waite	\N	\N	actress
nm1336506	Andrew Hefler	1971	\N	actor,writer
nm1346713	Paco León	1974	\N	actor,writer,director
nm1356769	Shake Tukhmanyan	1951	\N	actress
nm1358539	Jennifer Carpenter	1979	\N	actress,producer,archive_footage
nm1382856	Melanie Jayne	\N	\N	actress,assistant_director,writer
nm1395312	Shahkrit Yamnarm	1978	\N	actor
nm1404239	Evan Peters	1987	\N	actor,producer,soundtrack
nm14064124	Oliver McCallum	\N	\N	actor
nm14096042	Nancy Good	\N	\N	actor
nm1420224	Treisa Gary	\N	\N	actress,producer,miscellaneous
nm1442945	Sorin Tofan	1969	\N	actor,writer
nm14673660	Daire McMahon	\N	\N	actor
nm1468783	Morgan Flynn	1994	\N	actress
nm1478028	Olivia Crocicchia	\N	\N	actress
nm1483273	John Patrick Jordan	\N	\N	actor,producer,writer
nm1486879	Jeff Hilliard	\N	\N	actor,writer,director
nm1506789	Adrienne Pickering	1981	\N	actress,camera_department,miscellaneous
nm1506981	Bashir Salahuddin	1976	\N	writer,actor,producer
nm1517407	Edrick Browne	\N	\N	actor,producer,director
nm1527905	Toby Kebbell	1982	\N	actor,archive_footage
nm1533036	Irone Singleton	\N	\N	actor,producer,director
nm15393849	Harper Hofstad	\N	\N	actress
nm15393850	Beckett Hofstad	\N	\N	actor
nm1544084	Jake Cherry	1996	\N	actor
nm1544217	Cam Gigandet	1982	\N	actor,miscellaneous,soundtrack
nm1545942	Jared Burke	\N	\N	stunts,actor,assistant_director
nm1567768	Brooke McCormick	\N	\N	actress,producer,writer
nm1570014	Samantha Coughlan	\N	\N	actress
nm1581597	Bess Rous	\N	\N	actress,archive_footage
nm1588066	Robert Sheehan	1988	\N	actor,producer,soundtrack
nm1601147	Brandon Scott Jones	\N	\N	actor,producer,writer
nm1603145	Eddie Martinez	1981	\N	actor,miscellaneous
nm1616937	Alessandra Mastronardi	1986	\N	actress,writer
nm16235629	Maila Hosie	\N	\N	actress
nm1631269	Chloë Grace Moretz	1997	\N	actress,producer,soundtrack
nm1631819	J.T. Holmes	\N	\N	stunts,actor,camera_department
nm1640173	Cooper Barnes	1979	\N	actor,producer,writer
nm1642866	Jonathan Baker	\N	\N	actor,producer,director
nm1645352	Ryan O'Nan	1977	\N	actor,writer,producer
nm1658935	Jack Huston	1982	\N	actor,writer,director
nm1664127	James Moses Black	\N	\N	actor,producer,miscellaneous
nm1668265	Matt Long	1980	\N	actor,producer,soundtrack
nm16826679	Maxima Masters	\N	\N	actor,actress
nm1683137	Nina Bergman	\N	\N	actress,music_department,producer
nm1694381	Greg McNeill	\N	\N	actor,cinematographer,camera_department
nm1706644	Chris Marrs	\N	\N	writer,actor,producer
nm1720028	Amber Heard	1986	\N	actress,producer,miscellaneous
nm1721648	David Rambo	1955	\N	producer,writer,casting_department
nm1738155	Corby Griesenbeck	\N	\N	actor,producer,production_manager
nm1742063	Dom Hetrakul	1976	\N	actor,archive_footage
nm1748489	Zulay Henao	\N	\N	actress,producer
nm1764351	Nicky Whelan	1981	\N	actress,producer,archive_footage
nm1767468	Richard Robichaux	1972	\N	actor,archive_footage
nm1777809	Simon Chin	\N	\N	actor,stunts,director
nm1782667	Matt Lanter	1983	\N	actor,miscellaneous,archive_footage
nm1785158	Anoja Dias Bolt	\N	\N	actress
nm1787921	Brit Shaw	\N	\N	actress,producer,writer
nm1795428	Dina Facklis	\N	\N	actress,producer
nm1798276	Yutaka Takeuchi	\N	\N	actor,producer,miscellaneous
nm1813421	Hopper Penn	1993	\N	actor,producer,archive_footage
nm1825214	John Mulaney	1982	\N	writer,actor,producer
nm1832166	André Badalamenti	1971	2012	actor,music_department
nm1832438	Warick Bright	\N	\N	actor
nm1839980	Kaiwi Lyman	\N	\N	actor,director,producer
nm1840086	Richard Pait	\N	2023	actor,director,writer
nm1840504	Tiffany Haddish	1979	\N	actress,producer,writer
nm1842974	Alex Wolff	1997	\N	actor,composer,producer
nm1855991	Lisa Giobbi	\N	\N	actress,miscellaneous
nm1872855	Spencer Wilding	1972	\N	actor,stunts,producer
nm1882929	Liana Liberato	1995	\N	actress
nm1892220	Josh C. Waller	\N	\N	producer,director,writer
nm1935905	Lydia Hearst	1984	\N	actress,producer,writer
nm1939687	The Cult	\N	\N	actor,composer,soundtrack
nm1944279	Kerry Knuppe	\N	\N	actress,writer,producer
nm1954240	Teresa Palmer	1986	\N	actress,producer,writer
nm2000023	Erika-Shaye Gair	1998	\N	actress,archive_footage
nm2000606	Weston Cage	1990	\N	actor,producer,soundtrack
nm2001258	Eric Uys	\N	\N	actor
nm2003521	Stewart Morgan	\N	\N	actor
nm2007030	Emily Meade	\N	\N	actress,soundtrack
nm2020108	Kenna James	\N	\N	actor,writer,producer
nm2020278	Scott Haze	\N	\N	actor,director,producer
nm2031358	Lamorne Morris	1983	\N	actor,producer,writer
nm2046480	Albert Malafronte	1954	\N	actor,stunts
nm2055475	Olja Hrustic	\N	\N	actress
nm2057769	Alexa Gerasimovich	2002	\N	actress
nm2057859	Andrea Riseborough	1981	\N	actress,producer,soundtrack
nm2063811	Brendan Meyer	\N	\N	actor,director,producer
nm2072006	Megan Leonard	\N	\N	actress
nm2091852	Lily Mo Sheen	1999	\N	actress,archive_footage
nm2106801	Louisa Krause	1986	\N	actress,camera_department,soundtrack
nm2140860	Maika Monroe	1993	\N	actress,producer,director
nm2142537	Tommy Walker	\N	\N	actor,producer,writer
nm2150199	Tadpole Triplett	\N	\N	producer,actor,writer
nm2153642	Anthony Piccininni	\N	\N	actor
nm2159926	Jake Johnson	1978	\N	actor,producer,writer
nm2162501	Kahina Carina	\N	\N	actress,director,camera_department
nm2171157	Fergus Riordan	\N	\N	actor
nm2192211	Lyndsey Nelson	\N	\N	actress
nm2205243	Jeremy Bobb	1981	\N	actor
nm2215143	Kiernan Shipka	1999	\N	actress,music_department,producer
nm2216125	Cassi Thomson	1993	\N	actress,soundtrack,archive_footage
nm2230865	Ashley Greene	1987	\N	actress,miscellaneous,archive_footage
nm2234564	Ciera Payton	\N	\N	actress,writer,miscellaneous
nm2255271	Andrew Lewis Caldwell	1989	\N	actor,director,writer
nm2282254	Joshua Mikel	\N	\N	actor,art_department,director
nm2295980	Lisa Hope Ross	\N	\N	actress
nm2322864	Chris Bartlett	1970	\N	actor,producer,costume_department
nm2348343	Sophie Wu	1983	\N	actress,writer
nm2352129	Stephen Baldocchi	\N	\N	actor
nm2355521	Chris Heebink	\N	\N	actor
nm2355635	Ben Schwartz	1981	\N	actor,writer,producer
nm2364777	Ele Bardha	\N	\N	stunts,actor,camera_department
nm2371805	Scarlet Rose Stallone	2002	\N	actress,archive_footage
nm2372412	Garrett Clayton	1991	\N	actor,producer,soundtrack
nm2395048	Adriene Mishler	1984	\N	actress
nm2397267	Isaac Santiago	\N	\N	actor,producer,script_department
nm2425105	Chandler Canterbury	1998	\N	actor,producer,archive_footage
nm2428220	Bonnie Mercado	\N	\N	actress,miscellaneous
nm2466842	Quinton Aaron	1984	\N	actor,producer,writer
nm2486428	Panward Hemmanee	1983	\N	actress
nm2524656	Tony Ghosthawk	\N	\N	actor
nm2554052	Jordin Sparks	1989	\N	actress,producer,composer
nm2558287	Alexandria Lee	\N	\N	actress,producer,art_director
nm2673512	Jason K. Wixom	\N	\N	actor,producer
nm2732198	Dean McAskil	\N	\N	actor,producer
nm2738931	Rahel Romahn	\N	\N	actor,producer,director
nm2764521	Karolina Wydra	1981	\N	actress
nm2786816	Robert LeQuang	1978	\N	actor,stunts
nm2794962	Hailee Steinfeld	1996	\N	actress,producer,composer
nm2807722	Joel Gillman	\N	\N	actor
nm2834550	Melissa Nearman	\N	\N	actress,producer
nm2843513	Alexandre Bailly	\N	\N	actor,stunts,producer
nm2845184	Kevin Cortes	\N	\N	actor
nm2847901	Brandon Belknap	\N	\N	actor
nm2874427	Aubrey Shea	1993	\N	actress,writer,director
nm2899405	Kaiti Manolidaki	\N	\N	actress
nm2946516	Claire Foy	1984	\N	actress,producer,soundtrack
nm2955595	Marie Avgeropoulos	1986	\N	actress,stunts
nm2958631	Simon Hanson	\N	\N	music_department,actor,soundtrack
nm2963760	Russell M. Haeuser	\N	\N	actor,stunts,miscellaneous
nm2970078	Jessica Clement	1995	\N	actress,director,music_department
nm2991942	Jason William Day	\N	\N	stunts,actor
nm3041648	Lara Robinson	1998	\N	actress
nm3043480	Aymen Hamdouchi	1985	\N	actor,producer,script_department
nm3045861	Jordan Johnson-Hinds	1989	\N	actor,archive_footage
nm3069420	Maxwell Jenkins	2005	\N	actor,archive_footage
nm3109964	Brian Tyree Henry	1982	\N	actor,producer,miscellaneous
nm3111515	Tuck Napaskorn	\N	\N	actor
nm3132733	Cody Walker	1988	\N	actor,miscellaneous,archive_footage
nm3138157	D.G. Maloney	1981	\N	actor
nm3141716	Alice Kim Cage	1984	\N	actress
nm3165541	Oliver Trevena	1981	\N	actor,producer,writer
nm3172635	Michael Abercromby	\N	\N	actor
nm3198531	Max Fowler	\N	\N	actor
nm3231931	Elliot Knight	\N	\N	actor,director,editor
nm3240434	Jakob Davies	2003	\N	actor,archive_footage
nm3241414	Penelope Mitchell	\N	\N	actress
nm3264067	Carter Burch	\N	\N	actor,stunts,miscellaneous
nm3346497	Joshua Long	\N	\N	actor
nm3380171	Nico Tortorella	1988	\N	actor,archive_footage
nm3437060	Kyle Bosman	\N	\N	writer,actor,director
nm3453476	Anne Winters	1994	\N	actress,producer,soundtrack
nm3456797	Brian Sutherland	1984	\N	actor,producer,writer
nm3468618	Alex Alegria	\N	\N	actor
nm3478273	Amber Rose Mason	\N	\N	actress,producer,miscellaneous
nm3486873	Kevin Rees	\N	\N	actor
nm3577929	Elijah Ungvary	1986	\N	actor,producer,sound_department
nm3587081	Rocco Nugent	\N	\N	actor,producer,writer
nm3619000	Johnny Wactor	1986	2024	actor,producer,writer
nm3643989	Tomiwa Edun	1984	\N	actor,miscellaneous
nm3650037	Sky Ferreira	1992	\N	actress,composer,music_department
nm3664051	Lauren Beatty	\N	\N	actress,camera_department,writer
nm3691729	Michael Rainey Jr.	2000	\N	actor,producer,executive
nm3774109	Sami Gayle	1996	\N	actress,producer,soundtrack
nm3857692	Alain Moussi	\N	\N	stunts,actor,producer
nm3924928	Daniel Graham	\N	\N	actor
nm3957052	Jenna Kanell	\N	\N	actress,director,stunts
nm3966733	Bruce Reizen	\N	\N	actor
nm4050835	Li Jun Li	\N	\N	actress,soundtrack,archive_footage
nm4087248	Destee Klyne	\N	\N	actress,casting_department,producer
nm4165005	Nikolas Filipovic	\N	\N	actor
nm4166320	Anabelle Acosta	1987	\N	actress,producer,archive_footage
nm4175221	Karan Soni	1989	\N	actor,director,producer
nm4232922	Christopher Matthew Cook	\N	\N	actor
nm4271336	Shameik Moore	1995	\N	actor,soundtrack
nm4280796	Julia Bray	\N	\N	actress,miscellaneous
nm4343850	Mohamed Karim	1980	\N	actor,producer
nm4402227	Jawed Berni	\N	\N	stunts,actor,producer
nm4446467	Tye Sheridan	1996	\N	actor,producer,writer
nm4464492	Dakota Daulby	\N	\N	actor,producer,writer
nm4511652	Kelly Marie Tran	1989	\N	actress,producer,soundtrack
nm4699715	Madeleine Arthur	1997	\N	actress,archive_footage
nm4749828	Robert Forgit	\N	\N	actor
nm4758407	Abbie Gayle	\N	\N	actress
nm4763412	Whitney Rice	\N	\N	actress,writer,producer
nm4766226	FKA twigs	1988	\N	actress,composer,director
nm4793477	Line Pillet	1990	\N	actress,director,writer
nm4793987	Issa Rae	1985	\N	producer,actress,writer
nm4810527	Jett Klyne	2009	\N	actor,archive_footage
nm4886833	Tania Novril	\N	\N	actress
nm4921550	Natalie Eva Marie	1984	\N	actress,archive_footage
nm4926955	Zyan Panagopoulos	\N	\N	actor
nm4927323	Emanuel Ragsdale	\N	\N	actor
nm4937591	Emily Marie Palmer	1994	\N	actress,writer,miscellaneous
nm4975017	Paul Philip Clark	\N	\N	actor,stunts,producer
nm5043859	Rachel Keller	1992	\N	actress,soundtrack,archive_footage
nm5086096	Carl Windom Carlito	\N	\N	casting_department,actor,miscellaneous
nm5138610	Jeremy Nazario	\N	\N	actor
nm5145057	Talitha Eliana Bateman	2001	\N	actress,archive_footage
nm5158491	George Todd McLachlan	1997	\N	actor,composer,director
nm5171772	Beth Harper	\N	\N	actress
nm5201194	Alexis Zollicoffer	\N	\N	actress,costume_department
nm5210839	Chris Guerrero	1989	\N	actor
nm5211528	Barry Jay Minoff	\N	\N	actor,producer,writer
nm5230317	Louis Kurihara	\N	\N	actor,soundtrack,archive_footage
nm5238466	Bailey Coppola	1995	\N	actor,miscellaneous,director
nm5240978	Joe Ochterbeck	\N	\N	actor,writer,director
nm5310225	Sophie Skelton	1994	\N	actress,archive_footage
nm5371554	Gary Poulter	1959	2013	actor
nm5371617	Brian Mays	\N	\N	actor
nm5377144	Awkwafina	1988	\N	actress,writer,producer
nm5385972	Jack Fulton	\N	\N	actor
nm5439765	Burns Burns	\N	\N	production_designer,actor,director
nm5451383	Melissa Bolona	1989	\N	actress
nm5476731	Exandrea Pitts	\N	\N	actress
nm5500408	Michelle Choi-Lee	\N	\N	actress
nm5591269	Kassia Conway	\N	\N	actress,soundtrack
nm5593433	Adam Scott Miller	\N	\N	actor
nm5637553	Laura Harrier	\N	\N	actress,archive_footage
nm5680429	Claudius Peters	\N	\N	actor,producer,writer
nm5682752	Beatrice Hernandez	\N	\N	actress,producer
nm5697985	David Klein	\N	\N	actor,producer,editor
nm5805772	Shane Gillis	1987	\N	actor,writer,producer
nm5810577	Angela Valley	\N	\N	actress
nm5880581	Young Dais	\N	\N	actor
nm5897057	Jaeden Martell	2003	\N	actor,producer,soundtrack
nm5925614	Aj Wilson McPhaul	\N	\N	actor
nm6002720	Alexis Julemont	\N	\N	actor
nm6236879	Zackary Arthur	2006	\N	actor,miscellaneous
nm6343096	Amanda Cerny	1991	\N	actress,producer
nm6349706	Grace Byers	\N	\N	actress,archive_footage
nm6374072	Kelton DuMont	\N	\N	actor
nm6376834	Emily Tosta	1998	\N	actress
nm6545385	John D. Hickman	\N	\N	actor,producer
nm6554076	Abraham Popoola	\N	\N	actor,director,writer
nm6623135	Julian Hilliard	\N	\N	actor,soundtrack,archive_footage
nm6667155	Tomer Lev Tov	\N	\N	actor
nm6703031	Chelcie Lynn	1987	\N	actress,writer,producer
nm6764801	Christian Delgrosso	1993	\N	actor,director,composer
nm6765141	Ben B. Singer	\N	\N	writer,actor,director
nm6765142	Chad James	\N	\N	actor,writer,producer
nm6779196	Kalie Hunter	\N	\N	actress
nm7180653	Eric Heister	\N	\N	actor
nm7340667	Cameron Lee Price	\N	\N	actor,producer,casting_director
nm7377716	Zachary Legendre	\N	\N	actor
nm7386306	Kaleb Horn	\N	\N	actor,writer
nm7415871	Noah Jupe	2005	\N	actor,soundtrack,archive_footage
nm7567974	Finn Little	2006	\N	actor,archive_footage
nm7570216	Terayle Hill	1994	\N	actor,producer,director
nm7885187	Noah Le Gros	1999	\N	actor
nm8037956	Marie Wagenman	\N	\N	actress
nm8133761	Dan Matteucci	\N	\N	actor,stunts,producer
nm8217562	Robert T. Cunningham	\N	\N	actor,writer,casting_director
nm8240130	Alexander Bertrand	\N	\N	actor,archive_footage
nm8543475	Chenoa Morison	\N	\N	actress
nm8551777	Kimmy Jimenez	\N	\N	actress,producer,director
nm8565680	Mark Basnight	\N	\N	actor
nm8610007	Nailim Sanchez	\N	\N	actress,casting_department
nm8610486	Rory O'Keeffe	\N	\N	actor,director,writer
nm8622675	Qualid Mezouar	\N	\N	actor
nm8740834	Ryan Kiera Armstrong	2010	\N	actress,soundtrack,archive_footage
nm8882271	Harlow Bottarini	\N	\N	actress
nm8886849	Jonathan Mercedes	\N	\N	stunts,actor,miscellaneous
nm8911093	Gaetano Zuccoli	\N	\N	actor
nm8911094	Tony Andres	\N	\N	actor
nm9007701	Star Slade	\N	\N	actress
nm9016307	Katrin Vankova	\N	\N	actress
nm9068738	Sally Clune	\N	\N	actress,miscellaneous,director
nm9088277	Jhon Bedoya	\N	\N	actor
nm9090581	Caylee Cowan	1998	\N	actress,producer,writer
nm9113893	Souheila Yacoub	1992	\N	actress
nm9198841	Erato Tziveleki	\N	\N	actress
nm9274239	Sienna Soho	\N	\N	actress
nm9287372	Dave Kenneth MacKinnon	\N	\N	actor,writer,producer
nm9456010	Clément Baronnet	\N	\N	actor
nm9538520	Fred Hechinger	1999	\N	actor,producer,director
nm9548332	Isla Johnston	\N	\N	actress,archive_footage
\.


--
-- TOC entry 4911 (class 0 OID 40133)
-- Dependencies: 219
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ratings (tconst, "averageRating", "numVotes") FROM stdin;
tt0082064	5.0	397
tt0086216	7.1	40022
tt0086525	6.4	20038
tt0086969	7.2	26024
tt0087089	6.6	20523
tt0087968	6.6	5486
tt0090769	5.3	1507
tt0091738	6.4	42765
tt0093565	7.2	74706
tt0093822	7.3	156380
tt0095722	4.5	2368
tt0098577	6.1	23361
tt0099575	4.8	7608
tt0099844	7.0	2083
tt0100762	5.0	1088
tt0100935	7.2	108331
tt0101004	4.3	4409
tt0104438	5.9	19867
tt0105226	7.0	26975
tt0106266	5.7	10234
tt0106684	4.0	4047
tt0109390	6.5	343
tt0109951	6.2	20264
tt0110167	6.4	46927
tt0111477	5.9	17346
tt0113552	6.0	20780
tt0113627	7.5	141072
tt0117500	7.4	370952
tt0118880	6.9	331419
tt0119094	7.3	415780
tt0120632	6.7	131888
tt0120832	6.1	89969
tt0134273	6.6	147980
tt0156039	6.9	318
tt0163988	6.9	79275
tt0187078	6.5	303771
tt0189998	6.9	46757
tt0205167	7.1	96
tt0205314	5.8	33
tt0218967	6.8	126391
tt0221823	7.3	62
tt0238112	5.9	36841
tt0238425	7.8	12
tt0245562	6.1	75709
tt0246354	7.8	221
tt0259324	5.3	262040
tt0259929	5.4	2295
tt0267588	7.1	111
tt0268126	7.7	209231
tt0289992	7.5	129770
tt0291699	6.3	41
tt0305973	5.6	4755
tt0311292	6.0	73
tt0315677	6.1	127
tt0316559	6.3	101
tt0324947	6.4	641
tt0325805	7.3	142495
tt0366625	7.6	31
tt0368891	6.9	368075
tt0370423	6.8	59
tt0372592	6.9	51
tt0372593	7.0	39
tt0375568	6.2	41618
tt0376456	7.5	183
tt0384680	6.5	85005
tt0390573	7.5	173
tt0399295	7.6	350151
tt0407905	6.4	74
tt0417797	3.9	89
tt0429589	5.8	43262
tt0433591	5.7	34
tt0435705	6.2	171218
tt0445772	6.3	184
tt0446304	8.7	34
tt0448011	6.2	256752
tt0450345	3.8	73514
tt0461452	5.2	74
tt0465234	6.5	262022
tt0468519	7.1	68
tt0469641	6.0	89760
tt0471480	9.0	17
tt0479997	5.4	100790
tt0481499	7.1	243753
tt0489239	7.9	35
tt0606641	8.2	15
tt0611342	8.0	32
tt0639468	6.7	7
tt0763831	5.9	46568
tt0773260	6.6	124
tt0778690	7.1	29
tt0778694	7.0	34
tt0778774	7.9	98
tt0778821	7.1	28
tt0796267	5.2	59
tt0805631	7.3	254
tt0814022	5.3	59077
tt0834252	7.4	10
tt0843412	6.1	17
tt0854163	7.3	124
tt0907857	6.9	80
tt0949829	6.5	39
tt0957462	5.7	11
tt0963536	9.3	16
tt0963966	6.1	173885
tt0966569	6.3	29
tt10188824	7.4	34
tt1035508	6.2	14
tt10690676	6.0	567
tt1071875	4.3	130769
tt1095217	6.6	83183
tt11003218	6.9	99880
tt1104009	7.8	10
tt11291274	7.0	171290
tt11358390	6.4	113085
tt1142845	7.0	12
tt1151001	6.9	22
tt1153135	6.8	12
tt1157010	4.7	80
tt1159042	9.7	21
tt1214962	6.1	48826
tt1232381	5.5	34
tt12409886	7.3	1410
tt1243737	8.6	86
tt1250777	7.6	610552
tt1274586	4.5	11936
tt1282954	5.7	18
tt1288849	5.0	13
tt1314805	8.7	13
tt1314806	7.2	13
tt1314807	7.4	16
tt1314808	7.5	15
tt1314809	7.9	15
tt1314812	8.3	14
tt1314814	7.0	15
tt1334557	7.8	27
tt13600408	6.4	10
tt13617060	6.4	5713
tt13626922	7.1	632
tt13626928	6.8	487
tt13626944	6.5	454
tt13626960	6.9	394
tt13626978	6.6	375
tt13626988	6.8	354
tt1365297	8.9	47
tt14032708	8.3	9
tt1427334	6.9	18
tt1462759	5.6	6672
tt14662442	5.8	9
tt14827638	5.1	10121
tt1489335	3.0	71
tt1502404	5.4	105392
tt15046058	8.1	190
tt15052584	6.7	7
tt1519189	6.4	10
tt1552224	4.6	14683
tt1610013	6.9	932
tt1656186	5.5	47157
tt1671907	7.0	17
tt1674784	5.3	46686
tt1677774	7.8	14
tt1698238	5.6	30
tt1715312	6.1	45
tt1715313	5.0	17
tt1799915	6.8	16
tt19072224	7.3	12
tt19243868	6.2	9
tt19757332	7.0	36
tt2005374	6.4	71006
tt2032572	5.3	14998
tt2132638	6.4	62
tt2177699	6.6	54
tt21942866	6.8	86451
tt21991654	5.5	12922
tt22939186	5.5	24408
tt23468450	6.6	193203
tt2382396	6.8	52619
tt23951630	7.4	8
tt2401807	5.0	26063
tt2467046	3.1	43752
tt24850708	3.6	1400
tt2646218	5.9	17
tt27394404	7.4	28
tt27447567	5.6	19
tt27525130	5.2	20
tt27575684	7.3	15
tt27590028	6.7	1540
tt27813235	6.1	8716
tt27944913	7.9	10
tt2850386	6.9	57787
tt30017641	5.9	16
tt30036660	5.3	337
tt30150541	6.6	7
tt3138790	7.1	17
tt33058355	6.3	268
tt3481634	5.2	11217
tt3517762	7.8	16
tt3628244	7.3	30
tt3687398	4.7	6119
tt3733774	5.5	21522
tt3733778	5.2	19657
tt3758162	4.8	7562
tt3861442	9.6	10
tt4054654	4.8	10128
tt4382824	5.2	9457
tt4976192	4.4	10124
tt5073642	6.1	61819
tt5195776	7.2	43
tt5280288	7.0	15
tt5285568	8.0	18
tt5285622	6.8	18
tt5340000	7.6	10
tt5340068	8.2	12
tt5460530	5.2	9517
tt5462326	5.6	28993
tt5485570	9.1	19
tt5505282	7.6	8
tt5580536	4.0	5191
tt5688754	6.0	9
tt5792656	5.4	11062
tt6083648	4.7	8535
tt6143568	4.5	12477
tt6372694	4.2	15182
tt6763730	6.4	203
tt6781540	7.9	14
tt6781618	6.4	13
tt6998518	6.5	95813
tt7295450	3.9	8252
tt7394816	4.9	12032
tt8114980	5.5	42051
tt8380776	4.7	6148
tt8535180	5.0	6270
tt8593824	5.5	10374
tt9351746	8.1	1862
tt9520442	5.6	14
tt9624766	2.9	11032
\.


--
-- TOC entry 4910 (class 0 OID 40126)
-- Dependencies: 218
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.titles (tconst, "titleType", "primaryTitle", "originalTitle", "isAdult", "startYear", "endYear", "runtimeMinutes", genres) FROM stdin;
tt0082064	tvMovie	The Best of Times	The Best of Times	f	1981	\N	60	Comedy
tt0086216	movie	Rumble Fish	Rumble Fish	f	1983	\N	94	Crime,Drama,Romance
tt0086525	movie	Valley Girl	Valley Girl	f	1983	\N	99	Comedy,Romance
tt0086969	movie	Birdy	Birdy	f	1984	\N	120	Drama,War
tt0087089	movie	The Cotton Club	The Cotton Club	f	1984	\N	129	Crime,Drama,Music
tt0087968	movie	Racing with the Moon	Racing with the Moon	f	1984	\N	108	Comedy,Drama,Romance
tt0090769	movie	The Boy in Blue	The Boy in Blue	f	1986	\N	97	Biography,Drama,Sport
tt0091738	movie	Peggy Sue Got Married	Peggy Sue Got Married	f	1986	\N	103	Comedy,Drama,Fantasy
tt0093565	movie	Moonstruck	Moonstruck	f	1987	\N	102	Comedy,Drama,Romance
tt0093822	movie	Raising Arizona	Raising Arizona	f	1987	\N	94	Comedy,Crime
tt0095722	movie	Never on Tuesday	Never on Tuesday	f	1988	\N	90	Comedy,Drama
tt0098577	movie	Vampire's Kiss	Vampire's Kiss	f	1988	\N	103	Comedy,Crime,Fantasy
tt0099575	movie	Fire Birds	Fire Birds	f	1990	\N	85	Action,Adventure
tt0099844	video	Industrial Symphony No. 1: The Dream of the Brokenhearted	Industrial Symphony No. 1: The Dream of the Brokenhearted	f	1990	\N	50	Drama,Fantasy,Music
tt0100762	movie	Time to Kill	Tempo di uccidere	f	1989	\N	110	Drama,War
tt0100935	movie	Wild at Heart	Wild at Heart	f	1990	\N	125	Crime,Drama,Thriller
tt0101004	movie	Zandalee	Zandalee	f	1991	\N	100	Drama,Romance,Thriller
tt0104438	movie	Honeymoon in Vegas	Honeymoon in Vegas	f	1992	\N	96	Comedy,Romance,Thriller
tt0105226	movie	Red Rock West	Red Rock West	f	1993	\N	98	Crime,Drama,Thriller
tt0106266	movie	Amos & Andrew	Amos & Andrew	f	1993	\N	96	Comedy,Crime
tt0106684	movie	Deadfall	Deadfall	f	1993	\N	98	Crime,Drama
tt0109390	movie	A Century of Cinema	A Century of Cinema	f	1994	\N	72	Documentary
tt0109951	movie	Guarding Tess	Guarding Tess	f	1994	\N	96	Comedy,Drama
tt0110167	movie	It Could Happen to You	It Could Happen to You	f	1994	\N	101	Comedy,Drama,Romance
tt0111477	movie	Trapped in Paradise	Trapped in Paradise	f	1994	\N	111	Adventure,Comedy,Crime
tt0113552	movie	Kiss of Death	Kiss of Death	f	1995	\N	101	Crime,Drama,Thriller
tt0113627	movie	Leaving Las Vegas	Leaving Las Vegas	f	1995	\N	111	Drama,Romance
tt0117500	movie	The Rock	The Rock	f	1996	\N	136	Action,Adventure,Thriller
tt0118880	movie	Con Air	Con Air	f	1997	\N	115	Action,Crime,Thriller
tt0119094	movie	Face/Off	Face/Off	f	1997	\N	138	Action,Crime,Sci-Fi
tt0120632	movie	City of Angels	City of Angels	f	1998	\N	114	Drama,Fantasy,Romance
tt0120832	movie	Snake Eyes	Snake Eyes	f	1998	\N	98	Crime,Mystery,Thriller
tt0134273	movie	8MM	8MM	f	1999	\N	123	Crime,Drama,Mystery
tt0156039	tvEpisode	AFI Life Achievement Award: A Tribute to Clint Eastwood	A Tribute to Clint Eastwood	f	1996	\N	60	Documentary
tt0163988	movie	Bringing Out the Dead	Bringing Out the Dead	f	1999	\N	121	Drama,Thriller
tt0187078	movie	Gone in 60 Seconds	Gone in Sixty Seconds	f	2000	\N	118	Action,Crime,Thriller
tt0189998	movie	Shadow of the Vampire	Shadow of the Vampire	f	2000	\N	92	Drama,Horror
tt0205167	tvMovie	Jonathan Ross Presents for One Week Only: David Lynch	Jonathan Ross Presents for One Week Only: David Lynch	f	1990	\N	\N	Documentary
tt0205314	movie	Inside the Golden Statue	Pesel Ha'Zahav	f	1998	\N	55	Documentary
tt0218967	movie	The Family Man	The Family Man	f	2000	\N	125	Comedy,Drama,Fantasy
tt0221823	movie	Bel Air	Bel Air	f	2000	\N	110	Comedy,Drama
tt0238112	movie	Captain Corelli's Mandolin	Captain Corelli's Mandolin	f	2001	\N	131	Drama,Music,Romance
tt0238425	tvSpecial	Most Unlikely Heroes	Most Unlikely Heroes	f	1996	\N	30	\N
tt0245562	movie	Windtalkers	Windtalkers	f	2002	\N	134	Action,Drama,War
tt0246354	tvSeries	Very Important Pennis	Very Important Pennis	f	1996	1997	30	Comedy
tt0259324	movie	Ghost Rider	Ghost Rider	f	2007	\N	110	Action,Fantasy,Thriller
tt0259929	movie	Christmas Carol: The Movie	Christmas Carol: The Movie	f	2001	\N	77	Animation,Family,Fantasy
tt0267588	tvEpisode	Laura Dern	Laura Dern	f	1999	\N	50	Biography,Documentary
tt0268126	movie	Adaptation.	Adaptation.	f	2002	\N	115	Comedy,Drama
tt0289992	movie	The Life of David Gale	The Life of David Gale	f	2003	\N	130	Crime,Drama,Mystery
tt0291699	tvSpecial	2001 ABC World Stunt Awards	2001 ABC World Stunt Awards	f	2001	\N	\N	Family
tt0305973	movie	Sonny	Sonny	f	2002	\N	110	Crime,Drama
tt0311292	tvSpecial	Hollywood Salutes Nicolas Cage: An American Cinematheque Tribute	Hollywood Salutes Nicolas Cage: An American Cinematheque Tribute	f	2002	\N	60	Family
tt0315677	tvSeries	HypaSpace	HypaSpace	f	2002	2008	25	Documentary
tt0316559	video	Sean Connery Close Up	Sean Connery Close Up	f	1997	\N	45	Biography,Documentary
tt0324947	tvSpecial	2002 MTV Movie Awards	2002 MTV Movie Awards	f	2002	\N	120	\N
tt0325805	movie	Matchstick Men	Matchstick Men	f	2003	\N	116	Comedy,Crime,Drama
tt0366625	movie	Spaghetti Requiem	Italian Soldiers	f	2001	\N	56	Documentary
tt0368891	movie	National Treasure	National Treasure	f	2004	\N	131	Action,Adventure,Mystery
tt0370423	video	The Code Talkers: A Secret Code of Honor	The Code Talkers: A Secret Code of Honor	f	2003	\N	23	Documentary,Short
tt0372592	video	Valley Girl: 20 Totally Tubular Years Later	Valley Girl: 20 Totally Tubular Years Later	f	2003	\N	24	Documentary,Short
tt0372593	video	Valley Girl: In Conversation - Nicolas Cage and Martha Coolidge	Valley Girl: In Conversation - Nicolas Cage and Martha Coolidge	f	2003	\N	20	Documentary,Short
tt0375568	movie	Astro Boy	Astro Boy	f	2009	\N	94	Action,Adventure,Animation
tt0376456	tvEpisode	John Travolta	John Travolta	f	2003	\N	\N	Biography,Documentary,History
tt0384680	movie	The Weather Man	The Weather Man	f	2005	\N	102	Comedy,Drama
tt0390573	video	Tricks of the Trade: Making 'Matchstick Men'	Tricks of the Trade: Making 'Matchstick Men'	f	2004	\N	72	Documentary
tt0399295	movie	Lord of War	Lord of War	f	2005	\N	122	Crime,Drama
tt0407905	tvMovie	John Travolta: The Inside Story	John Travolta: The Inside Story	f	2004	\N	45	Documentary
tt0417797	tvEpisode	Vanessa Marcil	Vanessa Marcil	f	2003	\N	60	Biography,Documentary
tt0429589	movie	The Ant Bully	The Ant Bully	f	2006	\N	88	Adventure,Animation,Comedy
tt0433591	video	Making Angels	Making Angels	f	1998	\N	30	Documentary,Short
tt0435705	movie	Next	Next	f	2007	\N	96	Action,Sci-Fi,Thriller
tt0445772	tvSpecial	Tsunami Aid: A Concert of Hope	Tsunami Aid: A Concert of Hope	f	2005	\N	120	Music
tt0446304	video	The Cult: Music Without Fear	The Cult: Music Without Fear	f	2002	\N	86	Music
tt0448011	movie	Knowing	Knowing	f	2009	\N	121	Mystery,Sci-Fi,Thriller
tt0450345	movie	The Wicker Man	The Wicker Man	f	2006	\N	102	Horror,Mystery,Thriller
tt0461452	tvSpecial	2nd Annual Screen Actors Guild Awards	2nd Annual Screen Actors Guild Awards	f	1996	\N	120	\N
tt0465234	movie	National Treasure: Book of Secrets	National Treasure: Book of Secrets	f	2007	\N	124	Action,Adventure,Mystery
tt0468519	video	'National Treasure' on Location	'National Treasure' on Location	f	2005	\N	11	Documentary,Short
tt0469641	movie	World Trade Center	World Trade Center	f	2006	\N	129	Drama,History,Thriller
tt0471480	tvEpisode	8mm	8mm	f	1999	\N	\N	Documentary,Short
tt0479997	movie	Season of the Witch	Season of the Witch	f	2011	\N	95	Action,Adventure,Fantasy
tt0481499	movie	The Croods	The Croods	f	2013	\N	98	Adventure,Animation,Comedy
tt0489239	tvMovie	National Treasure Uncovered	National Treasure Uncovered	f	2004	\N	\N	\N
tt0585300	tvEpisode	Episode dated 17 December 2004	Episode dated 17 December 2004	f	2004	\N	\N	News,Talk-Show
tt0606641	tvEpisode	Episode dated 1 July 1996	Episode dated 1 July 1996	f	1996	\N	60	Comedy,Talk-Show
tt0607448	tvEpisode	Chris Rock & Nicolas Cage	Chris Rock & Nicolas Cage	f	2002	\N	60	Comedy,Talk-Show
tt0611342	tvEpisode	Nicolas Cage	Nicolas Cage	f	2003	\N	45	Talk-Show
tt0628764	tvEpisode	Episode dated 24 October 2005	Episode dated 24 October 2005	f	2005	\N	\N	Comedy,Music,Talk-Show
tt0633682	tvEpisode	Episode dated 17 November 2004	Episode dated 17 November 2004	f	2004	\N	60	Talk-Show
tt0633898	tvEpisode	Episode dated 27 October 2005	Episode dated 27 October 2005	f	2005	\N	\N	Talk-Show
tt0639468	tvEpisode	Episode dated 7 October 2005	Episode dated 7 October 2005	f	2005	\N	60	News
tt0652733	tvEpisode	Show nº 14	Show nº 14	f	1996	\N	50	News
tt0723909	tvEpisode	Episode dated 20 September 2003	Episode dated 20 September 2003	f	2003	\N	60	Music,News
tt0728403	tvEpisode	Episode #9.140	Episode #9.140	f	2001	\N	60	Comedy,Music,Talk-Show
tt0728558	tvEpisode	Episode #10.95	Episode #10.95	f	2002	\N	60	Comedy,Music,Talk-Show
tt0728881	tvEpisode	Episode #12.185	Episode #12.185	f	2004	\N	60	Comedy,Music,Talk-Show
tt0763831	movie	A Thousand Words	A Thousand Words	f	2012	\N	91	Comedy,Drama,Fantasy
tt0768035	tvEpisode	Episode #1.3	Episode #1.3	f	1990	\N	\N	Talk-Show
tt0773260	tvMiniSeries	Bravo Profiles: The Entertainment Business	Bravo Profiles: The Entertainment Business	f	1998	1998	\N	Documentary
tt0778690	video	Extended Outlook: The Script	Extended Outlook: The Script	f	2006	\N	10	Documentary,Short
tt0778694	video	Forecast: Becoming a Weatherman	Forecast: Becoming a Weatherman	f	2006	\N	6	Short
tt0778774	video	The Making of 'Lord of War'	The Making of 'Lord of War'	f	2006	\N	20	Documentary,Short
tt0778821	video	Relative Humidity: The Characters	Relative Humidity: The Characters	f	2006	\N	20	Documentary,Short
tt0796267	tvSeries	Hi Octane	Hi Octane	f	1994	\N	\N	Comedy
tt0805631	movie	Too Tough to Die: A Tribute to Johnny Ramone	Too Tough to Die: A Tribute to Johnny Ramone	f	2006	\N	80	Documentary,Music
tt0814022	movie	Bangkok Dangerous	Bangkok Dangerous	f	2008	\N	99	Action,Crime,Thriller
tt0834252	tvEpisode	Episode dated 25 July 2006	Episode dated 25 July 2006	f	2006	\N	30	News
tt0835510	tvEpisode	Episode #5.150	Episode #5.150	f	2006	\N	\N	Documentary
tt0843412	tvSeries	Fantastico 10	Fantastico 10	f	1989	\N	140	Comedy,Game-Show,Music
tt0850925	tvEpisode	Episode #5.172	Episode #5.172	f	2006	\N	\N	Documentary
tt0854163	video	Shirley MacLaine: Kicking Up Her Heels	Shirley MacLaine: Kicking Up Her Heels	f	1996	\N	60	Documentary
tt0868608	tvEpisode	Episode #2.10	Episode #2.10	f	2004	\N	30	Talk-Show
tt0907857	video	Love, Death, Elvis & Oz: The Making of 'Wild at Heart'	Love, Death, Elvis & Oz: The Making of 'Wild at Heart'	f	2004	\N	30	Documentary,Short
tt0949829	video	The Making of 'World Trade Center'	The Making of 'World Trade Center'	f	2006	\N	54	Documentary
tt0954061	tvEpisode	Episode dated 30 January 2007	Episode dated 30 January 2007	f	2007	\N	30	News
tt0957462	tvEpisode	Music Movie Stars	Music Movie Stars	f	2000	\N	\N	Biography,Documentary
tt0963093	tvEpisode	Episode #15.30	Episode #15.30	f	2007	\N	60	Comedy,Music,Talk-Show
tt0963536	tvEpisode	Episode #6.32	Episode #6.32	f	2007	\N	\N	Documentary
tt0963966	movie	The Sorcerer's Apprentice	The Sorcerer's Apprentice	f	2010	\N	109	Action,Adventure,Family
tt0964857	tvEpisode	Episode #6.33	Episode #6.33	f	2007	\N	\N	Documentary
tt0966569	tvMovie	Ghost Rider: Inside the Action	Ghost Rider: Inside the Action	f	2007	\N	30	Action
tt0966941	tvEpisode	Nicolas Cage/Natalie Morales/John Mulaney	Nicolas Cage/Natalie Morales/John Mulaney	f	2007	\N	57	Comedy,Music,Talk-Show
tt0972275	tvEpisode	Episode dated 25 February 2007	Episode dated 25 February 2007	f	2007	\N	\N	News,Talk-Show
tt1008357	tvEpisode	Episode dated 14 February 2007	Episode dated 14 February 2007	f	2007	\N	\N	Talk-Show
tt1016898	tvEpisode	Episode dated 25 April 2007	Episode dated 25 April 2007	f	2007	\N	\N	Comedy,Music,Talk-Show
tt10188824	video	Spider-Man: Into the Spider-Verse - The Ultimate Comics Cast	Spider-Man: Into the Spider-Verse - The Ultimate Comics Cast	f	2019	\N	15	Documentary,Short
tt1035508	video	Visual and Special Effects	Visual and Special Effects	f	2006	\N	12	Documentary,Short
tt10690676	movie	Dark	Dark	f	2017	\N	75	Drama,Thriller
tt1071875	movie	Ghost Rider: Spirit of Vengeance	Ghost Rider: Spirit of Vengeance	f	2011	\N	96	Action,Fantasy,Thriller
tt1072854	tvEpisode	Episode dated 18 July 2007	Episode dated 18 July 2007	f	2007	\N	\N	News,Talk-Show
tt1088918	tvEpisode	Episode dated 19 August 2007	Episode dated 19 August 2007	f	2007	\N	\N	News,Talk-Show
tt10943750	tvEpisode	Episode #1.63	Episode #1.63	f	1997	\N	\N	Action,News
tt1095217	movie	Bad Lieutenant: Port of Call New Orleans	The Bad Lieutenant: Port of Call - New Orleans	f	2009	\N	122	Crime,Drama,Mystery
tt10970798	tvShort	The Battle of the Bonds	Big Screen: The Battle of the Bonds	f	1998	\N	17	Documentary,History,Short
tt11003218	movie	Pig	Pig	f	2021	\N	92	Drama,Mystery
tt1104009	tvEpisode	Plattenladen	Plattenladen	f	2004	\N	\N	Comedy
tt11291274	movie	The Unbearable Weight of Massive Talent	The Unbearable Weight of Massive Talent	f	2022	\N	107	Action,Comedy,Crime
tt11358390	movie	Renfield	Renfield	f	2023	\N	93	Action,Comedy,Fantasy
tt1142845	video	Making the Best Next Thing	Making the Best Next Thing	f	2007	\N	\N	Documentary,Short
tt1151001	tvEpisode	Wetten, dass..? aus Graz	Wetten, dass..? aus Graz	f	2007	\N	\N	Comedy,Game-Show,Music
tt1151977	tvEpisode	Episode dated 4 December 2007	Episode dated 4 December 2007	f	2007	\N	\N	News,Talk-Show
tt1153135	tvEpisode	Episode dated 7 December 2007	Episode dated 7 December 2007	f	2007	\N	\N	News,Talk-Show
tt1154300	tvEpisode	Episode dated 14 December 2007	Episode dated 14 December 2007	f	2007	\N	\N	Talk-Show
tt1157010	tvEpisode	Episode dated 14 December 2007	Episode dated 14 December 2007	f	2007	\N	\N	News,Talk-Show
tt1159042	tvEpisode	Episode dated 18 December 2007	Episode dated 18 December 2007	f	2007	\N	\N	News,Talk-Show
tt11621174	tvEpisode	Episode dated 19 September 2016	Episode dated 19 September 2016	f	2016	\N	\N	Documentary
tt1172772	tvEpisode	Episode dated 2 January 2008	Episode dated 2 January 2008	f	2008	\N	\N	Talk-Show
tt11730022	tvEpisode	Episode dated 21 December 1984	Episode dated 21 December 1984	f	1984	\N	120	News,Talk-Show
tt11975120	tvEpisode	Carol Kane/Nicolas Cage/Miles Davis	Carol Kane/Nicolas Cage/Miles Davis	f	1986	\N	\N	Talk-Show
tt1214962	movie	Seeking Justice	Seeking Justice	f	2011	\N	105	Action,Drama,Mystery
tt1232381	tvSeries	Movie Rush	Movie Rush	f	2006	2010	10	Documentary
tt12374110	tvEpisode	Cérémonie de clôture du 43ème festival de Cannes	Cérémonie de clôture du 43ème festival de Cannes	f	1990	\N	\N	News
tt12409886	short	Werewolf Women of the S.S.	Werewolf Women of the S.S.	f	2007	\N	2	Comedy,Horror,Short
tt1243737	tvEpisode	Shirley MacLaine	Shirley MacLaine	f	1996	\N	\N	Biography,Documentary
tt1250777	movie	Kick-Ass	Kick-Ass	f	2010	\N	117	Action,Comedy,Crime
tt1274586	movie	Dying of the Light	Dying of the Light	f	2014	\N	94	Action,Drama,Thriller
tt1282954	tvEpisode	Episode #16.1	Episode #16.1	f	2008	\N	57	Comedy,Music,Talk-Show
tt12872176	tvEpisode	The Winner's Journey: Samuel L Jackson's Most Dramatic Roles and Transformations	The Winner's Journey: Samuel L Jackson's Most Dramatic Roles and Transformations	f	2020	\N	\N	Talk-Show
tt1288849	tvEpisode	Episode dated 5 September 2008	Episode dated 5 September 2008	f	2008	\N	\N	News,Talk-Show
tt1289034	tvEpisode	Nicolas Cage/Vivica A. Fox/Delta Spirit	Nicolas Cage/Vivica A. Fox/Delta Spirit	f	2008	\N	57	Comedy,Music,Talk-Show
tt13060064	tvSeries	Highfire	Highfire	f	\N	\N	\N	Action,Adventure,Crime
tt13097724	tvEpisode	Episode #1.1	Episode #1.1	f	\N	\N	\N	Action,Adventure,Crime
tt1314805	video	NT2: Crafting the Presidents' Book	NT2: Crafting the Presidents' Book	f	2008	\N	\N	Documentary,Short
tt1314806	video	NT2: Creating the London Chase	NT2: Creating the London Chase	f	2008	\N	\N	Documentary,Short
tt1314807	video	NT2: Evolution of a Golden City	NT2: Evolution of a Golden City	f	2008	\N	10	Documentary,Short
tt1314808	video	NT2: Inside the Library of Congress	NT2: Inside the Library of Congress	f	2008	\N	9	Documentary,Short
tt1314809	video	NT2: On Location	NT2: On Location	f	2008	\N	10	Documentary,Short
tt1314812	video	NT2: Secrets of a Sequel	NT2: Secrets of a Sequel	f	2008	\N	7	Documentary,Short
tt1314813	video	NT2: Set in History	NT2: Set in History	f	2008	\N	\N	Documentary,Short
tt1314814	video	NT2: Underground Action	NT2: Underground Action	f	2008	\N	7	Documentary,Short
tt1334557	tvMovie	Samuel L. Jackson: An American Cinematheque Tribute	Samuel L. Jackson: An American Cinematheque Tribute	f	2008	\N	60	Documentary
tt13402036	tvEpisode	Episode #9.163	Episode #9.163	f	\N	\N	57	Comedy,Music,Talk-Show
tt13600408	video	Bringing Out the Dead: Production Featurette	Bringing Out the Dead: Featurette	f	2000	\N	11	Documentary,Short
tt13614302	video	Dog Eat Dog: Beyond Fest Q&A with Director Paul Schrader and Actor Nicolas Cage	Dog Eat Dog: Beyond Fest Q&A with Nicolas Cage and Paul Schrader	f	2016	\N	25	Documentary,Short,Talk-Show
tt13617060	tvSeries	History of Swear Words	History of Swear Words	f	2021	2021	\N	Comedy,Documentary
tt13619938	video	Dog Eat Dog: Nicolas Cage Video Introduction	Dog Eat Dog: Nicolas Cage Video Introduction	f	2016	\N	1	Documentary,Short,Talk-Show
tt13626922	tvEpisode	Fuck	Fuck	f	2021	\N	20	Comedy,Documentary
tt13626928	tvEpisode	Shit	Shit	f	2021	\N	20	Comedy,Documentary
tt13626944	tvEpisode	Bitch	Bitch	f	2021	\N	20	Comedy,Documentary
tt13626960	tvEpisode	Dick	Dick	f	2021	\N	20	Comedy,Documentary
tt13626978	tvEpisode	Pussy	Pussy	f	2021	\N	20	Comedy,Documentary
tt13626988	tvEpisode	Damn	Damn	f	2021	\N	20	Comedy,Documentary
tt13647614	tvEpisode	Episode #10.92	Episode #10.92	f	1990	\N	\N	Talk-Show
tt1365297	tvEpisode	Episode dated 20 January 2009	Episode dated 20 January 2009	f	2009	\N	\N	Comedy,News,Talk-Show
tt13682802	tvEpisode	Oscar Snubs: The Top 10 Actors Ignored By Oscars for Best Actor & Best Actress Awards	Oscar Snubs: The Top 10 Actors Ignored By Oscars for Best Actor & Best Actress Awards	f	2020	\N	\N	Talk-Show
tt13759286	tvEpisode	EVOLUTION: Every Meryl Streep Role From 1977 to 2021, All Performances Exceptionally Poignant	EVOLUTION: Every Meryl Streep Role From 1977 to 2021, All Performances Exceptionally Poignant	f	2021	\N	\N	Talk-Show
tt1391303	tvEpisode	Episode #16.107	Episode #16.107	f	2009	\N	57	Comedy,Music,Talk-Show
tt1392038	tvEpisode	Episode dated 17 March 2009	Episode dated 17 March 2009	f	2009	\N	\N	Talk-Show
tt1392792	tvEpisode	The Films of Jon Turteltaub	The Films of Jon Turteltaub	f	2008	\N	\N	Biography,Documentary
tt1401362	tvEpisode	Episode dated 20 March 2009	Episode dated 20 March 2009	f	2009	\N	\N	News,Talk-Show
tt14032708	short	The Making of - Season of the Witch	The Making of - Season of the Witch	f	2011	\N	9	Action,Short
tt1405876	tvEpisode	Episode dated 27 March 2009	Episode dated 27 March 2009	f	2009	\N	\N	News,Talk-Show
tt1414723	tvEpisode	Episode dated 31 March 2009	Episode dated 31 March 2009	f	2009	\N	60	Comedy,Documentary,Talk-Show
tt1418311	tvEpisode	Knowing	Knowing	f	2009	\N	\N	Documentary
tt1426251	tvEpisode	Episode #1.70	Episode #1.70	f	1992	\N	60	Comedy,Music,Talk-Show
tt1427334	tvEpisode	Very Important Pennis: Part 2	Very Important Pennis: Part 2	f	1996	\N	\N	Comedy
tt14376874	tvSpecial	1997 Blockbuster Entertainment Awards	1997 Blockbuster Entertainment Awards	f	1997	\N	120	Reality-TV
tt1442077	tvEpisode	Episode dated 21 May 2009	Episode dated 21 May 2009	f	2009	\N	\N	News,Talk-Show
tt1449106	tvEpisode	Episode dated 18 March 2009	Episode dated 18 March 2009	f	2009	\N	\N	Talk-Show
tt14501274	tvEpisode	A Tribute to Nicolas Cage: Rise, Journey & Latest 'Adaptation' of Our 'Kick-Ass' 'National Treasure'	A Tribute to Nicolas Cage: Rise, Journey & Latest 'Adaptation' of Our 'Kick-Ass' 'National Treasure'	f	2021	\N	\N	Talk-Show
tt1462759	movie	Butcher's Crossing	Butcher's Crossing	f	2022	\N	105	Adventure,Drama,Western
tt14662442	tvSpecial	The 11th IFP/West Annual Independent Spirit Awards	The 11th IFP/West Annual Independent Spirit Awards	f	1996	\N	\N	\N
tt1468989	tvEpisode	Episode dated 21 July 2009	Episode dated 21 July 2009	f	2009	\N	\N	News,Talk-Show
tt14827308	tvEpisode	Episode dated 4 February 2001	Episode dated 4 February 2001	f	2001	\N	\N	News
tt14827638	movie	The Retirement Plan	The Retirement Plan	f	2023	\N	103	Action,Comedy,Crime
tt1488996	tvEpisode	Episode dated 4 December 2002	Episode dated 4 December 2002	f	2002	\N	54	News,Talk-Show
tt1489335	tvSeries	ES.TV HD	ES.TV HD	f	2009	\N	\N	Talk-Show
tt1502404	movie	Drive Angry	Drive Angry	f	2011	\N	104	Action,Comedy,Fantasy
tt15028080	tvEpisode	ET Bahamas Beach Day!	ET Bahamas Beach Day!	f	2021	\N	\N	News,Talk-Show
tt15046058	tvSeries	The Roles That Changed My Life	The Roles That Changed My Life	f	2021	\N	\N	\N
tt15052584	tvEpisode	Nicolas Cage on the Roles That Changed His Life	Nicolas Cage on the Roles That Changed His Life	f	2021	\N	\N	\N
tt1509952	tvEpisode	Episode dated 10 September 2009	Episode dated 10 September 2009	f	2009	\N	60	News
tt1519189	tvSeries	The Hollywood Machine	The Hollywood Machine	f	2002	2002	52	Documentary
tt1552224	movie	Outcast	Outcast	f	2014	\N	99	Action,Adventure,Thriller
tt1554041	tvEpisode	Episode dated 3 August 2006	Episode dated 3 August 2006	f	2006	\N	53	News,Talk-Show
tt1610013	movie	Can't Stand Losing You: Surviving the Police	Can't Stand Losing You	f	2012	\N	79	Biography,Documentary,History
tt16360004	movie	Spider-Man: Beyond the Spider-Verse	Spider-Man: Beyond the Spider-Verse	f	2027	\N	\N	Action,Adventure,Animation
tt1637544	tvEpisode	Episode #18.31	Episode #18.31	f	2010	\N	60	Comedy,Music,Talk-Show
tt1640715	movie	The Courtship of Eddie's Father	The Courtship of Eddie's Father	f	\N	\N	\N	Comedy
tt1656186	movie	Stolen	Stolen	f	2012	\N	96	Action,Crime,Thriller
tt1671907	tvEpisode	Episode dated 24 June 2010	Episode dated 24 June 2010	f	2010	\N	\N	News,Talk-Show
tt1672035	tvEpisode	Episode dated 6 June 2002	Episode dated 6 June 2002	f	2002	\N	57	News,Talk-Show
tt1672036	tvEpisode	Episode dated 12 September 2003	Episode dated 12 September 2003	f	2003	\N	54	News,Talk-Show
tt1674784	movie	Trespass	Trespass	f	2011	\N	91	Crime,Drama,Mystery
tt1677774	tvEpisode	Episode dated 5 July 2010	Episode dated 5 July 2010	f	2010	\N	\N	News,Talk-Show
tt1679371	tvEpisode	Episode dated 7 July 2010	Episode dated 7 July 2010	f	2010	\N	\N	News,Talk-Show
tt1684720	tvEpisode	Episode dated 16 July 2010	Episode dated 16 July 2010	f	2010	\N	\N	News,Talk-Show
tt1690688	tvEpisode	Nicolas Cage/Steel Train	Nicolas Cage/Steel Train	f	2010	\N	57	Comedy,Music,Talk-Show
tt1691230	tvEpisode	Episode dated 13 July 2010	Episode dated 13 July 2010	f	2010	\N	\N	Comedy,Music,Talk-Show
tt1691236	tvEpisode	Episode #5.31	Episode #5.31	f	2010	\N	\N	Documentary,Talk-Show
tt1692173	tvEpisode	Episode #6.190	Episode #6.190	f	2010	\N	\N	Comedy,Music,Talk-Show
tt1694418	tvEpisode	Episode dated 19 July 2010	Episode dated 19 July 2010	f	2010	\N	\N	Comedy,Talk-Show
tt1696099	tvEpisode	Episode #8.154	Episode #8.154	f	2010	\N	45	Comedy,Music,Talk-Show
tt1696672	tvEpisode	Episode dated 17 August 1990	Episode dated 17 August 1990	f	1990	\N	\N	News,Talk-Show
tt1698238	tvEpisode	Episode #1.41	Episode #1.41	f	2010	\N	\N	Talk-Show
tt1701911	tvEpisode	Despicable Me/The Kids Are All Right	Despicable Me/The Kids Are All Right	f	2010	\N	\N	Comedy
tt1710734	tvEpisode	Episode #1.25	Episode #1.25	f	2010	\N	\N	News
tt1715312	tvSpecial	1998 Blockbuster Entertainment Awards	1998 Blockbuster Entertainment Awards	f	1998	\N	120	\N
tt1715313	tvSpecial	1999 Blockbuster Entertainment Awards	1999 Blockbuster Entertainment Awards	f	1999	\N	120	\N
tt1760809	tvEpisode	Episode #1.109	Episode #1.109	f	1989	\N	60	Comedy,Music,Talk-Show
tt1799915	tvSeries	Jump Start Live	Jump Start Live	f	2011	\N	60	Talk-Show
tt1804292	tvEpisode	Episode dated 5 January 2011	Episode dated 5 January 2011	f	2011	\N	\N	Talk-Show
tt1809440	tvEpisode	Episode dated 5 January 2011	Episode dated 5 January 2011	f	2011	\N	60	News,Talk-Show
tt1809684	tvEpisode	Nicolas Cage/Deena Nicole Cortese/Holt McCallany	Nicolas Cage/Deena Nicole Cortese/Holt McCallany	f	2011	\N	\N	Talk-Show
tt1828061	tvEpisode	The Battle of the Blockbusters	The Battle of the Blockbusters	f	2002	\N	\N	Documentary
tt1848718	tvEpisode	Episode dated 25 February 2011	Episode dated 25 February 2011	f	2011	\N	\N	Talk-Show
tt24818230	movie	Madden	Madden	f	\N	\N	\N	Biography
tt1858146	tvEpisode	Episode #6.18	Episode #6.18	f	2011	\N	\N	Documentary,Talk-Show
tt1862773	tvEpisode	Episode #1.54	Episode #1.54	f	2011	\N	\N	News
tt19072224	tvEpisode	Nicolas Cage/Aaron Paul/Robert Winston	Nicolas Cage/Aaron Paul/Robert Winston	f	\N	\N	\N	Comedy,Talk-Show
tt19243868	tvSpecial	The 5th Annual HCA Film Awards	The 5th Annual HCA Film Awards	f	2022	\N	\N	\N
tt19388152	tvEpisode	Nicolas Cage/Vanessa Bayer/Noah Cyrus	Nicolas Cage/Vanessa Bayer/Noah Cyrus	f	2022	\N	45	Comedy,Music,Talk-Show
tt19420568	tvEpisode	Episode #26.183	Episode #26.183	f	2022	\N	\N	News,Talk-Show
tt19719268	tvEpisode	Episode #10.165	Episode #10.165	f	2022	\N	19	News
tt19723274	tvEpisode	Episode #41.188	Episode #41.188	f	2022	\N	\N	News,Talk-Show
tt19757332	tvEpisode	The Unbearable Weight of Massive Talent	The Unbearable Weight of Massive Talent	f	2022	\N	\N	Talk-Show
tt1981813	tvEpisode	Episode dated 4 March 2011	Episode dated 4 March 2011	f	2011	\N	\N	Talk-Show
tt19843804	tvEpisode	Nicolas Cage/Ms. Pat/Duff Goldman/Lawrence Zarian	Nicolas Cage/Ms. Pat/Duff Goldman/Lawrence Zarian	f	2022	\N	43	Music,Talk-Show
tt2005374	movie	The Frozen Ground	The Frozen Ground	f	2013	\N	105	Biography,Crime,Drama
tt2032572	movie	USS Indianapolis: Men of Courage	USS Indianapolis: Men of Courage	f	2016	\N	128	Action,Drama,History
tt21243534	tvEpisode	Episode dated 30 June 2022	Episode dated 30 June 2022	f	2022	\N	\N	Documentary,Family,News
tt2132638	tvSeries	Close Up	Close Up	f	2011	2018	26	Biography,Documentary
tt2134512	tvEpisode	Nicolas Cage	Nicolas Cage	f	2011	\N	26	Biography,Documentary
tt2148675	tvEpisode	Episode #3.146	Episode #3.146	f	1994	\N	60	Comedy,Music,Talk-Show
tt2151150	tvEpisode	Episode dated 29 July 1994	Episode dated 29 July 1994	f	1994	\N	120	News,Talk-Show
tt2165752	tvEpisode	Episode #6.142	Episode #6.142	f	1998	\N	60	Comedy,Music,Talk-Show
tt2177699	tvSpecial	Scream Awards 2011	Scream Awards 2011	f	2011	\N	\N	\N
tt21825634	tvEpisode	A Tribute to Willem Dafoe: The Voice of an Actor	A Tribute to Willem Dafoe: The Voice of an Actor	f	2021	\N	\N	Talk-Show
tt21930132	tvEpisode	The Importance of Opening Credits: The Art of Introducing a Film	The Importance of Opening Credits: The Art of Introducing a Film	f	2021	\N	\N	Talk-Show
tt21942866	movie	Dream Scenario	Dream Scenario	f	2023	\N	102	Comedy,Drama,Fantasy
tt21991654	movie	Sympathy for the Devil	Sympathy for the Devil	f	2023	\N	90	Action,Thriller
tt2212613	tvEpisode	Episode #19.88	Episode #19.88	f	2012	\N	57	Comedy,Music,Talk-Show
tt2218405	tvEpisode	RZA	RZA	f	2012	\N	60	News,Talk-Show
tt2219977	tvEpisode	Episode dated 13 February 2012	Episode dated 13 February 2012	f	2012	\N	\N	Comedy,Music,Talk-Show
tt2225189	tvEpisode	Episode #7.17	Episode #7.17	f	2012	\N	\N	Documentary,Talk-Show
tt2227190	tvEpisode	Episode dated 28 June 2012	Episode dated 28 June 2012	f	2012	\N	\N	Talk-Show
tt2234657	tvEpisode	Adam Lambert/Nicolas Cage/Demian Bichir/Jason Mraz	Adam Lambert/Nicolas Cage/Demian Bichir/Jason Mraz	f	2012	\N	\N	Talk-Show
tt2235341	tvEpisode	Episode dated 15 February 2012	Episode dated 15 February 2012	f	2012	\N	\N	Talk-Show
tt22465022	tvEpisode	A Tribute to Sam Rockwell: Hollywood's Most Supportive Supporting Actor	A Tribute to Sam Rockwell: Hollywood's Most Supportive Supporting Actor	f	2021	\N	\N	Talk-Show
tt22496212	tvEpisode	The Few Times Humorists Have Scored Academy Gold: A Short List of Comedic Oscar-Winners	The Few Times Humorists Have Scored Academy Gold: A Short List of Comedic Oscar-Winners	f	2022	\N	\N	Talk-Show
tt2252379	tvEpisode	Episode dated 24 February 2012	Episode dated 24 February 2012	f	2012	\N	\N	Talk-Show
tt2252519	tvEpisode	Episode dated 18 February 2012	Episode dated 18 February 2012	f	2012	\N	\N	Documentary
tt2252987	tvEpisode	Episode dated 17 February 2012	Episode dated 17 February 2012	f	2012	\N	\N	Talk-Show
tt2283263	tvEpisode	Männer	Männer	f	2012	\N	30	News
tt22939186	movie	Arcadian	Arcadian	f	2024	\N	92	Action,Drama,Horror
tt23181666	tvEpisode	The Unbearable Weight of Massive Talent' Rendezvous at Premiere Reactions, Nicolas Cage, Demi Moore	The Unbearable Weight of Massive Talent' Rendezvous at Premiere Reactions, Nicolas Cage, Demi Moore	f	2022	\N	\N	Talk-Show
tt23181704	tvEpisode	Nicolas Cage on His New Film 'Unbearable Weight of Massive Talent', The Script, The Cast/Director	Nicolas Cage on His New Film 'Unbearable Weight of Massive Talent', The Script, The Cast/Director	f	2022	\N	\N	Talk-Show
tt23217970	tvEpisode	Unbearable Weight of Massive Talent - Nicolas Cage	Unbearable Weight of Massive Talent - Nicolas Cage	f	2022	\N	\N	Talk-Show
tt23218910	tvEpisode	Full Commentary on 'The Unbearable Weight of Massive Talent' Reactions, Nicolas Cage, Demi Moore	Full Commentary on 'The Unbearable Weight of Massive Talent' Reactions, Nicolas Cage, Demi Moore	f	2022	\N	\N	Talk-Show
tt2328344	tvEpisode	Episode #11.36	Episode #11.36	f	2003	\N	60	Comedy,Music,Talk-Show
tt23455676	tvEpisode	'The Unbearable Weight of Massive Talent' Rendezvous at Premiere Reactions, Nicolas Cage, Demi Moore	'The Unbearable Weight of Massive Talent' Rendezvous at Premiere Reactions, Nicolas Cage, Demi Moore	f	2022	\N	\N	Talk-Show
tt23456900	tvEpisode	Behind the Scenes of 'The Unbearable Weight of Massive Talent' - Nicolas Cage, Demi Moore	Behind the Scenes of 'The Unbearable Weight of Massive Talent' - Nicolas Cage, Demi Moore	f	2022	\N	\N	Talk-Show
tt23468450	movie	Longlegs	Longlegs	f	2024	\N	101	Crime,Horror,Mystery
tt23650072	tvEpisode	A Tribute to Johnny Depp: The Actor and Musician Who Defined Range	A Tribute to Johnny Depp: The Actor and Musician Who Defined Range	f	2022	\N	\N	Talk-Show
tt2382396	movie	Joe	Joe	f	2013	\N	117	Crime,Drama,Thriller
tt2388461	tvEpisode	Episode #6.61	Episode #6.61	f	1998	\N	60	Comedy,Music,Talk-Show
tt23951630	tvSeries	AEG Live Studio Actors on Actors	AEG Live Studio Actors on Actors	f	2019	\N	90	Talk-Show
tt2397369	tvEpisode	Episode dated 27 July 1994	Episode dated 27 July 1994	f	1994	\N	\N	News,Talk-Show
tt2401807	movie	Rage	Tokarev	f	2014	\N	92	Action,Thriller
tt2440920	tvEpisode	Episode #7.16	Episode #7.16	f	1999	\N	60	Comedy,Music,Talk-Show
tt2466572	tvEpisode	Episode #7.35	Episode #7.35	f	1999	\N	60	Comedy,Music,Talk-Show
tt2467046	movie	Left Behind	Left Behind	f	2014	\N	110	Action,Fantasy,Sci-Fi
tt24850708	movie	Gunslingers	Gunslingers	f	2025	\N	104	Action,Drama,Western
tt2521254	tvEpisode	Episode #7.178	Episode #7.178	f	1999	\N	60	Comedy,Music,Talk-Show
tt2553222	tvEpisode	Episode #8.314	Episode #8.314	f	2000	\N	60	Comedy,Music,Talk-Show
tt2646218	movie	Was ich bin sind meine Filme - Teil 2... nach 30 Jahren	Was ich bin sind meine Filme - Teil 2... nach 30 Jahren	f	2010	\N	98	Documentary
tt27290810	tvEpisode	Episode #42.171	Episode #42.171	f	2023	\N	\N	News,Talk-Show
tt27394404	tvEpisode	Renfield	Renfield	f	2023	\N	\N	Talk-Show
tt27447567	tvEpisode	Nicolas Cage/Christine and the Queens	Nicolas Cage/Christine and the Queens	f	2023	\N	\N	Comedy,Talk-Show
tt27458871	tvEpisode	Episode #42.182	Episode #42.182	f	2023	\N	\N	News,Talk-Show
tt2751930	tvEpisode	Episode #10.125	Episode #10.125	f	2013	\N	45	Talk-Show
tt27525130	tvEpisode	James Marsden/Joy Oladokun/Nicolas Cage	James Marsden/Joy Oladokun/Nicolas Cage	f	2023	\N	\N	Comedy,Talk-Show
tt27575684	tvEpisode	Healing and Hope/Who Is Ray Epps?/Nicolas Cage	Healing and Hope/Who Is Ray Epps?/Nicolas Cage	f	2023	\N	\N	Documentary,News
tt27590028	tvSpecial	The Oscars	The Oscars	f	2024	\N	157	Comedy,Music,Reality-TV
tt2768174	tvEpisode	Episode dated 18 March 2013	Episode dated 18 March 2013	f	2013	\N	\N	Comedy,Music,Talk-Show
tt27706987	movie	Lords of War	Lords of War	f	\N	\N	\N	Crime,Thriller
tt27813235	movie	The Surfer	The Surfer	f	2024	\N	100	Thriller
tt27944913	tvSpecial	Summer Game Fest 2023	Summer Game Fest 2023	f	2023	\N	120	News
tt2797286	tvEpisode	Episode #8.22	Episode #8.22	f	2013	\N	\N	Documentary,Talk-Show
tt2798246	tvEpisode	Episode #10.130	Episode #10.130	f	2013	\N	45	Talk-Show
tt2846138	tvEpisode	Episode dated 4 April 2013	Episode dated 4 April 2013	f	2013	\N	\N	News,Talk-Show
tt2850386	movie	The Croods: A New Age	The Croods: A New Age	f	2020	\N	95	Adventure,Animation,Comedy
tt28638642	tvMovie	Jackie Chan: Dragon Power	Jackie Chan: Dragon Power	f	2002	\N	60	Documentary
tt29059369	tvEpisode	Episode dated 9 September 2023	Episode dated 9 September 2023	f	2023	\N	\N	News
tt29791791	tvEpisode	Hawaii Week - Day 5 (2023)	Hawaii Week - Day 5 (2023)	f	2023	\N	\N	News,Talk-Show
tt30017641	tvEpisode	Dream Scenario	Dream Scenario	f	2023	\N	\N	Talk-Show
tt30036660	tvSpecial	81st Golden Globe Awards	81st Golden Globe Awards	f	2024	\N	\N	\N
tt30056767	tvEpisode	Episode #43.63	Episode #43.63	f	2023	\N	\N	News,Talk-Show
tt30150541	video	National Treasure 2: Book of Secrets - Book of Secrets - On Location	National Treasure 2: Book of Secrets - Book of Secrets - On Location	f	2008	\N	10	Short
tt30460310	tvSeries	Spider-Noir	Spider-Noir	f	2026	\N	\N	Action,Adventure,Crime
tt3070992	tvEpisode	Episode dated 22 July 2013	Episode dated 22 July 2013	f	2013	\N	120	Talk-Show
tt30742129	tvEpisode	Episode #3.6	Episode #3.6	f	2024	\N	\N	Talk-Show
tt31172323	tvSpecial	The Saturn Awards	The Saturn Awards	f	2024	\N	\N	Sci-Fi
tt31251499	tvEpisode	Episode dated 30 August 2006	Episode dated 30 August 2006	f	2006	\N	60	News,Talk-Show
tt3138790	tvMovie	Superheroes: From Page to Screen	Superheroes: From Page to Screen	f	2013	\N	\N	Documentary
tt3142530	tvEpisode	Episode #1.22	Episode #1.22	f	2013	\N	\N	News
tt3145844	tvEpisode	Episode #8.40	Episode #8.40	f	2013	\N	\N	Documentary,Talk-Show
tt31494758	tvEpisode	Episode dated 26 February 1999	Episode dated 26 February 1999	f	1999	\N	\N	News,Talk-Show
tt31528895	tvEpisode	Episode dated 1 August 1994	Episode dated 1 August 1994	f	1994	\N	\N	News,Talk-Show
tt31592087	tvEpisode	Episode #1.6	Episode #1.6	f	1993	\N	\N	Documentary
tt31632368	tvEpisode	Episode #1.1	Episode #1.1	f	2026	\N	\N	Action,Adventure,Crime
tt3164234	tvEpisode	Episode #8.200	Episode #8.200	f	2000	\N	60	Comedy,Music,Talk-Show
tt31702755	tvEpisode	Arte Journal vom 11.03.2024	Arte Journal vom 11.03.2024	f	2024	\N	\N	News
tt32304349	movie	The Carpenter's Son	The Carpenter's Son	f	2025	\N	\N	Horror
tt32365977	tvEpisode	Episode #1.2	Episode #1.2	f	\N	\N	\N	Action,Adventure,Crime
tt32604452	movie	The Prince	The Prince	f	\N	\N	\N	Drama
tt33058355	tvSpecial	82nd Golden Globe Awards	82nd Golden Globe Awards	f	2025	\N	\N	\N
tt33309483	tvEpisode	Episode dated 1 March 2024	Episode dated 1 March 2024	f	2024	\N	60	News
tt33452921	tvEpisode	Episode #1.3	Episode #1.3	f	\N	\N	\N	Action,Adventure,Crime
tt33452926	tvEpisode	Episode #1.4	Episode #1.4	f	\N	\N	\N	Action,Adventure,Crime
tt33498865	tvEpisode	Episode #1.5	Episode #1.5	f	\N	\N	\N	Action,Adventure,Crime
tt33498870	tvEpisode	Episode #1.6	Episode #1.6	f	\N	\N	\N	Action,Adventure,Crime
tt33498878	tvEpisode	Episode #1.7	Episode #1.7	f	\N	\N	\N	Action,Adventure,Crime
tt33498883	tvEpisode	Episode #1.8	Episode #1.8	f	\N	\N	\N	Action,Adventure,Crime
tt3383408	tvEpisode	Venice Film Festival 2009	Venice Film Festival 2009	f	2009	\N	\N	News,Talk-Show
tt34009789	tvEpisode	'Butcher' at TIFF	'Butcher' at TIFF	f	2022	\N	\N	Short,Talk-Show
tt34057964	tvEpisode	Butcher's Crossing	Butcher's Crossing	f	2022	\N	\N	Short,Talk-Show
tt34058425	tvEpisode	TIFF 2022: Butcher's Crossing	TIFF 2022: Butcher's Crossing	f	2022	\N	\N	Short,Talk-Show
tt34065120	tvMiniSeries	People Entertainment Weekly: Toronto 2022	People Entertainment Weekly: Toronto 2022	f	2022	2022	\N	Short,Talk-Show
tt34097972	tvEpisode	Butcher's Crossing	Butcher's Crossing	f	2022	\N	\N	Short,Talk-Show
tt34164006	tvEpisode	TIFF 2023: Dream Scenario	TIFF 2023: Dream Scenario	f	2023	\N	\N	Short,Talk-Show
tt34218617	tvEpisode	Face/Off: Nicolas Cage Official Interview (ScreenSlam Classic)	Face/Off: Nicolas Cage Official Interview (ScreenSlam Classic)	f	2015	\N	\N	Documentary,Short,Talk-Show
tt34290541	tvEpisode	World Trade Center: Nicolas Cage & Oliver Stone Exclusive Interview (ScreenSlam Classic)	World Trade Center: Nicolas Cage & Oliver Stone Exclusive Interview (ScreenSlam Classic)	f	2015	\N	\N	Documentary,Short,Talk-Show
tt34344042	tvEpisode	Nicolas Cage 'Dream Scenario'	Nicolas Cage 'Dream Scenario'	f	2023	\N	\N	News
tt3481634	movie	Inconceivable	Inconceivable	f	2017	\N	105	Drama,Thriller
tt7394816	movie	Primal	Primal	f	2019	\N	97	Action,Thriller
tt3484044	tvEpisode	Episode #4.1175	Episode #4.1175	f	1996	\N	60	Comedy,Music,Talk-Show
tt34868053	tvEpisode	Was It Something I Said? (with Nicolas Cage)	Was It Something I Said? (with Nicolas Cage)	f	2018	\N	\N	Talk-Show
tt3517762	tvMovie	Making of Bringing Out the Dead	Making of Bringing Out the Dead	f	1999	\N	30	Documentary
tt35544990	tvEpisode	The Surfer/Shadow Force/Fight or Flight/	The Surfer/Shadow Force/Fight or Flight/	f	2025	\N	30	Documentary,Talk-Show
tt36144098	tvEpisode	Nicolas Cage and Alex Wolff for 'Pig'	Nicolas Cage and Alex Wolff for 'Pig'	f	2021	\N	\N	Talk-Show
tt3628244	tvEpisode	Nicolas Cage/Emily VanCamp/Kiss	Nicolas Cage/Emily VanCamp/Kiss	f	2014	\N	\N	Comedy,Music,Talk-Show
tt3632466	tvEpisode	Episode dated 11 April 2014	Episode dated 11 April 2014	f	2014	\N	\N	News,Talk-Show
tt3661894	tvEpisode	Nicolas Cage/Whoopi Goldberg	Nicolas Cage/Whoopi Goldberg	f	2014	\N	\N	Talk-Show
tt3664140	tvEpisode	Episode dated 19 April 2014	Episode dated 19 April 2014	f	2014	\N	20	News
tt3668692	tvEpisode	Episode #9.25	Episode #9.25	f	2014	\N	\N	Documentary,Talk-Show
tt3687398	movie	The Runner	The Runner	f	2015	\N	90	Drama
tt3696140	movie	Hollywood Waterloo	Hollywood Waterloo	f	1994	\N	89	Documentary
tt37121992	tvEpisode	Episode dated 17 February 2003	Episode dated 17 February 2003	f	2003	\N	\N	News
tt3725672	tvEpisode	Pilot	Pilot	f	1994	\N	\N	Comedy
tt3725712	tvEpisode	Episode #1.3	Episode #1.3	f	1994	\N	\N	Comedy
tt3733774	movie	The Trust	The Trust	f	2016	\N	92	Action,Crime,Drama
tt3733778	movie	Pay the Ghost	Pay the Ghost	f	2015	\N	94	Horror,Mystery
tt3758162	movie	A Score to Settle	A Score to Settle	f	2019	\N	103	Action,Crime,Drama
tt3861442	tvSpecial	SXSW Flashback 2014	SXSW Flashback 2014	f	2014	\N	27	News
tt4054654	movie	Dog Eat Dog	Dog Eat Dog	f	2016	\N	93	Action,Crime,Thriller
tt4382824	movie	Army of One	Army of One	f	2016	\N	92	Biography,Comedy,Crime
tt4726736	tvEpisode	Episode dated 4 September 2003	Episode dated 4 September 2003	f	2003	\N	\N	Comedy,Music,Talk-Show
tt4733574	tvEpisode	Episode dated 16 November 2004	Episode dated 16 November 2004	f	2004	\N	\N	Comedy,Music,Talk-Show
tt4882010	tvEpisode	Episode dated 20 April 1995	Episode dated 20 April 1995	f	1995	\N	\N	Comedy,Music,Talk-Show
tt4976192	movie	211	211	f	2018	\N	86	Action,Drama,Horror
tt5073642	movie	Color Out of Space	Color Out of Space	f	2019	\N	111	Horror,Mystery,Sci-Fi
tt5077372	tvEpisode	Episode dated 9 October 2015	Episode dated 9 October 2015	f	2015	\N	\N	News,Talk-Show
tt5195776	tvEpisode	Mega Man VS Astro Boy	Mega Man VS Astro Boy	f	2015	\N	\N	Action,Animation,Comedy
tt5280288	video	The Path to Vengeance: Making 'Ghost Rider, Spirit of Vengeance'	The Path to Vengeance: Making 'Ghost Rider, Spirit of Vengeance'	f	2012	\N	90	Documentary
tt5285568	video	Gone in 60 Seconds: Stars on the Move	Gone in 60 Seconds: Stars on the Move	f	2000	\N	14	Short
tt5285622	video	Gone in 60 Seconds: Wild Rides	Gone in 60 Seconds: Wild Rides	f	2000	\N	5	Short
tt5338564	video	The 'Next' Grand Idea	The 'Next' Grand Idea	f	2007	\N	7	Short
tt5340000	video	To Steal a 'National Treasure'	To Steal a 'National Treasure'	f	2005	\N	6	Short
tt5340068	video	National Treasure: On the Set of American History	National Treasure: On the Set of American History	f	2005	\N	6	Short
tt5340248	video	Knights of the Golden Circle	Knights of the Golden Circle	f	2008	\N	3	Short
tt5424096	video	The Rock Premiere on Alcatraz	The Rock Premiere on Alcatraz	f	1996	\N	2	Short
tt5442350	video	The Making of 'Seeking Justice'	The Making of 'Seeking Justice'	f	2012	\N	7	Documentary,Short
tt5460530	movie	Vengeance: A Love Story	Vengeance: A Love Story	f	2017	\N	99	Action,Adventure,Crime
tt5461686	video	The Making of 'Stolen'	The Making of 'Stolen'	f	2013	\N	7	Documentary,Short
tt5461704	video	Stolen: Cast and Crew Interviews	Stolen: Cast and Crew Interviews	f	2013	\N	42	Documentary,Short
tt5461714	video	Stolen: Behind the Scenes	Stolen: Behind the Scenes	f	2013	\N	11	Short
tt5462326	movie	Mom and Dad	Mom and Dad	f	2017	\N	86	Comedy,Horror,Thriller
tt5485570	video	Trespass: Inside the Thriller	Trespass: Inside the Thriller	f	2011	\N	5	Documentary,Short
tt5505282	video	Windtalkers: Fly-on-the-Set Scene Diaries	Windtalkers: Fly-On-the-Set Scene Diaries	f	2003	\N	24	Documentary,Short
tt5580536	movie	Arsenal	Arsenal	f	2017	\N	92	Action,Crime,Thriller
tt5688632	video	Blazing Trails: The Making of 'Ghost Rider'	Blazing Trails: The Making of 'Ghost Rider'	f	2007	\N	14	Documentary,Short
tt5688754	video	Ghost Rider: Comic-Con 2006	Ghost Rider: Comic-Con 2006	f	2007	\N	13	Documentary,Short
tt5792656	movie	Running with the Devil	Running with the Devil	f	2019	\N	100	Crime,Drama,Thriller
tt6016320	tvEpisode	Episode #12.305	Episode #12.305	f	2016	\N	21	News
tt6083648	movie	Looking Glass	Looking Glass	f	2018	\N	103	Mystery,Thriller
tt6089830	tvEpisode	Renata Litvinova/Nicolas Cage	Renata Litvinova/Nicolas Cage	f	2016	\N	\N	Comedy,News,Talk-Show
tt6143568	movie	The Humanity Bureau	The Humanity Bureau	f	2017	\N	95	Sci-Fi,Thriller
tt6260128	video	Behind the Scenes: Dying of the Light	Behind the Scenes: Dying of the Light	f	2015	\N	14	Documentary,Short
tt6372694	movie	Prisoners of the Ghostland	Prisoners of the Ghostland	f	2021	\N	103	Fantasy,Horror,Thriller
tt6760434	short	Becoming the Character	Becoming the Character	f	2017	\N	1	Comedy,Short
tt6763730	movie	Becoming Iconic	Becoming Iconic	f	2018	\N	85	Biography
tt6781540	video	Con Air: The Destruction of Las Vegas	Con Air: The Destruction of Las Vegas	f	2001	\N	3	Documentary,Short
tt6781618	video	Con Air: View from Above	Con Air: View from Above	f	2001	\N	5	Documentary,Short
tt6786592	tvEpisode	Episode dated 7 October 1986	Episode dated 7 October 1986	f	1986	\N	90	Music,Talk-Show
tt6887968	tvEpisode	Episode dated 20 May 2016	Episode dated 20 May 2016	f	2016	\N	\N	\N
tt6998518	movie	Mandy	Mandy	f	2018	\N	121	Action,Fantasy,Horror
tt7295450	movie	Between Worlds	Between Worlds	f	2018	\N	90	Fantasy,Mystery,Thriller
tt7462102	tvEpisode	Episode dated 28 October 1989	Episode dated 28 October 1989	f	1989	\N	\N	Comedy,Game-Show,Music
tt7867468	tvEpisode	Episode #24.121	Episode #24.121	f	2018	\N	20	News
tt8038708	tvEpisode	Episode #1.7	Episode #1.7	f	1992	\N	\N	Talk-Show
tt8114980	movie	Willy's Wonderland	Willy's Wonderland	f	2021	\N	88	Action,Comedy,Horror
tt8380776	movie	Grand Isle	Grand Isle	f	2019	\N	97	Crime,Mystery,Thriller
tt8387448	tvEpisode	Episode dated 5 March 2007	Episode dated 5 March 2007	f	2007	\N	\N	Comedy,Game-Show,Music
tt8535180	movie	Kill Chain	Kill Chain	f	2019	\N	91	Action,Drama,Thriller
tt8593824	movie	The Old Way	The Old Way	f	2023	\N	95	Action,Drama,Western
tt9135206	tvSpecial	Sitges - 51 Festival Internacional de Cinema Fantàstic de Catalunya	Sitges - 51 Festival Internacional de Cinema Fantàstic de Catalunya	f	2018	\N	\N	News
tt9257984	tvEpisode	Episode dated 12 October 2018	Episode dated 12 October 2018	f	2018	\N	60	News
tt9258040	tvEpisode	Episode dated 9 November 2018	Episode dated 9 November 2018	f	2018	\N	60	News
tt9351746	movie	Love, Antosha	Love, Antosha	f	2019	\N	92	Biography,Documentary,Music
tt9520442	video	The Making of '8MM'	The Making of '8MM'	f	1999	\N	5	Documentary,Short
tt9624766	movie	Jiu Jitsu	Jiu Jitsu	f	2020	\N	102	Action,Sci-Fi,Thriller
\.


--
-- TOC entry 4760 (class 2606 OID 40151)
-- Name: cast cast_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cast"
    ADD CONSTRAINT cast_pkey PRIMARY KEY (tconst, nconst);


--
-- TOC entry 4754 (class 2606 OID 40125)
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (nconst);


--
-- TOC entry 4758 (class 2606 OID 40139)
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (tconst);


--
-- TOC entry 4756 (class 2606 OID 40132)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (tconst);


--
-- TOC entry 4762 (class 2606 OID 40157)
-- Name: cast cast_nconst_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cast"
    ADD CONSTRAINT cast_nconst_fkey FOREIGN KEY (nconst) REFERENCES public.persons(nconst);


--
-- TOC entry 4763 (class 2606 OID 40152)
-- Name: cast cast_tconst_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."cast"
    ADD CONSTRAINT cast_tconst_fkey FOREIGN KEY (tconst) REFERENCES public.titles(tconst);


--
-- TOC entry 4761 (class 2606 OID 40140)
-- Name: ratings ratings_tconst_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_tconst_fkey FOREIGN KEY (tconst) REFERENCES public.titles(tconst);


-- Completed on 2025-06-29 20:40:16

--
-- PostgreSQL database dump complete
--


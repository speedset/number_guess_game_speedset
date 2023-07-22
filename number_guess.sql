--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 22, 21);
INSERT INTO public.games VALUES (2, 1, 379, 378);
INSERT INTO public.games VALUES (3, 2, 255, 254);
INSERT INTO public.games VALUES (4, 2, 286, 285);
INSERT INTO public.games VALUES (5, 1, 158, 155);
INSERT INTO public.games VALUES (6, 1, 288, 286);
INSERT INTO public.games VALUES (7, 1, 164, 163);
INSERT INTO public.games VALUES (8, 3, 731, 729);
INSERT INTO public.games VALUES (9, 3, 634, 633);
INSERT INTO public.games VALUES (10, 4, 480, 479);
INSERT INTO public.games VALUES (11, 5, 844, 843);
INSERT INTO public.games VALUES (12, 5, 691, 690);
INSERT INTO public.games VALUES (13, 4, 749, 746);
INSERT INTO public.games VALUES (14, 4, 1002, 1000);
INSERT INTO public.games VALUES (15, 4, 911, 910);
INSERT INTO public.games VALUES (16, 6, 899, 898);
INSERT INTO public.games VALUES (17, 6, 86, 85);
INSERT INTO public.games VALUES (18, 7, 878, 877);
INSERT INTO public.games VALUES (19, 7, 907, 906);
INSERT INTO public.games VALUES (20, 6, 299, 296);
INSERT INTO public.games VALUES (21, 6, 17, 15);
INSERT INTO public.games VALUES (22, 6, 700, 699);
INSERT INTO public.games VALUES (23, 8, 551, 550);
INSERT INTO public.games VALUES (24, 8, 202, 201);
INSERT INTO public.games VALUES (25, 9, 125, 124);
INSERT INTO public.games VALUES (26, 9, 551, 550);
INSERT INTO public.games VALUES (27, 8, 845, 842);
INSERT INTO public.games VALUES (28, 8, 43, 41);
INSERT INTO public.games VALUES (29, 8, 41, 40);
INSERT INTO public.games VALUES (30, 10, 898, 897);
INSERT INTO public.games VALUES (31, 10, 493, 492);
INSERT INTO public.games VALUES (32, 11, 818, 817);
INSERT INTO public.games VALUES (33, 10, 855, 852);
INSERT INTO public.games VALUES (34, 10, 410, 408);
INSERT INTO public.games VALUES (35, 10, 115, 114);
INSERT INTO public.games VALUES (36, 12, 632, 631);
INSERT INTO public.games VALUES (37, 12, 918, 917);
INSERT INTO public.games VALUES (38, 13, 98, 97);
INSERT INTO public.games VALUES (39, 13, 221, 220);
INSERT INTO public.games VALUES (40, 12, 166, 163);
INSERT INTO public.games VALUES (41, 12, 804, 802);
INSERT INTO public.games VALUES (42, 12, 92, 91);
INSERT INTO public.games VALUES (43, 14, 114, 113);
INSERT INTO public.games VALUES (44, 14, 177, 176);
INSERT INTO public.games VALUES (45, 15, 71, 70);
INSERT INTO public.games VALUES (46, 15, 304, 303);
INSERT INTO public.games VALUES (47, 14, 195, 192);
INSERT INTO public.games VALUES (48, 14, 726, 724);
INSERT INTO public.games VALUES (49, 14, 3, 2);
INSERT INTO public.games VALUES (50, 16, 271, 270);
INSERT INTO public.games VALUES (51, 16, 609, 608);
INSERT INTO public.games VALUES (52, 17, 243, 242);
INSERT INTO public.games VALUES (53, 17, 611, 610);
INSERT INTO public.games VALUES (54, 16, 667, 664);
INSERT INTO public.games VALUES (55, 16, 481, 479);
INSERT INTO public.games VALUES (56, 16, 17, 16);
INSERT INTO public.games VALUES (57, 18, 121, 120);
INSERT INTO public.games VALUES (58, 18, 844, 843);
INSERT INTO public.games VALUES (59, 19, 426, 425);
INSERT INTO public.games VALUES (60, 19, 120, 119);
INSERT INTO public.games VALUES (61, 18, 175, 172);
INSERT INTO public.games VALUES (62, 18, 776, 774);
INSERT INTO public.games VALUES (63, 18, 625, 624);
INSERT INTO public.games VALUES (64, 20, 427, 426);
INSERT INTO public.games VALUES (65, 20, 168, 167);
INSERT INTO public.games VALUES (66, 21, 317, 316);
INSERT INTO public.games VALUES (67, 21, 136, 135);
INSERT INTO public.games VALUES (68, 20, 544, 541);
INSERT INTO public.games VALUES (69, 20, 452, 450);
INSERT INTO public.games VALUES (70, 20, 959, 958);
INSERT INTO public.games VALUES (71, 22, 18, 17);
INSERT INTO public.games VALUES (72, 23, 633, 632);
INSERT INTO public.games VALUES (73, 23, 965, 964);
INSERT INTO public.games VALUES (74, 22, 452, 449);
INSERT INTO public.games VALUES (75, 22, 132, 130);
INSERT INTO public.games VALUES (76, 22, 279, 278);
INSERT INTO public.games VALUES (77, 24, 272, 271);
INSERT INTO public.games VALUES (78, 24, 448, 447);
INSERT INTO public.games VALUES (79, 25, 860, 859);
INSERT INTO public.games VALUES (80, 25, 784, 783);
INSERT INTO public.games VALUES (81, 24, 305, 302);
INSERT INTO public.games VALUES (82, 24, 436, 434);
INSERT INTO public.games VALUES (83, 24, 560, 559);
INSERT INTO public.games VALUES (84, 26, 772, 771);
INSERT INTO public.games VALUES (85, 26, 570, 569);
INSERT INTO public.games VALUES (86, 27, 6, 5);
INSERT INTO public.games VALUES (87, 27, 58, 57);
INSERT INTO public.games VALUES (88, 26, 853, 850);
INSERT INTO public.games VALUES (89, 26, 359, 357);
INSERT INTO public.games VALUES (90, 26, 82, 81);
INSERT INTO public.games VALUES (91, 28, 605, 604);
INSERT INTO public.games VALUES (92, 28, 739, 738);
INSERT INTO public.games VALUES (93, 29, 294, 293);
INSERT INTO public.games VALUES (94, 29, 600, 599);
INSERT INTO public.games VALUES (95, 28, 740, 737);
INSERT INTO public.games VALUES (96, 28, 184, 182);
INSERT INTO public.games VALUES (97, 28, 988, 987);
INSERT INTO public.games VALUES (98, 30, 986, 985);
INSERT INTO public.games VALUES (99, 30, 305, 304);
INSERT INTO public.games VALUES (100, 31, 357, 356);
INSERT INTO public.games VALUES (101, 31, 532, 531);
INSERT INTO public.games VALUES (102, 30, 224, 221);
INSERT INTO public.games VALUES (103, 30, 551, 549);
INSERT INTO public.games VALUES (104, 30, 261, 260);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1690059624606');
INSERT INTO public.players VALUES (2, 'user_1690059624605');
INSERT INTO public.players VALUES (3, 'user_1690059771887');
INSERT INTO public.players VALUES (4, 'user_1690059782514');
INSERT INTO public.players VALUES (5, 'user_1690059782513');
INSERT INTO public.players VALUES (6, 'user_1690059939582');
INSERT INTO public.players VALUES (7, 'user_1690059939581');
INSERT INTO public.players VALUES (8, 'user_1690060008231');
INSERT INTO public.players VALUES (9, 'user_1690060008230');
INSERT INTO public.players VALUES (10, 'user_1690060404267');
INSERT INTO public.players VALUES (11, 'user_1690060404266');
INSERT INTO public.players VALUES (12, 'user_1690060425683');
INSERT INTO public.players VALUES (13, 'user_1690060425682');
INSERT INTO public.players VALUES (14, 'user_1690060480467');
INSERT INTO public.players VALUES (15, 'user_1690060480466');
INSERT INTO public.players VALUES (16, 'user_1690060495628');
INSERT INTO public.players VALUES (17, 'user_1690060495627');
INSERT INTO public.players VALUES (18, 'user_1690060785630');
INSERT INTO public.players VALUES (19, 'user_1690060785629');
INSERT INTO public.players VALUES (20, 'user_1690060954590');
INSERT INTO public.players VALUES (21, 'user_1690060954589');
INSERT INTO public.players VALUES (22, 'user_1690060962624');
INSERT INTO public.players VALUES (23, 'user_1690060962623');
INSERT INTO public.players VALUES (24, 'user_1690061010967');
INSERT INTO public.players VALUES (25, 'user_1690061010966');
INSERT INTO public.players VALUES (26, 'user_1690061022075');
INSERT INTO public.players VALUES (27, 'user_1690061022074');
INSERT INTO public.players VALUES (28, 'user_1690061059416');
INSERT INTO public.players VALUES (29, 'user_1690061059415');
INSERT INTO public.players VALUES (30, 'user_1690061073118');
INSERT INTO public.players VALUES (31, 'user_1690061073117');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 104, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 31, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--


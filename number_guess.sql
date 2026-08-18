--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 11);
INSERT INTO public.games VALUES (2, 2, 252);
INSERT INTO public.games VALUES (3, 2, 132);
INSERT INTO public.games VALUES (4, 3, 732);
INSERT INTO public.games VALUES (5, 3, 947);
INSERT INTO public.games VALUES (6, 2, 598);
INSERT INTO public.games VALUES (7, 2, 808);
INSERT INTO public.games VALUES (8, 2, 778);
INSERT INTO public.games VALUES (9, 4, 423);
INSERT INTO public.games VALUES (10, 4, 613);
INSERT INTO public.games VALUES (11, 5, 854);
INSERT INTO public.games VALUES (12, 5, 980);
INSERT INTO public.games VALUES (13, 4, 851);
INSERT INTO public.games VALUES (14, 4, 345);
INSERT INTO public.games VALUES (15, 4, 169);
INSERT INTO public.games VALUES (16, 6, 328);
INSERT INTO public.games VALUES (17, 6, 329);
INSERT INTO public.games VALUES (18, 7, 695);
INSERT INTO public.games VALUES (19, 7, 469);
INSERT INTO public.games VALUES (20, 6, 104);
INSERT INTO public.games VALUES (21, 6, 353);
INSERT INTO public.games VALUES (22, 6, 385);
INSERT INTO public.games VALUES (23, 8, 322);
INSERT INTO public.games VALUES (24, 8, 559);
INSERT INTO public.games VALUES (25, 9, 413);
INSERT INTO public.games VALUES (26, 9, 16);
INSERT INTO public.games VALUES (27, 8, 394);
INSERT INTO public.games VALUES (28, 8, 848);
INSERT INTO public.games VALUES (29, 8, 193);
INSERT INTO public.games VALUES (30, 10, 49);
INSERT INTO public.games VALUES (31, 10, 536);
INSERT INTO public.games VALUES (32, 11, 47);
INSERT INTO public.games VALUES (33, 11, 187);
INSERT INTO public.games VALUES (34, 10, 831);
INSERT INTO public.games VALUES (35, 10, 649);
INSERT INTO public.games VALUES (36, 10, 538);
INSERT INTO public.games VALUES (37, 12, 403);
INSERT INTO public.games VALUES (38, 12, 365);
INSERT INTO public.games VALUES (39, 13, 633);
INSERT INTO public.games VALUES (40, 13, 654);
INSERT INTO public.games VALUES (41, 12, 487);
INSERT INTO public.games VALUES (42, 12, 50);
INSERT INTO public.games VALUES (43, 12, 303);
INSERT INTO public.games VALUES (44, 14, 586);
INSERT INTO public.games VALUES (45, 14, 301);
INSERT INTO public.games VALUES (46, 15, 535);
INSERT INTO public.games VALUES (47, 15, 705);
INSERT INTO public.games VALUES (48, 14, 203);
INSERT INTO public.games VALUES (49, 14, 554);
INSERT INTO public.games VALUES (50, 14, 989);
INSERT INTO public.games VALUES (51, 16, 610);
INSERT INTO public.games VALUES (52, 16, 896);
INSERT INTO public.games VALUES (53, 17, 660);
INSERT INTO public.games VALUES (54, 17, 396);
INSERT INTO public.games VALUES (55, 16, 551);
INSERT INTO public.games VALUES (56, 16, 193);
INSERT INTO public.games VALUES (57, 16, 535);
INSERT INTO public.games VALUES (58, 18, 3);
INSERT INTO public.games VALUES (59, 18, 507);
INSERT INTO public.games VALUES (60, 19, 575);
INSERT INTO public.games VALUES (61, 19, 976);
INSERT INTO public.games VALUES (62, 18, 775);
INSERT INTO public.games VALUES (63, 18, 86);
INSERT INTO public.games VALUES (64, 18, 598);
INSERT INTO public.games VALUES (65, 20, 302);
INSERT INTO public.games VALUES (66, 20, 196);
INSERT INTO public.games VALUES (67, 21, 801);
INSERT INTO public.games VALUES (68, 21, 240);
INSERT INTO public.games VALUES (69, 20, 91);
INSERT INTO public.games VALUES (70, 20, 436);
INSERT INTO public.games VALUES (71, 20, 324);
INSERT INTO public.games VALUES (72, 22, 788);
INSERT INTO public.games VALUES (73, 22, 225);
INSERT INTO public.games VALUES (74, 23, 598);
INSERT INTO public.games VALUES (75, 23, 933);
INSERT INTO public.games VALUES (76, 22, 858);
INSERT INTO public.games VALUES (77, 22, 297);
INSERT INTO public.games VALUES (78, 22, 200);
INSERT INTO public.games VALUES (79, 24, 243);
INSERT INTO public.games VALUES (80, 24, 657);
INSERT INTO public.games VALUES (81, 25, 264);
INSERT INTO public.games VALUES (82, 25, 496);
INSERT INTO public.games VALUES (83, 24, 526);
INSERT INTO public.games VALUES (84, 24, 304);
INSERT INTO public.games VALUES (85, 24, 383);
INSERT INTO public.games VALUES (86, 26, 260);
INSERT INTO public.games VALUES (87, 26, 574);
INSERT INTO public.games VALUES (88, 27, 206);
INSERT INTO public.games VALUES (89, 27, 149);
INSERT INTO public.games VALUES (90, 26, 960);
INSERT INTO public.games VALUES (91, 26, 450);
INSERT INTO public.games VALUES (92, 26, 605);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'username');
INSERT INTO public.users VALUES (2, 'user_1787089290396');
INSERT INTO public.users VALUES (3, 'user_1787089290395');
INSERT INTO public.users VALUES (4, 'user_1787089314351');
INSERT INTO public.users VALUES (5, 'user_1787089314350');
INSERT INTO public.users VALUES (6, 'user_1787089409553');
INSERT INTO public.users VALUES (7, 'user_1787089409552');
INSERT INTO public.users VALUES (8, 'user_1787089440582');
INSERT INTO public.users VALUES (9, 'user_1787089440581');
INSERT INTO public.users VALUES (10, 'user_1787089477417');
INSERT INTO public.users VALUES (11, 'user_1787089477416');
INSERT INTO public.users VALUES (12, 'user_1787089552785');
INSERT INTO public.users VALUES (13, 'user_1787089552784');
INSERT INTO public.users VALUES (14, 'user_1787089631326');
INSERT INTO public.users VALUES (15, 'user_1787089631325');
INSERT INTO public.users VALUES (16, 'user_1787089641352');
INSERT INTO public.users VALUES (17, 'user_1787089641351');
INSERT INTO public.users VALUES (18, 'user_1787089722494');
INSERT INTO public.users VALUES (19, 'user_1787089722493');
INSERT INTO public.users VALUES (20, 'user_1787089810028');
INSERT INTO public.users VALUES (21, 'user_1787089810027');
INSERT INTO public.users VALUES (22, 'user_1787089840496');
INSERT INTO public.users VALUES (23, 'user_1787089840495');
INSERT INTO public.users VALUES (24, 'user_1787089882567');
INSERT INTO public.users VALUES (25, 'user_1787089882566');
INSERT INTO public.users VALUES (26, 'user_1787089913076');
INSERT INTO public.users VALUES (27, 'user_1787089913075');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 92, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


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
    username character varying(22) NOT NULL,
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 'user_1666966616150', 603);
INSERT INTO public.games VALUES (17, 'user_1666966616150', 91);
INSERT INTO public.games VALUES (18, 'user_1666966616149', 469);
INSERT INTO public.games VALUES (19, 'user_1666966616149', 992);
INSERT INTO public.games VALUES (20, 'user_1666966616150', 857);
INSERT INTO public.games VALUES (21, 'user_1666966616150', 324);
INSERT INTO public.games VALUES (22, 'user_1666966616150', 467);
INSERT INTO public.games VALUES (23, 'user_1666966652138', 990);
INSERT INTO public.games VALUES (24, 'user_1666966652138', 685);
INSERT INTO public.games VALUES (25, 'user_1666966652137', 705);
INSERT INTO public.games VALUES (26, 'user_1666966652137', 134);
INSERT INTO public.games VALUES (27, 'user_1666966652138', 65);
INSERT INTO public.games VALUES (28, 'user_1666966652138', 431);
INSERT INTO public.games VALUES (29, 'user_1666966652138', 58);
INSERT INTO public.games VALUES (30, 'Castor', 12);
INSERT INTO public.games VALUES (31, 'Castor', 9);
INSERT INTO public.games VALUES (32, 'user_1666966784331', 657);
INSERT INTO public.games VALUES (33, 'user_1666966784331', 963);
INSERT INTO public.games VALUES (34, 'user_1666966784330', 693);
INSERT INTO public.games VALUES (35, 'user_1666966784330', 266);
INSERT INTO public.games VALUES (36, 'user_1666966784331', 726);
INSERT INTO public.games VALUES (37, 'user_1666966784331', 733);
INSERT INTO public.games VALUES (38, 'user_1666966784331', 598);
INSERT INTO public.games VALUES (39, 'user_1666966880625', 675);
INSERT INTO public.games VALUES (40, 'user_1666966880625', 632);
INSERT INTO public.games VALUES (41, 'user_1666966880624', 240);
INSERT INTO public.games VALUES (42, 'user_1666966880624', 324);
INSERT INTO public.games VALUES (43, 'user_1666966880625', 88);
INSERT INTO public.games VALUES (44, 'user_1666966880625', 86);
INSERT INTO public.games VALUES (45, 'user_1666966880625', 524);
INSERT INTO public.games VALUES (46, 'user_1666966883307', 301);
INSERT INTO public.games VALUES (47, 'user_1666966883307', 62);
INSERT INTO public.games VALUES (48, 'user_1666966883306', 105);
INSERT INTO public.games VALUES (49, 'user_1666966883306', 746);
INSERT INTO public.games VALUES (50, 'user_1666966883307', 472);
INSERT INTO public.games VALUES (51, 'user_1666966883307', 607);
INSERT INTO public.games VALUES (52, 'user_1666966883307', 940);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--



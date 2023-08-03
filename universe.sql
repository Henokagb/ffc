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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    descr text,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: last_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.last_table (
    name character varying(20) NOT NULL,
    last_table_id integer NOT NULL,
    descr text
);


ALTER TABLE public.last_table OWNER TO freecodecamp;

--
-- Name: last_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.last_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.last_table_id_seq OWNER TO freecodecamp;

--
-- Name: last_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.last_table_id_seq OWNED BY public.last_table.last_table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth integer,
    diameter numeric(5,1),
    descr text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth integer,
    diameter numeric(5,1),
    descr text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth integer,
    diameter numeric(5,1),
    descr text,
    is_alive boolean,
    visible boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: last_table last_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table ALTER COLUMN last_table_id SET DEFAULT nextval('public.last_table_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'actuelle', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'g1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'g2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'g3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'g4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'g5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'g6', NULL, NULL, NULL);


--
-- Data for Name: last_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.last_table VALUES ('l1', 1, NULL);
INSERT INTO public.last_table VALUES ('l2', 2, NULL);
INSERT INTO public.last_table VALUES ('l3', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (19, 'm1', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'm2', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (21, 'm3', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (22, 'm4', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (23, 'm5', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (24, 'm6', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (25, 'm7', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (26, 'm8', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (27, 'm9', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (28, 'm10', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (29, 'm11', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (30, 'm12', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (31, 'm13', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (32, 'm14', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (33, 'm15', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (34, 'm16', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (35, 'm17', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (36, 'm18', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (37, 'm19', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (38, 'm20', NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'p1', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'p2', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'p3', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'p4', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'p5', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'p6', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'p7', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (14, 'p8', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (15, 'p9', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (16, 'p10', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (17, 'p11', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (18, 'p12', NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 's1', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (8, 's2', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (9, 's3', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (10, 's4', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (11, 's5', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (12, 's6', NULL, NULL, NULL, NULL, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: last_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.last_table_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 38, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy contraint_g; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT contraint_g UNIQUE (name);


--
-- Name: star contraint_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT contraint_s UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: last_table last_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table
    ADD CONSTRAINT last_table_name_key UNIQUE (name);


--
-- Name: last_table last_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table
    ADD CONSTRAINT last_table_pkey PRIMARY KEY (last_table_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_plannet_id_fkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plannet_id_fkey UNIQUE (name);


--
-- Name: planet planet_fkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fkey UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

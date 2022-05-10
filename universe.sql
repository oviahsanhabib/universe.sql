
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
    isalife boolean,
    age integer NOT NULL,
    notes text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric(5,2),
    age integer NOT NULL,
    note text,
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
    age integer NOT NULL,
    notes text,
    distance integer,
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
    isalife boolean,
    age integer NOT NULL,
    notes text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_details (
    star_details_id integer NOT NULL,
    name character varying(20) NOT NULL,
    notes text NOT NULL
);


ALTER TABLE public.star_details OWNER TO freecodecamp;

--
-- Name: star_details_star_details_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_details_star_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_details_star_details_id_seq OWNER TO freecodecamp;

--
-- Name: star_details_star_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_details_star_details_id_seq OWNED BY public.star_details.star_details_id;


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
-- Name: star_details star_details_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_details ALTER COLUMN star_details_id SET DEFAULT nextval('public.star_details_star_details_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, 1000, 'this is just text');
INSERT INTO public.galaxy VALUES (2, 'Corvus', true, 3000, 'this is just text');
INSERT INTO public.galaxy VALUES (3, 'Centaurus', true, 6000, 'this is just text');
INSERT INTO public.galaxy VALUES (4, 'Virgo', true, 7000, 'this is just text');
INSERT INTO public.galaxy VALUES (5, 'Sculptor', true, 8000, 'this is just text');
INSERT INTO public.galaxy VALUES (6, 'Circinus', false, 6000, 'this is just text');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', 76.32, 40428, 'faekfheaiof', 5);
INSERT INTO public.moon VALUES (2, 'Adrastea', 15.32, 644289, 'faereaiof', 2);
INSERT INTO public.moon VALUES (3, 'Thebe', 64.32, 5434289, 'ergaiof', 1);
INSERT INTO public.moon VALUES (4, 'Io', 64.32, 7565289, 'dffof', 2);
INSERT INTO public.moon VALUES (5, 'Europa', 86.32, 2465289, '646fof', 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 64.32, 6565289, 'hfh', 2);
INSERT INTO public.moon VALUES (7, 'yrnymede', 98.32, 6565289, 'hfh', 2);
INSERT INTO public.moon VALUES (8, 'Leda', 87.32, 6565289, 'dffof', 2);
INSERT INTO public.moon VALUES (9, 'Himalia', 80.32, 6565289, '646fof', 1);
INSERT INTO public.moon VALUES (10, 'Elara', 54.32, 9765289, 'hfh', 6);
INSERT INTO public.moon VALUES (11, 'Lysithea', 87.32, 5665289, 'hfh', 5);
INSERT INTO public.moon VALUES (12, 'Themisto', 97.32, 6565289, 'hfh', 2);
INSERT INTO public.moon VALUES (13, 'Dia', 86.32, 6565289, 'dffof', 2);
INSERT INTO public.moon VALUES (14, 'Carpo', 75.32, 6565289, '646fof', 1);
INSERT INTO public.moon VALUES (15, 'Euporie', 54.32, 9765289, 'hfh', 6);
INSERT INTO public.moon VALUES (16, 'Euanthe', 86.32, 5665289, 'hfh', 5);
INSERT INTO public.moon VALUES (17, 'Praxidike', 34.32, 6565289, 'dffof', 2);
INSERT INTO public.moon VALUES (18, 'ocaste', 98.32, 6565289, '646fof', 1);
INSERT INTO public.moon VALUES (19, 'Orthosie', 8.32, 9765289, 'hfh', 6);
INSERT INTO public.moon VALUES (20, 'Helike', 34.32, 5665289, 'hfh', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 765432, 'faekfheaiof', 65476, 5);
INSERT INTO public.planet VALUES (2, 'Venus', 15405432, 'faereaiof', 98765, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 64560432, 'ergaiof', 87665, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 646052, 'dffof', 87656, 2);
INSERT INTO public.planet VALUES (5, 'Ceres', 867632, '646fof', 65756, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 645632, 'hfh', 89766, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 984632, 'hfh', 98765, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', 8760432, 'dffof', 786575, 2);
INSERT INTO public.planet VALUES (9, 'Neptune', 8660432, '646fof', 789798, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 540332, 'hfh', 7865868, 6);
INSERT INTO public.planet VALUES (11, 'Charon', 875232, 'hfh', 987787, 5);
INSERT INTO public.planet VALUES (12, 'UB313', 9750432, 'hfh', 6588565, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha', true, 20000, 'random text', 1);
INSERT INTO public.star VALUES (2, 'Beta', true, 34000, 'random text', 1);
INSERT INTO public.star VALUES (3, 'Gama', true, 39000, 'random text', 3);
INSERT INTO public.star VALUES (4, 'Sirius', true, 897000, 'random text', 2);
INSERT INTO public.star VALUES (5, 'Canopus', false, 997000, 'random text', 2);
INSERT INTO public.star VALUES (6, 'Vega', false, 997000, 'random text', 4);


--
-- Data for Name: star_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_details VALUES (1, 'good', 'drftghjk');
INSERT INTO public.star_details VALUES (2, 'bad', 'rdtfyghjk');
INSERT INTO public.star_details VALUES (3, 'neutral', 'dfghj');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_details_star_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_details_star_details_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star_details star_details_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_details
    ADD CONSTRAINT star_details_name_key UNIQUE (name);


--
-- Name: star_details star_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_details
    ADD CONSTRAINT star_details_pkey PRIMARY KEY (star_details_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxystar; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxystar FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moonplanet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moonplanet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planetstar; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planetstar FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

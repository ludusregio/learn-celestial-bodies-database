--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    light_years_away character varying(30),
    new_general_catalog character varying(30),
    messier_number integer,
    constellation_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    is_spherical boolean,
    orbital_period_day numeric(8,3)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    discovery_year character varying(20),
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    distance_from_earth character varying(30),
    stars_in_system integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.');
INSERT INTO public.constellation VALUES (2, 'Sagittarius', 'Sagittarius is one of the constellations of the zodiac and is located in the Southern celestial hemisphere.');
INSERT INTO public.constellation VALUES (3, 'Coma Berenices', 'Coma Berenices is an ancient asterism in the northern sky, which has been defined as one of the 88 modern constellations.');
INSERT INTO public.constellation VALUES (4, 'Virgo', 'Virgo is one of the constellations of the zodiac. Its name is Latin for maiden.');
INSERT INTO public.constellation VALUES (5, 'Canes Venatici', 'Canes Venatici is one of the 88 constellations designated by the International Astronomical Union.');
INSERT INTO public.constellation VALUES (6, 'Ursa Major', 'Ursa Major, also known as the Great Bear, is a constellation in the northern sky, whose associated mythology likely dates back into prehistory. ');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', NULL, 'IC 4715', NULL, 2);
INSERT INTO public.galaxy VALUES (2, 'Cigar', 'Starburst', '12 millions', 'NGC 3032', 82, 6);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'Barred Spiral', '2.5 millions', 'NGC 224', 31, 1);
INSERT INTO public.galaxy VALUES (7, 'Needle', 'Edge-on Spiral', '30-50 millions', 'NGC 4565', NULL, 3);
INSERT INTO public.galaxy VALUES (8, 'Sombrero', 'Peculiar', '31.5 millions', 'NGC 4594', 104, 4);
INSERT INTO public.galaxy VALUES (9, 'Sunflower', 'Spiral', '29.3 millions', 'NGC 5055', 63, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5, 'The Moon is Earth''s only natural satellite.', true, 27.322);
INSERT INTO public.moon VALUES (2, 'Phobos', 6, 'Phobos is the innermost and larger of the two natural satellites of Mars.', false, 0.319);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 'Deimos is the smaller and outer of the two natural satellites of Mars.', false, 1.262);
INSERT INTO public.moon VALUES (4, 'Europa', 7, 'Europa or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter.', true, 3.551);
INSERT INTO public.moon VALUES (5, 'Ganymede', 7, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter.', true, 7.155);
INSERT INTO public.moon VALUES (6, 'Callisto', 7, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter.', true, 16.690);
INSERT INTO public.moon VALUES (7, 'Amalthea', 7, 'Amalthea is a moon of Jupiter. It is also known as Jupiter V.', false, 0.498);
INSERT INTO public.moon VALUES (8, 'Thebe', 7, 'Thebe, also known as Jupiter XIV, is the fourth of Jupiter''s moons by distance from the planet.', false, 0.675);
INSERT INTO public.moon VALUES (9, 'Metis', 7, 'Metis, also known as Jupiter XVI, is the innermost known moon of Jupiter.', false, 0.295);
INSERT INTO public.moon VALUES (10, 'Dione', 8, 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.', true, 2.737);
INSERT INTO public.moon VALUES (11, 'Ariel', 9, 'Ariel is the fourth-largest of the 27 known moons of Uranus.', true, 2.520);
INSERT INTO public.moon VALUES (12, 'Titania', 9, 'Titania, also designated Uranus III, is the largest of the moons of Uranus.', true, 8.706);
INSERT INTO public.moon VALUES (13, 'Bianca', 9, 'Bianca is an inner satellite of Uranus.', false, 0.435);
INSERT INTO public.moon VALUES (14, 'Ophelia', 9, 'Ophelia is a moon of Uranus. It was discovered from the images taken by Voyager 2 on January 20.', false, 0.376);
INSERT INTO public.moon VALUES (15, 'Miranda', 9, 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus''s five round satellites.', true, 1.413);
INSERT INTO public.moon VALUES (16, 'Oberon', 9, 'Oberon, also designated Uranus IV, is the outermost major moon of the planet Uranus.', true, 13.460);
INSERT INTO public.moon VALUES (17, 'Proteus', 10, 'Proteus, also known as Neptune VIII, is the second-largest Neptunian moon, and Neptune''s largest inner satellite.', false, 1.122);
INSERT INTO public.moon VALUES (18, 'Charon', 12, 'Charon known as Pluto I, is the largest of the five known natural satellites of the dwarf planet Pluto.', true, 6.387);
INSERT INTO public.moon VALUES (19, 'Namaka', 13, 'Namaka is the smaller, inner moon of the trans-Neptunian dwarf planet Haumea.', false, 18.278);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 15, 'Dysnomia is the only known moon of the dwarf planet Eris.', true, 15.786);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Venus', 1, false, 'Prehistoric', 'The second planet from the Sun. It has the densest atmosphere of all rocky bodies in the Solar System.');
INSERT INTO public.planet VALUES (3, 'Mercury', 1, false, 'Prehistoric', 'First planet from the Sun and the smallest in the Solar System.');
INSERT INTO public.planet VALUES (5, 'Earth', 1, true, 'Prehistoric', 'The third planet from the Sun and the only astronomical object known to harbor life.');
INSERT INTO public.planet VALUES (6, 'Mars', 1, false, 'Prehistoric', 'The fourth planet from the Sun. The surface is orange-red because it is covered in iron oxide dust, giving it the nickname "the Red Planet".');
INSERT INTO public.planet VALUES (7, 'Jupiter', 1, false, 'Prehistoric', 'The fifth planet from the Sun and the largest in the Solar System.');
INSERT INTO public.planet VALUES (8, 'Saturn', 1, false, 'Prehistoric', 'The sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.');
INSERT INTO public.planet VALUES (9, 'Uranus', 1, false, '1781', 'The seventh planet from the Sun. It is a gaseous cyan-coloured ice giant.');
INSERT INTO public.planet VALUES (10, 'Neptune', 1, false, '1846', 'The eighth and farthest known planet from the Sun. It is the fourth-largest planet in the Solar System by diameter.');
INSERT INTO public.planet VALUES (11, 'Ceres', 1, false, '1801', 'Dwarf planet in the solar system.');
INSERT INTO public.planet VALUES (13, 'Haumea', 1, false, '2004', 'Dwarf planet in the solar system.');
INSERT INTO public.planet VALUES (14, 'Makemake', 1, false, '2005', 'Dwarf planet in the solar system.');
INSERT INTO public.planet VALUES (15, 'Eris', 1, false, '2005', 'Dwarf planet in the solar system.');
INSERT INTO public.planet VALUES (12, 'Pluto', 1, false, '1930', 'Dwarf planet in the solar system.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'The Sun is the star at the center of the solar system', '0.997356 astronomical units', 1);
INSERT INTO public.star VALUES (5, 'Capella', 6, 'Capella is the brightest star in the northern constellation of Auriga.', '42.9 light-years away', 4);
INSERT INTO public.star VALUES (6, 'Upsilon Andromedae', 7, 'Upsilon Andromedae is a binary star.', '44 light-years away', 2);
INSERT INTO public.star VALUES (2, 'HD 69830', 9, 'HD 69830 (285 G. Puppis) is a yellow dwarf star', '40.7 light-years away', 1);
INSERT INTO public.star VALUES (3, 'GJ 1132', 2, 'GJ 1132 is a small red dwarf star', '41.1 light-years away', 2);
INSERT INTO public.star VALUES (4, 'ULAS J003402.77-005206.7', 8, 'ULAS J003402.77-005206.7 is a T9-type brown dwarf in the constellation of Cetus', '', 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_new_general_catalog_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_new_general_catalog_key UNIQUE (new_general_catalog);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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


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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying NOT NULL,
    size numeric,
    population numeric
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_type text,
    galaxy_age integer,
    description text,
    has_life boolean,
    size_in_lyt_yrs integer
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
    name character varying(255) NOT NULL,
    moon_age numeric,
    is_spherical boolean,
    description text,
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
    name character varying(255) NOT NULL,
    planet_type text,
    distance_from_earth numeric,
    has_life boolean,
    description text,
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
    name character varying(255) NOT NULL,
    star_type text,
    star_size numeric,
    description text,
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Asia', 4690000000, 44580000);
INSERT INTO public.continent VALUES (2, 'Africa', 1390000000, 30270000);
INSERT INTO public.continent VALUES (3, 'North America', 590000000, 24710000);
INSERT INTO public.continent VALUES (4, 'South America', 430000000, 17840000);
INSERT INTO public.continent VALUES (5, 'Antactica', 0, 14000000);
INSERT INTO public.continent VALUES (6, 'Europe', 750000000, 10180000);
INSERT INTO public.continent VALUES (7, 'Australia', 40000000, 7690000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Spiral', 12, 'Nearest major galaxy to us with multiple spiral arms', false, 250000);
INSERT INTO public.galaxy VALUES (2, 'Triangulum Galaxy (M33)', 'Spiral', 10, 'Smaller and less massive than Andromeda, known for distorted arms', false, 60000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy (M51)', 'Grand Design Spiral', 13, 'Famous for its tightly wound, face-on spiral arms', false, 80000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy (M1104)', 'Wide-Brimmed Siral', 10, 'Nicknamed for its prominent dust lane obscuring the central bulge', false, 50000);
INSERT INTO public.galaxy VALUES (5, 'Milky Way Galaxy', 'Barrred Spiral', 14, 'Our home galaxy, with a central bar and multiple spiral arms', true, 100000);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular dwarf', 15, 'Irregular-shaped galaxy orbiting the Milky Way, rich in gas and dust', false, 14000);
INSERT INTO public.galaxy VALUES (7, 'Small Magellanic Cloud', 'Irregular dwarf', 2, 'Even smaller and more irregular companion to the Large Magellanic Cloud', false, 7000);
INSERT INTO public.galaxy VALUES (8, 'NGC 1275', 'Lenticular', 10, 'Elliptical galaxy with a dusty disk resembling a lens', false, 110000);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A (NGC 5128)', 'Elliptical', 12, 'Elliptical galaxy known for its active radio jets', false, 65000);
INSERT INTO public.galaxy VALUES (10, 'Bode-s(M81)', 'Spiral', 11, 'Galaxy with a prominent dust lane and a smaller companion galaxy', false, 90000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500000000, true, 'Large iron core, volcanic features, thin atmosphere', 3);
INSERT INTO public.moon VALUES (2, ' Phobos ', 4500000000, true, 'Small, irregularly shaped, possibly captured', 4);
INSERT INTO public.moon VALUES (3, 'Demios', 4500000000, true, ' Even smaller and more irregular than Phobos', 4);
INSERT INTO public.moon VALUES (4, 'Io', 4600000000, true, 'Most volcanic body in our solar system, sulfurous surface and atmosphere ', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4600000000, true, 'Likely subsurface ocean, prime candidate for life', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4600000000, true, 'Largest moon, thin oxygen atmosphere, possible subsurface ocean', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4600000000, true, 'Heavily cratered, possible internal salty ocean, thin atmosphere', 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4600000000, true, 'Thick nitrogen atmosphere, methane lakes and rivers, prebiotic chemistry potential', 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 4600000000, true, 'Second-largest moon, heavily cratered icy surface, tenuous atmosphere', 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4600000000, true, 'Unique with one dark and one bright side, possibly volcanic deposits', 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 4500000000, false, 'Small, oddly shaped, chaotic surface and faults', 7);
INSERT INTO public.moon VALUES (12, 'Ariel', 4500000000, true, 'Brightest moon, smooth icy surface, possible subsurface ocean', 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 4500000000, true, 'Darkest moon, heavily cratered, possible subsurface ocean', 7);
INSERT INTO public.moon VALUES (14, 'Titania', 4500000000, true, 'Largest moon, heavily cratered surface and canyons', 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 4500000000, true, 'Second-largest moon, heavily cratered, possible tenuous atmosphere', 8);
INSERT INTO public.moon VALUES (16, 'Triton', 4500000000, true, 'Largest moon, tenuous nitrogen atmosphere, icy geysers, possible subsurface ocean', 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 4500000000, false, 'Oddly shaped, dark surface, possible water ice', 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 4500000000, false, 'Elongated, irregular shape, unknown surface composition', 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 4500000000, false, 'Small, irregularly shaped, reflective surface', 8);
INSERT INTO public.moon VALUES (20, 'Halle', 4500000000, false, ' Smallest known moon, unknown surface composition', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 57900000, false, 'No atmosphere, too hot for life as we know it', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 108000000, false, 'Thick, hot atmosphere makes surface uninhabitable', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 0, true, 'Our home planet, only known place with life', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 228000000, true, 'Potential for past or present microbial life', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 778300000, false, 'Gas giant, not suitable for life', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 1400000000, false, 'Gas giant, not suitable for life, but may have moons with potential for life', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 2800000000, false, 'Ice giant, not suitable for life, but may have moons with potential for life', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 4500000000, false, 'Ice giant, not suitable for life, but may have moons with potential for life', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Super-Earth', 4200000000, false, 'Too close to its star, likely tidally locked, star system is Alpha Centauri', 7);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Super-Earth', 512000000000, false, 'Earth-sized planet within habitable zone, but confirmation needed, Kepler-186 star system', 7);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'Earth-sized', 39000000000, false, 'Earth-sized planet within habitable zone, could have liquid water, TRAPPIST-1 star system', 7);
INSERT INTO public.planet VALUES (12, 'GJ1214b', 'Super-Earth', 40700000000, false, 'Too close to its star, likely tidally locked, star system is GJ 1214b', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Sun-like star (G-type main sequence star)', 1, 'Medium-sized star like our Sun, stable and long-lived', 5);
INSERT INTO public.star VALUES (2, 'Proxima Centauri (Alpha Centauri system, Milky Way)', 'Red Dwarf (M-dwarf)', 0.08, 'Cool, dim star, very common but faint. May have habitable zones close by', 5);
INSERT INTO public.star VALUES (3, 'Betelgeuse (Milky Way)', 'Red Giant (M-giant)', 1000, 'Massive star in late stage of life, inflating and cooling after using up core hydrogen', 5);
INSERT INTO public.star VALUES (4, 'Rigel (Milky Way)', 'Supergiant (O-type star)', 150, 'Very hot, massive stars, many times brighter than the Sun but with short lifespans', 5);
INSERT INTO public.star VALUES (5, 'PSR B1919+21 (Milky Way)', 'Neutron Star', 0.006, 'Incredibly dense core leftover from a massive stars supernova', 5);
INSERT INTO public.star VALUES (6, 'Cygnus X-1 (Milky Way)', 'Black Hole (Stellar-mass black hole)', 2, 'Region of spacetime with such gravity that nothing, not even light, can escape. Formed from collapsed star', 5);
INSERT INTO public.star VALUES (7, 'Gamma Velorum (Milky Way)', 'Wolf-Rayet star (WR star)', 20, 'Rare, hot, and massive stars shedding significant mass through powerful winds', 5);
INSERT INTO public.star VALUES (8, 'Large Magellanic Cloud', 'Hypernova (SN 1987A)', 0, 'Extremely energetic supernova, even brighter than a typical supernova', 6);
INSERT INTO public.star VALUES (9, 'Pulsar (Milky Way)', 'Pulsar (Crab Nebula Pulsar)', 0.03, 'Rapidly spinning neutron star emitting beams of radiation like a lighthouse', 5);
INSERT INTO public.star VALUES (10, 'Virgo', 'Quasar (3C 273)', 0, 'Extremely distant, luminous object powered by a supermassive black hole at the center of a galaxy', 1);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 3, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


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


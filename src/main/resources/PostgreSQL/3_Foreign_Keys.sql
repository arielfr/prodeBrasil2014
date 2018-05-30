--
-- TOC entry 1916 (class 2606 OID 172198)
-- Name: fk_city; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_city FOREIGN KEY (id_city) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1927 (class 2606 OID 172361)
-- Name: fk_country; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sectors
    ADD CONSTRAINT fk_country FOREIGN KEY (id_country) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1920 (class 2606 OID 172372)
-- Name: fk_country; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk_country FOREIGN KEY (id_country) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1914 (class 2606 OID 172203)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1917 (class 2606 OID 172208)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1922 (class 2606 OID 172302)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1925 (class 2606 OID 172320)
-- Name: fk_match; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_match FOREIGN KEY (id_match) REFERENCES matches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1923 (class 2606 OID 172307)
-- Name: fk_person; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_person FOREIGN KEY (id_person) REFERENCES person(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1921 (class 2606 OID 172379)
-- Name: fk_sector; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk_sector FOREIGN KEY (id_sector) REFERENCES sectors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1915 (class 2606 OID 172213)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1924 (class 2606 OID 172312)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY prode
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1926 (class 2606 OID 172325)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY results
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1918 (class 2606 OID 172218)
-- Name: fk_team_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_a FOREIGN KEY (id_team_a) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1919 (class 2606 OID 172223)
-- Name: fk_team_b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_b FOREIGN KEY (id_team_b) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;
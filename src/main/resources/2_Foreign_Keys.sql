--
-- TOC entry 2146 (class 2606 OID 16578)
-- Name: fk_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_city FOREIGN KEY (id_city) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2150 (class 2606 OID 16568)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2147 (class 2606 OID 16583)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2151 (class 2606 OID 16573)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2148 (class 2606 OID 16588)
-- Name: fk_team_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_a FOREIGN KEY (id_team_a) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2149 (class 2606 OID 16593)
-- Name: fk_team_b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_b FOREIGN KEY (id_team_b) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;
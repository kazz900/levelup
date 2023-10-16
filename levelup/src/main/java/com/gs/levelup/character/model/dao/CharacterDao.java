package com.gs.levelup.character.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("characterDao")
public class CharacterDao {

	@Autowired
	private org.mybatis.spring.SqlSessionTemplate sqlSessionTemplateMaria;

	public ArrayList<Character> selectCharacters(int accountId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Character selectCharacter(int accountId, int charId) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Character> testMaria() {
		List<Character> list = sqlSessionTemplateMaria.selectList("mariatest.selectAll");
		return (ArrayList<Character>)list;
	}

}

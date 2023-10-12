package com.gs.levelup.character.model.service;

import java.util.ArrayList;

public interface CharacterService {
	public ArrayList<Character> selectCharacters(int accountId);
	public Character selectCharacter(int accountId,int charId);
	
}

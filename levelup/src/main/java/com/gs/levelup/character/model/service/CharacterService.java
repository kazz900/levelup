package com.gs.levelup.character.model.service;

import java.util.ArrayList;

public interface CharacterService {
	public ArrayList<com.gs.levelup.character.model.vo.Character> selectCharacters(int accountId);
	public com.gs.levelup.character.model.vo.Character selectCharacter(int charId);
	public ArrayList<com.gs.levelup.character.model.vo.Character> selectAll();
	
}

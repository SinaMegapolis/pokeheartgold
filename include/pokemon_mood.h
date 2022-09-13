#ifndef POKEHEARTGOLD_POKEMON_MOOD_H
#define POKEHEARTGOLD_POKEMON_MOOD_H

#include "pokemon.h"

void ApplyItemEffectOnMonMood(POKEMON *pokemon, u16 itemId);
void ApplyMonMoodModifier(POKEMON *pokemon, int modifierId);

#endif //POKEHEARTGOLD_POKEMON_MOOD_H

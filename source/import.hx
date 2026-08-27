#if !macro
// Discord API
#if DISCORD_ALLOWED
import funkin.api.discord.Discord;
#end

// Psych
#if LUA_ALLOWED
import llua.*;
import llua.Lua;
#end

#if ACHIEVEMENTS_ALLOWED
import funkin.data.Achievements;
#end

// Mobile Controls
import funkin.mobile.objects.MobileControls;
import funkin.mobile.objects.IMobileControls;
import funkin.mobile.objects.Hitbox;
import funkin.mobile.objects.TouchPad;
import funkin.mobile.objects.TouchButton;
import funkin.mobile.input.MobileInputID;
import funkin.mobile.backend.MobileData;
import funkin.mobile.input.MobileInputManager;
import funkin.mobile.backend.TouchUtil;
import flixel.system.scaleModes.MobileScaleMode;

// ⚠️ Bloco Android removido (não compila em Haxe)

// System / Platform
#if sys
import sys.*;
import sys.io.*;
#elseif js
import js.html.*;
#end

// Psych Engine core
import funkin.Paths;
import funkin.input.Controls;
import funkin.input.Cursor;
import funkin.util.CoolUtil;
import funkin.util.MemoryManager;
import funkin.util.ThreadUtil;
import funkin.util.ObjectPool;
import funkin.util.SystemMemory;
import funkin.ui.MusicBeatState;
import funkin.ui.MusicBeatSubstate;
import funkin.ui.transition.CustomFadeTransition;
import funkin.Preferences as ClientPrefs;
import funkin.audio.Conductor;
import funkin.play.stage.BaseStage;
import funkin.data.Difficulty;
import funkin.modding.Mods;
import funkin.ui.Language;
import funkin.mobile.backend.StorageUtil;

import funkin.ui.components.*; // Psych-UI

import funkin.ui.Alphabet;
import funkin.play.stage.BGSprite;

import funkin.play.PlayState;
import funkin.ui.LoadingState;

#if flxanimate
import flxanimate.*;
import flxanimate.PsychFlxAnimate as FlxAnimate;
#end

// Flixel
import flixel.sound.FlxSound;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.util.FlxDestroyUtil;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.group.FlxSpriteGroup;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.addons.transition.FlxTransitionableState;
import funkin.graphics.shaders.flixel.system.FlxShader;

// Utils
using StringTools;
#end
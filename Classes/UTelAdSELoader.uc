///////////////////////////////////////////////////////////////////////////////
// filename:    UTelAdSELoader.uc
// version:     101
// author:      Michiel 'El Muerte' Hendriks <elmuerte@drunksnipers.com>
// purpose:     Auto loader for UTelAdSE
///////////////////////////////////////////////////////////////////////////////

class UTelAdSELoader extends AutoLoader;

var config bool bEnabled;

event PreBeginPlay()
{
	class'UTelAdSE'.default.bEnabled = bEnabled;
	Super.PreBeginPlay();
}

static function bool IsActive()
{
	return true;
}

static function bool EnableLoader(optional string SpecialActor)
{
	default.bEnabled = True;
	return true;
}

static function bool DisableLoader(optional string SpecialActor)
{
	default.bEnabled = False;
	return true;
}

function bool ApplyUpdate()
{
	return default.bEnabled;
}

static function FillPlayInfo(PlayInfo PI)
{
  Super.FillPlayInfo(PI);
  PI.AddSetting("Server Actors", "bEnabled", "UTelAdSE", 255, 255, "Check");
	class'UTelAdSE'.static.FillPlayInfo(PI);
}

defaultproperties
{
  bEnabled=true
  bIncludeServerActor=False
  ActorClass="UTelAdSE.UTelAdSE"
  FriendlyName="UTelAdSE"
  ActorDescription="Telnet Administration Server."
  RequiredIniEntries(0)=(ClassFrom="Engine.GameEngine",PropName="ServerActors",PropValue="UTelAdSE.UTelAdSE")
  RequiredIniEntries(1)=(ClassFrom="ConfigManager.ConfigMasterAccessControlIni",PropName="PrivClasses",PropValue="class'UTelAdSE.xTelnetPrivs'")
}

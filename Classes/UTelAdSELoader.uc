class UTelAdSELoader extends AutoLoader;

// TODO: enable/disable loading
// TODO: manage TelnetHelpers

static function bool IsActive()
{
	return true;
}

static function FillPlayInfo(PlayInfo PI)
{
	Super.FillPlayInfo(PI);
  PI.AddClass(class'UTelAdSE');
	class'UTelAdSE'.static.FillPlayInfo(PI);
  PI.PopClass();
}

defaultproperties
{
  bIncludeServerActor=True
  ActorClass="UTelAdSE.UTelAdSE"
  FriendlyName="UTelAdSE"
  ActorDescription="Telnet Administration Server."
  RequiredIniEntries(0)=(ClassFrom="Engine.GameEngine",PropName="ServerActors",PropValue="UTelAdSE.UTelAdSE")
  RequiredIniEntries(1)=(ClassFrom="XAdmin.AccessControlIni",PropName="PrivClasses",PropValue="class'UTelAdSE.xTelnetPrivs'")
  RequiredIniEntries(2)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="Class'UTelAdSE.DefaultBuiltins'")
  RequiredIniEntries(3)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="Class'UTelAdSE.UserGroupAdmin'")
  RequiredIniEntries(4)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="Class'UTelAdSE.ServerBuiltins'")
  RequiredIniEntries(5)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="Class'UTelAdSELadder.GameProfiles'")
}

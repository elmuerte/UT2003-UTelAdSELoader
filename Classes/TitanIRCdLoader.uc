class TitanIRCdLoader extends AutoLoader;

static function bool IsActive()
{
	return true;
}

static function FillPlayInfo(PlayInfo PI)
{
	Super.FillPlayInfo(PI);
  PI.AddClass(class'TitanIRCd');
	class'TitanIRCd'.static.FillPlayInfo(PI);
  PI.PopClass();
}

defaultproperties
{
  bIncludeServerActor=True
  ActorClass="UTelAdSE.TitanIRCd"
  FriendlyName="TitanIRCd"
  ActorDescription="IRC Administrator Server"
  RequiredIniEntries(0)=(ClassFrom="Engine.GameEngine",PropName="ServerActors",PropValue="UTelAdSE.TitanIRCd")
  RequiredIniEntries(1)=(ClassFrom="XAdmin.AccessControlIni",PropName="PrivClasses",PropValue="class'UTelAdSE.xTelnetPrivs'")
}

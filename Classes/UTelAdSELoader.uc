class UTelAdSELoader extends AutoLoader;

defaultproperties
{
  bIncludeServerActor=True
  ActorClass="UTelAdSE.UTelAdSE"
  FriendlyName="UTelAdSE"
  RequiredIniEntries(0)=(ClassFrom="Engine.GameEngine",PropName="ServerActors",PropValue="UTelAdSE.UTelAdSE")
  RequiredIniEntries(1)=(ClassFrom="XAdmin.AccessControlIni",PropName="PrivClasses",PropValue="class'UTelAdSE.xTelnetPrivs'")
  SecLevel=255
}
/*
  RequiredIniEntries(2)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="class'UTelAdSE.DefaultBuiltins'")
  RequiredIniEntries(3)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="class'UTelAdSE.UserGroupAdmin'")
  RequiredIniEntries(4)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="class'UTelAdSE.ServerBuiltins'")
  RequiredIniEntries(5)=(ClassFrom="UTelAdSE.UTelAdSE",PropName="TelnetHelperClasses",PropValue="class'UTelAdSELadder.GameProfiles'")
*/
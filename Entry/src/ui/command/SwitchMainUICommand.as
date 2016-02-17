package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SwitchMainUICommand extends Command
   {
       
      public var mainUIState:int;
      
      public function SwitchMainUICommand(param1:int)
      {
         super();
         this.mainUIState = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}

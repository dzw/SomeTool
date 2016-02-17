package guild.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseGuildCommand extends Command
   {
       
      public function BaseGuildCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}

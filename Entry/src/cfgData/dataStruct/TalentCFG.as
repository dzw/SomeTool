package cfgData.dataStruct
{
   public class TalentCFG
   {
       
      public var id:uint;
      
      public var belong:String = "";
      
      public var skills:Array;
      
      public var iconId:int;
      
      public var mp:int;
      
      public var cd:int;
      
      public var ninjutsuLevel:int;
      
      public var type:int;
      
      public var type1:Array;
      
      public var ninJutsuTypeList:Array;
      
      public var enterCd:int;
      
      public var isImmediately:Boolean;
      
      public var exStates:Array;
      
      public var beHitState1:int;
      
      public var beHitState1Param:int;
      
      public var culturalDesc:String = "";
      
      public var showIcon:Boolean;
      
      public var desc:String = "";
      
      public function TalentCFG()
      {
         this.skills = new Array();
         this.type1 = new Array();
         this.ninJutsuTypeList = new Array();
         this.exStates = new Array();
         super();
      }
   }
}

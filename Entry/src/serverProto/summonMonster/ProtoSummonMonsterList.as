package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoSummonMonsterList extends Message
   {
      
      public static const SUMMON_MONSTER_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterList.summon_monster_info","summonMonsterInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoSummonMonsterInfo);
       
      [ArrayElementType("serverProto.summonMonster.ProtoSummonMonsterInfo")]
      public var summonMonsterInfo:Array;
      
      public function ProtoSummonMonsterList()
      {
         this.summonMonsterInfo = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.summonMonsterInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summonMonsterInfo[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetBattleRoyaleFieldInfoResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleFieldInfoResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SELF_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleFieldInfoResp.self_info","selfInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBattleRoyalePlayerInfo);
      
      public static const CAMP_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleFieldInfoResp.camp_list","campList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoBattleRoyaleCampInfo);
       
      public var ret:ProtoRetInfo;
      
      private var self_info$field:serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo;
      
      [ArrayElementType("serverProto.battleRoyale.ProtoBattleRoyaleCampInfo")]
      public var campList:Array;
      
      public function ProtoGetBattleRoyaleFieldInfoResp()
      {
         this.campList = [];
         super();
      }
      
      public function clearSelfInfo() : void
      {
         this.self_info$field = null;
      }
      
      public function get hasSelfInfo() : Boolean
      {
         return this.self_info$field != null;
      }
      
      public function set selfInfo(param1:serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo) : void
      {
         this.self_info$field = param1;
      }
      
      public function get selfInfo() : serverProto.battleRoyale.ProtoBattleRoyalePlayerInfo
      {
         return this.self_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSelfInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.self_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.campList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.campList[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

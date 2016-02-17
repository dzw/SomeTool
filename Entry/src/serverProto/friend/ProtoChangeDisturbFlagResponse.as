package serverProto.friend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChangeDisturbFlagResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoChangeDisturbFlagResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const DISTURB_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoChangeDisturbFlagResponse.disturb_flag","disturbFlag",2 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var disturb_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoChangeDisturbFlagResponse()
      {
         super();
      }
      
      public function clearDisturbFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.disturb_flag$field = new uint();
      }
      
      public function get hasDisturbFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set disturbFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.disturb_flag$field = param1;
      }
      
      public function get disturbFlag() : uint
      {
         return this.disturb_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasDisturbFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.disturb_flag$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

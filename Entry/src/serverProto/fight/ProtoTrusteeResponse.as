package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTrusteeResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTrusteeResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TRUSTEE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTrusteeResponse.trustee_state","trusteeState",2 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var trustee_state$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoTrusteeResponse()
      {
         super();
      }
      
      public function clearTrusteeState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.trustee_state$field = new int();
      }
      
      public function get hasTrusteeState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set trusteeState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.trustee_state$field = param1;
      }
      
      public function get trusteeState() : int
      {
         return this.trustee_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasTrusteeState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.trustee_state$field);
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

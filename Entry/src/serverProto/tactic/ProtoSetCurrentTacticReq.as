package serverProto.tactic
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.NinjaSourceType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSetCurrentTacticReq extends Message
   {
      
      public static const TACTIC_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoSetCurrentTacticReq.tactic_idx","tacticIdx",1 << 3 | WireType.VARINT);
      
      public static const NINJA_SOURCE_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.tactic.ProtoSetCurrentTacticReq.ninja_source_type","ninjaSourceType",2 << 3 | WireType.VARINT,NinjaSourceType);
       
      public var tacticIdx:int;
      
      private var ninja_source_type$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSetCurrentTacticReq()
      {
         super();
      }
      
      public function clearNinjaSourceType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_source_type$field = new int();
      }
      
      public function get hasNinjaSourceType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaSourceType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_source_type$field = param1;
      }
      
      public function get ninjaSourceType() : int
      {
         return this.ninja_source_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.tacticIdx);
         if(this.hasNinjaSourceType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.ninja_source_type$field);
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

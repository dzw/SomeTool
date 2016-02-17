package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaToolAddAllNinjaRequest extends Message
   {
      
      public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolAddAllNinjaRequest.ninja_level","ninjaLevel",1 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolAddAllNinjaRequest.ninja_id","ninjaId",2 << 3 | WireType.VARINT);
      
      public static const IS_PUTAWAY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoNinjaToolAddAllNinjaRequest.is_putaway","isPutaway",3 << 3 | WireType.VARINT);
       
      public var ninjaLevel:int;
      
      private var ninja_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var is_putaway$field:int;
      
      public function ProtoNinjaToolAddAllNinjaRequest()
      {
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new int();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : int
      {
         return this.ninja_id$field;
      }
      
      public function clearIsPutaway() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.is_putaway$field = new int();
      }
      
      public function get hasIsPutaway() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set isPutaway(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.is_putaway$field = param1;
      }
      
      public function get isPutaway() : int
      {
         return this.is_putaway$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaLevel);
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_id$field);
         }
         if(this.hasIsPutaway)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.is_putaway$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

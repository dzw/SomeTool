package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWishTreeAward extends Message
   {
      
      public static const TREE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeAward.tree_level","treeLevel",1 << 3 | WireType.VARINT);
      
      public static const WISH_ITEMS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoWishTreeAward.wish_items","wishItems",2 << 3 | WireType.LENGTH_DELIMITED,ProtoWishItem);
       
      private var tree_level$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.family.ProtoWishItem")]
      public var wishItems:Array;
      
      public function ProtoWishTreeAward()
      {
         this.wishItems = [];
         super();
      }
      
      public function clearTreeLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.tree_level$field = new int();
      }
      
      public function get hasTreeLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set treeLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.tree_level$field = param1;
      }
      
      public function get treeLevel() : int
      {
         return this.tree_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasTreeLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.tree_level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.wishItems.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.wishItems[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
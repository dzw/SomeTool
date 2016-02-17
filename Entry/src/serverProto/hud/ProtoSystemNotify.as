package serverProto.hud
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSystemNotify extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoSystemNotify.id","id",1 << 3 | WireType.VARINT);
      
      public static const AREA:RepeatedFieldDescriptor$TYPE_ENUM = new RepeatedFieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoSystemNotify.area","area",2 << 3 | WireType.VARINT,ProtoMsgArea);
      
      public static const CHANNEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoSystemNotify.channel","channel",3 << 3 | WireType.VARINT,ProtoMsgChannel);
      
      public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.hud.ProtoSystemNotify.msg","msg",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ARGS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoSystemNotify.args","args",5 << 3 | WireType.LENGTH_DELIMITED,ProtoMsgArg);
      
      public static const YOU_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoSystemNotify.you_flag","youFlag",6 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      [ArrayElementType("int")]
      public var area:Array;
      
      private var channel$field:int;
      
      private var hasField$0:uint = 0;
      
      private var msg$field:String;
      
      [ArrayElementType("serverProto.hud.ProtoMsgArg")]
      public var args:Array;
      
      private var you_flag$field:uint;
      
      public function ProtoSystemNotify()
      {
         this.area = [];
         this.args = [];
         super();
      }
      
      public function clearChannel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.channel$field = new int();
      }
      
      public function get hasChannel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set channel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.channel$field = param1;
      }
      
      public function get channel() : int
      {
         return this.channel$field;
      }
      
      public function clearMsg() : void
      {
         this.msg$field = null;
      }
      
      public function get hasMsg() : Boolean
      {
         return this.msg$field != null;
      }
      
      public function set msg(param1:String) : void
      {
         this.msg$field = param1;
      }
      
      public function get msg() : String
      {
         return this.msg$field;
      }
      
      public function clearYouFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.you_flag$field = new uint();
      }
      
      public function get hasYouFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set youFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.you_flag$field = param1;
      }
      
      public function get youFlag() : uint
      {
         return this.you_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         var _loc2_:uint = 0;
         while(_loc2_ < this.area.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.area[_loc2_]);
            _loc2_++;
         }
         if(this.hasChannel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.channel$field);
         }
         if(this.hasMsg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.msg$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.args.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.args[_loc3_]);
            _loc3_++;
         }
         if(this.hasYouFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.you_flag$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

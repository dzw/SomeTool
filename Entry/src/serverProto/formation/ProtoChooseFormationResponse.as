package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.formationBase.ProtoFormationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChooseFormationResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoChooseFormationResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const FORMATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoChooseFormationResponse.formation","formation",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const CURRENT_FORMATION_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formation.ProtoChooseFormationResponse.current_formation_index","currentFormationIndex",3 << 3 | WireType.VARINT);
      
      public static const FORMATION_NAME:RepeatedFieldDescriptor$TYPE_STRING = new RepeatedFieldDescriptor$TYPE_STRING("serverProto.formation.ProtoChooseFormationResponse.formation_name","formationName",4 << 3 | WireType.LENGTH_DELIMITED);
       
      public var ret:ProtoRetInfo;
      
      private var formation$field:ProtoFormationInfo;
      
      private var current_formation_index$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("String")]
      public var formationName:Array;
      
      public function ProtoChooseFormationResponse()
      {
         this.formationName = [];
         super();
      }
      
      public function clearFormation() : void
      {
         this.formation$field = null;
      }
      
      public function get hasFormation() : Boolean
      {
         return this.formation$field != null;
      }
      
      public function set formation(param1:ProtoFormationInfo) : void
      {
         this.formation$field = param1;
      }
      
      public function get formation() : ProtoFormationInfo
      {
         return this.formation$field;
      }
      
      public function clearCurrentFormationIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_formation_index$field = new int();
      }
      
      public function get hasCurrentFormationIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentFormationIndex(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_formation_index$field = param1;
      }
      
      public function get currentFormationIndex() : int
      {
         return this.current_formation_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasFormation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation$field);
         }
         if(this.hasCurrentFormationIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.current_formation_index$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.formationName.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.formationName[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

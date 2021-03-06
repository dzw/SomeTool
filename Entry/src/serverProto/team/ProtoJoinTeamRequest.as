package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoJoinTeamRequest extends Message
   {
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.team.ProtoJoinTeamRequest.team_id","teamId",2 << 3 | WireType.VARINT);
      
      public static const JOIN_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoJoinTeamRequest.join_type","joinType",3 << 3 | WireType.VARINT,ProtoJoinType);
       
      public var teamId:UInt64;
      
      private var join_type$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoJoinTeamRequest()
      {
         super();
      }
      
      public function clearJoinType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.join_type$field = new int();
      }
      
      public function get hasJoinType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set joinType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.join_type$field = param1;
      }
      
      public function get joinType() : int
      {
         return this.join_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT64(param1,this.teamId);
         if(this.hasJoinType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.join_type$field);
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

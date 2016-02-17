package serverProto.cardpack
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
   
   public final class ProtoGetCardPacketInfoByTypeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoByTypeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CARD_PACKET:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoByTypeRsp.card_packet","cardPacket",2 << 3 | WireType.LENGTH_DELIMITED,ProtoCardPacketInfo);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.cardpack.ProtoCardPacketInfo")]
      public var cardPacket:Array;
      
      public function ProtoGetCardPacketInfoByTypeRsp()
      {
         this.cardPacket = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.cardPacket.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.cardPacket[_loc2_]);
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

package serverProto.store
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetStoreFusionCardInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.store.ProtoGetStoreFusionCardInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BATCH_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoGetStoreFusionCardInfoRsp.batch_id","batchId",2 << 3 | WireType.VARINT);
      
      public static const JADE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoGetStoreFusionCardInfoRsp.jade","jade",3 << 3 | WireType.VARINT);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoGetStoreFusionCardInfoRsp.remain_time","remainTime",4 << 3 | WireType.VARINT);
      
      public static const CARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.store.ProtoGetStoreFusionCardInfoRsp.card_info","cardInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoStoreFusionCardInfo);
       
      public var ret:ProtoRetInfo;
      
      private var batch_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var jade$field:uint;
      
      private var remain_time$field:uint;
      
      [ArrayElementType("serverProto.store.ProtoStoreFusionCardInfo")]
      public var cardInfo:Array;
      
      public function ProtoGetStoreFusionCardInfoRsp()
      {
         this.cardInfo = [];
         super();
      }
      
      public function clearBatchId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.batch_id$field = new uint();
      }
      
      public function get hasBatchId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set batchId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.batch_id$field = param1;
      }
      
      public function get batchId() : uint
      {
         return this.batch_id$field;
      }
      
      public function clearJade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.jade$field = new uint();
      }
      
      public function get hasJade() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set jade(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.jade$field = param1;
      }
      
      public function get jade() : uint
      {
         return this.jade$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasBatchId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.batch_id$field);
         }
         if(this.hasJade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.jade$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.cardInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.cardInfo[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
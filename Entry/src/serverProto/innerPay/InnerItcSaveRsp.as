package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerItcSaveRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerItcSaveRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveRsp.uin","uin",2 << 3 | WireType.VARINT);
      
      public static const AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveRsp.amount","amount",3 << 3 | WireType.VARINT);
      
      public static const PORTAL_REQ:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcSaveRsp.portal_req","portalReq",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ALLIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcSaveRsp.allin","allin",5 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var uin$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var amount$field:uint;
      
      private var portal_req$field:String;
      
      private var allin$field:uint;
      
      public function InnerItcSaveRsp()
      {
         super();
      }
      
      public function clearUin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.uin$field = new uint();
      }
      
      public function get hasUin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set uin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.uin$field = param1;
      }
      
      public function get uin() : uint
      {
         return this.uin$field;
      }
      
      public function clearAmount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.amount$field = new uint();
      }
      
      public function get hasAmount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set amount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.amount$field = param1;
      }
      
      public function get amount() : uint
      {
         return this.amount$field;
      }
      
      public function clearPortalReq() : void
      {
         this.portal_req$field = null;
      }
      
      public function get hasPortalReq() : Boolean
      {
         return this.portal_req$field != null;
      }
      
      public function set portalReq(param1:String) : void
      {
         this.portal_req$field = param1;
      }
      
      public function get portalReq() : String
      {
         return this.portal_req$field;
      }
      
      public function clearAllin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.allin$field = new uint();
      }
      
      public function get hasAllin() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set allin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.allin$field = param1;
      }
      
      public function get allin() : uint
      {
         return this.allin$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasUin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.uin$field);
         }
         if(this.hasAmount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.amount$field);
         }
         if(this.hasPortalReq)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.portal_req$field);
         }
         if(this.hasAllin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.allin$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

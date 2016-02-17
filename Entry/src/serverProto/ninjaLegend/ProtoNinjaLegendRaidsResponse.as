package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendRaidsResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendRaidsResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REWARD_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendRaidsResponse.reward_ary","rewardAry",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const PROTO_NINJA_LEGEND_ZHANG_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendRaidsResponse.proto_ninja_legend_zhang_data","protoNinjaLegendZhangData",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendZhangData);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rewardAry:Array;
      
      private var proto_ninja_legend_zhang_data$field:serverProto.ninjaLegend.ProtoNinjaLegendZhangData;
      
      public function ProtoNinjaLegendRaidsResponse()
      {
         this.rewardAry = [];
         super();
      }
      
      public function clearProtoNinjaLegendZhangData() : void
      {
         this.proto_ninja_legend_zhang_data$field = null;
      }
      
      public function get hasProtoNinjaLegendZhangData() : Boolean
      {
         return this.proto_ninja_legend_zhang_data$field != null;
      }
      
      public function set protoNinjaLegendZhangData(param1:serverProto.ninjaLegend.ProtoNinjaLegendZhangData) : void
      {
         this.proto_ninja_legend_zhang_data$field = param1;
      }
      
      public function get protoNinjaLegendZhangData() : serverProto.ninjaLegend.ProtoNinjaLegendZhangData
      {
         return this.proto_ninja_legend_zhang_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.rewardAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rewardAry[_loc2_]);
            _loc2_++;
         }
         if(this.hasProtoNinjaLegendZhangData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_ninja_legend_zhang_data$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

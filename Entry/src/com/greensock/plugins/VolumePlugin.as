package com.greensock.plugins
{
   import flash.media.SoundTransform;
   import com.greensock.TweenLite;
   
   public class VolumePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
       
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      public function VolumePlugin()
      {
         super();
         this.propName = "volume";
         this.overwriteProps = ["volume"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(isNaN(param2) || param1.hasOwnProperty("volume") || !param1.hasOwnProperty("soundTransform"))
         {
            return false;
         }
         this._target = param1;
         this._st = this._target.soundTransform;
         addTween(this._st,"volume",this._st.volume,param2,"volume");
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         this._target.soundTransform = this._st;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._target = null;
         this._st = null;
      }
   }
}

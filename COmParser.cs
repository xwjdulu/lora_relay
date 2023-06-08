
using AccdRelay.Lib;
using System;
using UInt8 = System.Byte;

namespace AccdRelay
{
    public class ComParser : DataBuf
    {
        public delegate void MsgReceivedEventHandler(ComParser sender, byte[] msg);
        public event MsgReceivedEventHandler MsgReceived;

        public ComParser(int bufLen = Config.NET_MAX_MSG_SIZE)
        {
            byte[] buf = new byte[bufLen];
            SetBuf(buf);
        }

        private bool _Parse()
        {
            int len = DataLen;

            if (len <= 0)
            {
                Reset();
                return false;
            }

            if (len < 5)
            {
                TrancPos();
                return false;
            }

            int pos = BufPos;
            
            UInt8 magic = ReadUInt8();
            if (magic != 0xAA)
            {
                Log.E("Parse invalid magic 0x{0:X}", magic);
                Reset();
                return false;
            }

            magic = ReadUInt8();
            if (magic != 0xAF)
            {
                Log.E("Parse invalid magic 2 0x{0:X}", magic);
                Reset();
                return false;
            }

            UInt8 type = ReadUInt8();
            UInt8 msgLen = ReadUInt8();
            
            if (len < msgLen + 5)
            {
                BufPos = pos;
                TrancPos();
                //Log.W("Parse data not enough");
                return false;
            }

            BufPos = pos;
            
            byte[] data = new byte[msgLen + 5];
            ReadData(data);      
            
            if (MsgReceived != null) MsgReceived(this, data);
            
            return true;
        }

        private void Parse()
        {
            Seek(0);
            while (_Parse()) ;
        }

        override public bool AppendData(byte[] data, int len = -1)
        {
            lock(this)
            {
                //Log.I("Parse AppendData len {0}", data.Length);
                if (!base.AppendData(data, len))
                {
                    return false;
                }
                Parse();
            }
            return true;
        }
    }
}

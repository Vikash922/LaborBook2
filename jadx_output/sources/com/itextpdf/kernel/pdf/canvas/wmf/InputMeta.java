package com.itextpdf.kernel.pdf.canvas.wmf;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class InputMeta {

    /* JADX INFO: renamed from: in */
    InputStream f3177in;
    int length;

    public InputMeta(InputStream inputStream) {
        this.f3177in = inputStream;
    }

    public int readWord() throws IOException {
        this.length += 2;
        int i = this.f3177in.read();
        if (i < 0) {
            return 0;
        }
        return (i + (this.f3177in.read() << 8)) & 65535;
    }

    public int readShort() throws IOException {
        int word = readWord();
        return word > 32767 ? word - 65536 : word;
    }

    public int readInt() throws IOException {
        this.length += 4;
        int i = this.f3177in.read();
        if (i < 0) {
            return 0;
        }
        return i + (this.f3177in.read() << 8) + (this.f3177in.read() << 16) + (this.f3177in.read() << 24);
    }

    public int readByte() throws IOException {
        this.length++;
        return this.f3177in.read() & 255;
    }

    public void skip(int i) throws IOException {
        this.length += i;
        StreamUtil.skip(this.f3177in, i);
    }

    public int getLength() {
        return this.length;
    }

    public Color readColor() throws IOException {
        int i = readByte();
        int i2 = readByte();
        int i3 = readByte();
        readByte();
        return new DeviceRgb(i, i2, i3);
    }
}

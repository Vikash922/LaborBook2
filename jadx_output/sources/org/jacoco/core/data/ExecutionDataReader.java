package org.jacoco.core.data;

import java.io.IOException;
import java.io.InputStream;
import org.jacoco.core.internal.data.CompactDataInput;

/* JADX INFO: loaded from: classes6.dex */
public class ExecutionDataReader {

    /* JADX INFO: renamed from: in */
    protected final CompactDataInput f4741in;
    private ISessionInfoVisitor sessionInfoVisitor = null;
    private IExecutionDataVisitor executionDataVisitor = null;
    private boolean firstBlock = true;

    public ExecutionDataReader(InputStream inputStream) {
        this.f4741in = new CompactDataInput(inputStream);
    }

    public void setSessionInfoVisitor(ISessionInfoVisitor iSessionInfoVisitor) {
        this.sessionInfoVisitor = iSessionInfoVisitor;
    }

    public void setExecutionDataVisitor(IExecutionDataVisitor iExecutionDataVisitor) {
        this.executionDataVisitor = iExecutionDataVisitor;
    }

    public boolean read() throws IOException {
        byte b;
        do {
            int i = this.f4741in.read();
            if (i == -1) {
                return false;
            }
            b = (byte) i;
            if (this.firstBlock && b != 1) {
                throw new IOException("Invalid execution data file.");
            }
            this.firstBlock = false;
        } while (readBlock(b));
        return true;
    }

    protected boolean readBlock(byte b) throws IOException {
        if (b == 1) {
            readHeader();
            return true;
        }
        if (b == 16) {
            readSessionInfo();
            return true;
        }
        if (b == 17) {
            readExecutionData();
            return true;
        }
        throw new IOException(String.format("Unknown block type %x.", Byte.valueOf(b)));
    }

    private void readHeader() throws IOException {
        if (this.f4741in.readChar() != 49344) {
            throw new IOException("Invalid execution data file.");
        }
        char c = this.f4741in.readChar();
        if (c != ExecutionDataWriter.FORMAT_VERSION) {
            throw new IncompatibleExecDataVersionException(c);
        }
    }

    private void readSessionInfo() throws IOException {
        if (this.sessionInfoVisitor == null) {
            throw new IOException("No session info visitor.");
        }
        this.sessionInfoVisitor.visitSessionInfo(new SessionInfo(this.f4741in.readUTF(), this.f4741in.readLong(), this.f4741in.readLong()));
    }

    private void readExecutionData() throws IOException {
        if (this.executionDataVisitor == null) {
            throw new IOException("No execution data visitor.");
        }
        this.executionDataVisitor.visitClassExecution(new ExecutionData(this.f4741in.readLong(), this.f4741in.readUTF(), this.f4741in.readBooleanArray()));
    }
}

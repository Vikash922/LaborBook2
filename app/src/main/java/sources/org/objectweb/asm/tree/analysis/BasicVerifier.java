package org.objectweb.asm.tree.analysis;

import java.util.List;
import org.jacoco.core.internal.instr.InstrSupport;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.InvokeDynamicInsnNode;
import org.objectweb.asm.tree.MethodInsnNode;

/* JADX INFO: loaded from: classes4.dex */
public class BasicVerifier extends BasicInterpreter {
    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    public /* bridge */ /* synthetic */ Value naryOperation(AbstractInsnNode abstractInsnNode, List list) throws AnalyzerException {
        return naryOperation(abstractInsnNode, (List<? extends BasicValue>) list);
    }

    public BasicVerifier() {
        super(589824);
        if (getClass() != BasicVerifier.class) {
            throw new IllegalStateException();
        }
    }

    protected BasicVerifier(int i) {
        super(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.objectweb.asm.tree.analysis.BasicValue copyOperation(org.objectweb.asm.tree.AbstractInsnNode r4, org.objectweb.asm.tree.analysis.BasicValue r5) throws org.objectweb.asm.tree.analysis.AnalyzerException {
        /*
            r3 = this;
            int r0 = r4.getOpcode()
            r1 = 0
            switch(r0) {
                case 21: goto L3c;
                case 22: goto L39;
                case 23: goto L36;
                case 24: goto L33;
                case 25: goto L24;
                default: goto L8;
            }
        L8:
            switch(r0) {
                case 54: goto L3c;
                case 55: goto L39;
                case 56: goto L36;
                case 57: goto L33;
                case 58: goto Lc;
                default: goto Lb;
            }
        Lb:
            return r5
        Lc:
            boolean r0 = r5.isReference()
            if (r0 != 0) goto L23
            org.objectweb.asm.tree.analysis.BasicValue r0 = org.objectweb.asm.tree.analysis.BasicValue.RETURNADDRESS_VALUE
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L1b
            goto L23
        L1b:
            org.objectweb.asm.tree.analysis.AnalyzerException r0 = new org.objectweb.asm.tree.analysis.AnalyzerException
            java.lang.String r2 = "an object reference or a return address"
            r0.<init>(r4, r1, r2, r5)
            throw r0
        L23:
            return r5
        L24:
            boolean r0 = r5.isReference()
            if (r0 == 0) goto L2b
            return r5
        L2b:
            org.objectweb.asm.tree.analysis.AnalyzerException r0 = new org.objectweb.asm.tree.analysis.AnalyzerException
            java.lang.String r2 = "an object reference"
            r0.<init>(r4, r1, r2, r5)
            throw r0
        L33:
            org.objectweb.asm.tree.analysis.BasicValue r0 = org.objectweb.asm.tree.analysis.BasicValue.DOUBLE_VALUE
            goto L3e
        L36:
            org.objectweb.asm.tree.analysis.BasicValue r0 = org.objectweb.asm.tree.analysis.BasicValue.FLOAT_VALUE
            goto L3e
        L39:
            org.objectweb.asm.tree.analysis.BasicValue r0 = org.objectweb.asm.tree.analysis.BasicValue.LONG_VALUE
            goto L3e
        L3c:
            org.objectweb.asm.tree.analysis.BasicValue r0 = org.objectweb.asm.tree.analysis.BasicValue.INT_VALUE
        L3e:
            boolean r2 = r0.equals(r5)
            if (r2 == 0) goto L45
            return r5
        L45:
            org.objectweb.asm.tree.analysis.AnalyzerException r2 = new org.objectweb.asm.tree.analysis.AnalyzerException
            r2.<init>(r4, r1, r0, r5)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.objectweb.asm.tree.analysis.BasicVerifier.copyOperation(org.objectweb.asm.tree.AbstractInsnNode, org.objectweb.asm.tree.analysis.BasicValue):org.objectweb.asm.tree.analysis.BasicValue");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[FALL_THROUGH] */
    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.objectweb.asm.tree.analysis.BasicValue unaryOperation(org.objectweb.asm.tree.AbstractInsnNode r4, org.objectweb.asm.tree.analysis.BasicValue r5) throws org.objectweb.asm.tree.analysis.AnalyzerException {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.objectweb.asm.tree.analysis.BasicVerifier.unaryOperation(org.objectweb.asm.tree.AbstractInsnNode, org.objectweb.asm.tree.analysis.BasicValue):org.objectweb.asm.tree.analysis.BasicValue");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.objectweb.asm.tree.analysis.BasicValue binaryOperation(org.objectweb.asm.tree.AbstractInsnNode r5, org.objectweb.asm.tree.analysis.BasicValue r6, org.objectweb.asm.tree.analysis.BasicValue r7) throws org.objectweb.asm.tree.analysis.AnalyzerException {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.objectweb.asm.tree.analysis.BasicVerifier.binaryOperation(org.objectweb.asm.tree.AbstractInsnNode, org.objectweb.asm.tree.analysis.BasicValue, org.objectweb.asm.tree.analysis.BasicValue):org.objectweb.asm.tree.analysis.BasicValue");
    }

    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    public BasicValue ternaryOperation(AbstractInsnNode abstractInsnNode, BasicValue basicValue, BasicValue basicValue2, BasicValue basicValue3) throws AnalyzerException {
        BasicValue basicValueNewValue;
        BasicValue basicValue4;
        switch (abstractInsnNode.getOpcode()) {
            case 79:
                basicValueNewValue = newValue(Type.getType("[I"));
                basicValue4 = BasicValue.INT_VALUE;
                break;
            case 80:
                basicValueNewValue = newValue(Type.getType("[J"));
                basicValue4 = BasicValue.LONG_VALUE;
                break;
            case 81:
                basicValueNewValue = newValue(Type.getType("[F"));
                basicValue4 = BasicValue.FLOAT_VALUE;
                break;
            case 82:
                basicValueNewValue = newValue(Type.getType("[D"));
                basicValue4 = BasicValue.DOUBLE_VALUE;
                break;
            case 83:
                basicValue4 = BasicValue.REFERENCE_VALUE;
                basicValueNewValue = basicValue;
                break;
            case 84:
                if (isSubTypeOf(basicValue, newValue(Type.getType(InstrSupport.DATAFIELD_DESC)))) {
                    basicValueNewValue = newValue(Type.getType(InstrSupport.DATAFIELD_DESC));
                } else {
                    basicValueNewValue = newValue(Type.getType("[B"));
                }
                basicValue4 = BasicValue.INT_VALUE;
                break;
            case 85:
                basicValueNewValue = newValue(Type.getType("[C"));
                basicValue4 = BasicValue.INT_VALUE;
                break;
            case 86:
                basicValueNewValue = newValue(Type.getType("[S"));
                basicValue4 = BasicValue.INT_VALUE;
                break;
            default:
                throw new AssertionError();
        }
        if (!isSubTypeOf(basicValue, basicValueNewValue)) {
            throw new AnalyzerException(abstractInsnNode, "First argument", "a " + basicValueNewValue + " array reference", basicValue);
        }
        if (!BasicValue.INT_VALUE.equals(basicValue2)) {
            throw new AnalyzerException(abstractInsnNode, "Second argument", BasicValue.INT_VALUE, basicValue2);
        }
        if (isSubTypeOf(basicValue3, basicValue4)) {
            return null;
        }
        throw new AnalyzerException(abstractInsnNode, "Third argument", basicValue4, basicValue3);
    }

    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    public BasicValue naryOperation(AbstractInsnNode abstractInsnNode, List<? extends BasicValue> list) throws AnalyzerException {
        int i;
        String str;
        int opcode = abstractInsnNode.getOpcode();
        if (opcode == 197) {
            for (BasicValue basicValue : list) {
                if (!BasicValue.INT_VALUE.equals(basicValue)) {
                    throw new AnalyzerException(abstractInsnNode, null, BasicValue.INT_VALUE, basicValue);
                }
            }
        } else {
            int i2 = 0;
            if (opcode == 184 || opcode == 186) {
                i = 0;
            } else {
                Type objectType = Type.getObjectType(((MethodInsnNode) abstractInsnNode).owner);
                if (!isSubTypeOf(list.get(0), newValue(objectType))) {
                    throw new AnalyzerException(abstractInsnNode, "Method owner", newValue(objectType), list.get(0));
                }
                i = 1;
            }
            if (opcode == 186) {
                str = ((InvokeDynamicInsnNode) abstractInsnNode).desc;
            } else {
                str = ((MethodInsnNode) abstractInsnNode).desc;
            }
            Type[] argumentTypes = Type.getArgumentTypes(str);
            while (i < list.size()) {
                int i3 = i2 + 1;
                BasicValue basicValueNewValue = newValue(argumentTypes[i2]);
                int i4 = i + 1;
                BasicValue basicValue2 = list.get(i);
                if (!isSubTypeOf(basicValue2, basicValueNewValue)) {
                    throw new AnalyzerException(abstractInsnNode, "Argument " + i3, basicValueNewValue, basicValue2);
                }
                i2 = i3;
                i = i4;
            }
        }
        return super.naryOperation(abstractInsnNode, list);
    }

    @Override // org.objectweb.asm.tree.analysis.BasicInterpreter, org.objectweb.asm.tree.analysis.Interpreter
    public void returnOperation(AbstractInsnNode abstractInsnNode, BasicValue basicValue, BasicValue basicValue2) throws AnalyzerException {
        if (!isSubTypeOf(basicValue, basicValue2)) {
            throw new AnalyzerException(abstractInsnNode, "Incompatible return type", basicValue2, basicValue);
        }
    }

    protected boolean isArrayValue(BasicValue basicValue) {
        return basicValue.isReference();
    }

    protected BasicValue getElementValue(BasicValue basicValue) throws AnalyzerException {
        return BasicValue.REFERENCE_VALUE;
    }

    protected boolean isSubTypeOf(BasicValue basicValue, BasicValue basicValue2) {
        return basicValue.equals(basicValue2);
    }
}

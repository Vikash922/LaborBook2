package com.itextpdf.layout.hyphenation;

import java.util.Enumeration;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
class TernaryTreeIterator implements Enumeration {
    String curkey;

    /* JADX INFO: renamed from: tt */
    TernaryTree f3218tt;
    int cur = -1;

    /* JADX INFO: renamed from: ns */
    Stack f3217ns = new Stack();

    /* JADX INFO: renamed from: ks */
    StringBuffer f3216ks = new StringBuffer();

    private class Item {
        char child;
        char parent;

        public Item() {
            this.parent = (char) 0;
            this.child = (char) 0;
        }

        public Item(char c, char c2) {
            this.parent = c;
            this.child = c2;
        }

        public Item(Item item) {
            this.parent = item.parent;
            this.child = item.child;
        }
    }

    public TernaryTreeIterator(TernaryTree ternaryTree) {
        this.f3218tt = ternaryTree;
        reset();
    }

    public void reset() {
        this.f3217ns.removeAllElements();
        this.f3216ks.setLength(0);
        this.cur = this.f3218tt.root;
        run();
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        String str = this.curkey;
        this.cur = m2666up();
        run();
        return str;
    }

    public char getValue() {
        if (this.cur >= 0) {
            return this.f3218tt.f3210eq[this.cur];
        }
        return (char) 0;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.cur != -1;
    }

    /* JADX INFO: renamed from: up */
    private int m2666up() {
        new Item();
        if (this.f3217ns.size() == 0) {
            return -1;
        }
        if (this.cur != 0 && this.f3218tt.f3214sc[this.cur] == 0) {
            return this.f3218tt.f3213lo[this.cur];
        }
        boolean z = true;
        char c = 0;
        while (z) {
            Item item = (Item) this.f3217ns.pop();
            item.child = (char) (item.child + 1);
            char c2 = item.child;
            if (c2 != 1) {
                if (c2 == 2) {
                    c = this.f3218tt.f3211hi[item.parent];
                    this.f3217ns.push(new Item(item));
                    if (this.f3216ks.length() > 0) {
                        StringBuffer stringBuffer = this.f3216ks;
                        stringBuffer.setLength(stringBuffer.length() - 1);
                    }
                } else {
                    if (this.f3217ns.size() == 0) {
                        return -1;
                    }
                    z = true;
                }
            } else if (this.f3218tt.f3214sc[item.parent] != 0) {
                c = this.f3218tt.f3210eq[item.parent];
                this.f3217ns.push(new Item(item));
                this.f3216ks.append(this.f3218tt.f3214sc[item.parent]);
            } else {
                item.child = (char) (item.child + 1);
                this.f3217ns.push(new Item(item));
                c = this.f3218tt.f3211hi[item.parent];
            }
            z = false;
        }
        return c;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int run() {
        if (this.cur == -1) {
            return -1;
        }
        boolean z = false;
        while (true) {
            if (this.cur != 0) {
                if (this.f3218tt.f3214sc[this.cur] != 65535) {
                    this.f3217ns.push(new Item((char) this.cur, (char) 0));
                    if (this.f3218tt.f3214sc[this.cur] != 0) {
                        this.cur = this.f3218tt.f3213lo[this.cur];
                    }
                }
                z = true;
            }
            if (!z) {
                int iM2666up = m2666up();
                this.cur = iM2666up;
                if (iM2666up == -1) {
                    return -1;
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer(this.f3216ks.toString());
                if (this.f3218tt.f3214sc[this.cur] == 65535) {
                    for (int i = this.f3218tt.f3213lo[this.cur]; this.f3218tt.f3212kv.get(i) != 0; i++) {
                        stringBuffer.append(this.f3218tt.f3212kv.get(i));
                    }
                }
                this.curkey = stringBuffer.toString();
                return 0;
            }
        }
    }
}

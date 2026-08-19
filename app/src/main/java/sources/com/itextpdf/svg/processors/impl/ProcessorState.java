package com.itextpdf.svg.processors.impl;

import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
public class ProcessorState {
    private Stack<ISvgNodeRenderer> stack = new Stack<>();

    public int size() {
        return this.stack.size();
    }

    public void push(ISvgNodeRenderer iSvgNodeRenderer) {
        this.stack.push(iSvgNodeRenderer);
    }

    public ISvgNodeRenderer pop() {
        return this.stack.pop();
    }

    public ISvgNodeRenderer top() {
        return this.stack.peek();
    }

    public boolean empty() {
        return this.stack.size() == 0;
    }
}

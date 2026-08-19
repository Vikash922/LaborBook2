package com.itextpdf.svg.processors;

import com.itextpdf.styledxmlparser.node.INode;
import com.itextpdf.svg.exceptions.SvgProcessingException;

/* JADX INFO: loaded from: classes6.dex */
public interface ISvgProcessor {
    ISvgProcessorResult process(INode iNode, ISvgConverterProperties iSvgConverterProperties) throws SvgProcessingException;
}

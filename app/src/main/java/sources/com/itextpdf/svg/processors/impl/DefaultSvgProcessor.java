package com.itextpdf.svg.processors.impl;

import com.itextpdf.styledxmlparser.css.ICssResolver;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.parser.Tag;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import com.itextpdf.styledxmlparser.node.ITextNode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.node.JsoupElementNode;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.css.impl.SvgStyleResolver;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.processors.ISvgConverterProperties;
import com.itextpdf.svg.processors.ISvgProcessor;
import com.itextpdf.svg.processors.ISvgProcessorResult;
import com.itextpdf.svg.processors.impl.font.SvgFontProcessor;
import com.itextpdf.svg.renderers.IBranchSvgNodeRenderer;
import com.itextpdf.svg.renderers.INoDrawSvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererFactory;
import com.itextpdf.svg.renderers.factories.ISvgNodeRendererFactory;
import com.itextpdf.svg.renderers.impl.DefsSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer;
import com.itextpdf.svg.renderers.impl.LinearGradientSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.StopSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.TextSvgBranchRenderer;
import com.itextpdf.svg.utils.SvgTextUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultSvgProcessor implements ISvgProcessor {
    private SvgProcessorContext context;
    private ICssResolver cssResolver;
    private Map<String, ISvgNodeRenderer> namedObjects;
    private ProcessorState processorState;
    private ISvgNodeRendererFactory rendererFactory;

    @Override // com.itextpdf.svg.processors.ISvgProcessor
    public ISvgProcessorResult process(INode iNode, ISvgConverterProperties iSvgConverterProperties) throws SvgProcessingException {
        if (iNode == null) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.I_NODE_ROOT_IS_NULL);
        }
        if (iSvgConverterProperties == null) {
            iSvgConverterProperties = new SvgConverterProperties();
        }
        performSetup(iNode, iSvgConverterProperties);
        IElementNode iElementNodeFindFirstElement = findFirstElement(iNode, SvgConstants.Tags.SVG);
        if (iElementNodeFindFirstElement != null) {
            executeDepthFirstTraversal(iElementNodeFindFirstElement);
            return new SvgProcessorResult(this.namedObjects, createResultAndClean(), this.context);
        }
        throw new SvgProcessingException(SvgExceptionMessageConstant.NO_ROOT);
    }

    void performSetup(INode iNode, ISvgConverterProperties iSvgConverterProperties) {
        this.processorState = new ProcessorState();
        if (iSvgConverterProperties.getRendererFactory() != null) {
            this.rendererFactory = iSvgConverterProperties.getRendererFactory();
        } else {
            this.rendererFactory = new DefaultSvgNodeRendererFactory();
        }
        this.context = new SvgProcessorContext(iSvgConverterProperties);
        this.cssResolver = new SvgStyleResolver(iNode, this.context);
        new SvgFontProcessor(this.context).addFontFaceFonts(this.cssResolver);
        this.namedObjects = new HashMap();
    }

    void executeDepthFirstTraversal(INode iNode) {
        ISvgNodeRenderer iSvgNodeRendererCreateSvgNodeRendererForTag;
        if (iNode instanceof IElementNode) {
            IElementNode iElementNode = (IElementNode) iNode;
            if (this.rendererFactory.isTagIgnored(iElementNode) || (iSvgNodeRendererCreateSvgNodeRendererForTag = this.rendererFactory.createSvgNodeRendererForTag(iElementNode, null)) == null) {
                return;
            }
            Map<String, String> mapResolveStyles = this.cssResolver.resolveStyles(iNode, this.context.getCssContext());
            iElementNode.setStyles(mapResolveStyles);
            iSvgNodeRendererCreateSvgNodeRendererForTag.setAttributesAndStyles(mapResolveStyles);
            this.processorState.push(iSvgNodeRendererCreateSvgNodeRendererForTag);
            Iterator<INode> it = iNode.childNodes().iterator();
            while (it.hasNext()) {
                visit(it.next());
            }
        }
    }

    private ISvgNodeRenderer createResultAndClean() {
        return this.processorState.pop();
    }

    private void visit(INode iNode) {
        if (iNode instanceof IElementNode) {
            IElementNode iElementNode = (IElementNode) iNode;
            if (this.rendererFactory.isTagIgnored(iElementNode)) {
                return;
            }
            ISvgNodeRenderer pVar = this.processorState.top();
            ISvgNodeRenderer iSvgNodeRendererCreateSvgNodeRendererForTag = this.rendererFactory.createSvgNodeRendererForTag(iElementNode, pVar);
            if (iSvgNodeRendererCreateSvgNodeRendererForTag != null) {
                Map<String, String> mapResolveStyles = this.cssResolver.resolveStyles(iNode, this.context.getCssContext());
                iElementNode.setStyles(mapResolveStyles);
                iSvgNodeRendererCreateSvgNodeRendererForTag.setAttributesAndStyles(mapResolveStyles);
                String attribute = iSvgNodeRendererCreateSvgNodeRendererForTag.getAttribute("id");
                if (attribute != null) {
                    this.namedObjects.put(attribute, iSvgNodeRendererCreateSvgNodeRendererForTag);
                }
                if (iSvgNodeRendererCreateSvgNodeRendererForTag instanceof StopSvgNodeRenderer) {
                    if (pVar instanceof LinearGradientSvgNodeRenderer) {
                        ((LinearGradientSvgNodeRenderer) pVar).addChild(iSvgNodeRendererCreateSvgNodeRendererForTag);
                    }
                } else if (!(iSvgNodeRendererCreateSvgNodeRendererForTag instanceof INoDrawSvgNodeRenderer) && !(pVar instanceof DefsSvgNodeRenderer)) {
                    if (pVar instanceof IBranchSvgNodeRenderer) {
                        ((IBranchSvgNodeRenderer) pVar).addChild(iSvgNodeRendererCreateSvgNodeRendererForTag);
                    } else if ((pVar instanceof TextSvgBranchRenderer) && (iSvgNodeRendererCreateSvgNodeRendererForTag instanceof ISvgTextNodeRenderer)) {
                        ((TextSvgBranchRenderer) pVar).addChild((ISvgTextNodeRenderer) iSvgNodeRendererCreateSvgNodeRendererForTag);
                    }
                }
                this.processorState.push(iSvgNodeRendererCreateSvgNodeRendererForTag);
            }
            Iterator<INode> it = iElementNode.childNodes().iterator();
            while (it.hasNext()) {
                visit(it.next());
            }
            if (iSvgNodeRendererCreateSvgNodeRendererForTag != null) {
                this.processorState.pop();
                return;
            }
            return;
        }
        if (processAsText(iNode)) {
            processText((ITextNode) iNode);
        }
    }

    private boolean processAsText(INode iNode) {
        return iNode instanceof ITextNode;
    }

    private void processText(ITextNode iTextNode) {
        ISvgNodeRenderer pVar = this.processorState.top();
        if (pVar instanceof TextSvgBranchRenderer) {
            String strWholeText = iTextNode.wholeText();
            if ("".equals(strWholeText) || SvgTextUtil.isOnlyWhiteSpace(strWholeText)) {
                return;
            }
            ISvgTextNodeRenderer iSvgTextNodeRenderer = (ISvgTextNodeRenderer) this.rendererFactory.createSvgNodeRendererForTag(new JsoupElementNode(new Element(Tag.valueOf(SvgConstants.Tags.TEXT_LEAF), "")), pVar);
            iSvgTextNodeRenderer.setParent(pVar);
            iSvgTextNodeRenderer.setAttribute(SvgConstants.Attributes.TEXT_CONTENT, strWholeText);
            ((TextSvgBranchRenderer) pVar).addChild(iSvgTextNodeRenderer);
        }
    }

    IElementNode findFirstElement(INode iNode, String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(iNode);
        while (!linkedList.isEmpty()) {
            INode iNode2 = (INode) linkedList.getFirst();
            linkedList.removeFirst();
            if (iNode2 == null) {
                return null;
            }
            if (iNode2 instanceof IElementNode) {
                IElementNode iElementNode = (IElementNode) iNode2;
                if (iElementNode.name() != null && iElementNode.name().equals(str)) {
                    return iElementNode;
                }
            }
            for (INode iNode3 : iNode2.childNodes()) {
                if (iNode3 instanceof IElementNode) {
                    linkedList.add(iNode3);
                }
            }
        }
        return null;
    }
}

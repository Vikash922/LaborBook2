package com.itextpdf.svg.renderers.factories;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.renderers.INoDrawSvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper;
import com.itextpdf.svg.renderers.impl.DefsSvgNodeRenderer;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultSvgNodeRendererFactory implements ISvgNodeRendererFactory {
    private final Collection<String> ignoredTags;
    private final Map<String, DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator> rendererMap;

    public DefaultSvgNodeRendererFactory() {
        HashMap map = new HashMap();
        this.rendererMap = map;
        HashSet hashSet = new HashSet();
        this.ignoredTags = hashSet;
        DefaultSvgNodeRendererMapper defaultSvgNodeRendererMapper = new DefaultSvgNodeRendererMapper();
        map.putAll(defaultSvgNodeRendererMapper.getMapping());
        hashSet.addAll(defaultSvgNodeRendererMapper.getIgnoredTags());
    }

    @Override // com.itextpdf.svg.renderers.factories.ISvgNodeRendererFactory
    public ISvgNodeRenderer createSvgNodeRendererForTag(IElementNode iElementNode, ISvgNodeRenderer iSvgNodeRenderer) {
        if (iElementNode == null) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TAG_PARAMETER_NULL);
        }
        DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator iSvgNodeRendererCreator = this.rendererMap.get(iElementNode.name());
        if (iSvgNodeRendererCreator == null) {
            LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format(SvgLogMessageConstant.UNMAPPED_TAG, iElementNode.name()));
            return null;
        }
        ISvgNodeRenderer iSvgNodeRendererCreate = iSvgNodeRendererCreator.create();
        if (iSvgNodeRenderer != null && !(iSvgNodeRendererCreate instanceof INoDrawSvgNodeRenderer) && !(iSvgNodeRenderer instanceof DefsSvgNodeRenderer)) {
            iSvgNodeRendererCreate.setParent(iSvgNodeRenderer);
        }
        return iSvgNodeRendererCreate;
    }

    @Override // com.itextpdf.svg.renderers.factories.ISvgNodeRendererFactory
    public boolean isTagIgnored(IElementNode iElementNode) {
        return this.ignoredTags.contains(iElementNode.name());
    }
}

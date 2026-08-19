package com.itextpdf.styledxmlparser.css;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.ShorthandResolverFactory;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CssStyleSheet {
    private List<CssStatement> statements = new ArrayList();

    public void addStatement(CssStatement cssStatement) {
        this.statements.add(cssStatement);
    }

    public void appendCssStyleSheet(CssStyleSheet cssStyleSheet) {
        this.statements.addAll(cssStyleSheet.statements);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (CssStatement cssStatement : this.statements) {
            if (sb.length() > 0) {
                sb.append(StringUtils.f4768LF);
            }
            sb.append(cssStatement.toString());
        }
        return sb.toString();
    }

    public List<CssStatement> getStatements() {
        return Collections.unmodifiableList(this.statements);
    }

    public List<CssDeclaration> getCssDeclarations(INode iNode, MediaDeviceDescription mediaDeviceDescription) {
        List<CssRuleSet> cssRuleSets = getCssRuleSets(iNode, mediaDeviceDescription);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<CssRuleSet> it = cssRuleSets.iterator();
        while (it.hasNext()) {
            populateDeclarationsMap(it.next().getNormalDeclarations(), linkedHashMap);
        }
        Iterator<CssRuleSet> it2 = cssRuleSets.iterator();
        while (it2.hasNext()) {
            populateDeclarationsMap(it2.next().getImportantDeclarations(), linkedHashMap);
        }
        return new ArrayList(linkedHashMap.values());
    }

    public static Map<String, String> extractStylesFromRuleSets(List<CssRuleSet> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<CssRuleSet> it = list.iterator();
        while (it.hasNext()) {
            populateDeclarationsMap(it.next().getNormalDeclarations(), linkedHashMap);
        }
        Iterator<CssRuleSet> it2 = list.iterator();
        while (it2.hasNext()) {
            populateDeclarationsMap(it2.next().getImportantDeclarations(), linkedHashMap);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry.getKey(), ((CssDeclaration) entry.getValue()).getExpression());
        }
        return linkedHashMap2;
    }

    private static void populateDeclarationsMap(List<CssDeclaration> list, Map<String, CssDeclaration> map) {
        for (CssDeclaration cssDeclaration : list) {
            IShorthandResolver shorthandResolver = ShorthandResolverFactory.getShorthandResolver(cssDeclaration.getProperty());
            if (shorthandResolver == null) {
                putDeclarationInMapIfValid(map, cssDeclaration);
            } else {
                populateDeclarationsMap(shorthandResolver.resolveShorthand(cssDeclaration.getExpression()), map);
            }
        }
    }

    public List<CssRuleSet> getCssRuleSets(INode iNode, MediaDeviceDescription mediaDeviceDescription) {
        ArrayList arrayList = new ArrayList();
        Iterator<CssStatement> it = this.statements.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getCssRuleSets(iNode, mediaDeviceDescription));
        }
        Collections.sort(arrayList, new com.itextpdf.styledxmlparser.CssRuleSetComparator());
        return arrayList;
    }

    private static void putDeclarationInMapIfValid(Map<String, CssDeclaration> map, CssDeclaration cssDeclaration) {
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
            map.put(cssDeclaration.getProperty(), cssDeclaration);
        } else {
            LoggerFactory.getLogger((Class<?>) ICssResolver.class).warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, cssDeclaration));
        }
    }
}

package com.itextpdf.styledxmlparser.jsoup.safety;

import androidx.webkit.ProxyConfig;
import com.facebook.AuthenticationTokenClaims;
import com.itextpdf.styledxmlparser.CommonAttributeConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.Normalizer;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attribute;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attributes;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.i18n.ErrorBundle;

/* JADX INFO: loaded from: classes6.dex */
public class Safelist {
    private Map<TagName, Set<AttributeKey>> attributes;
    private Map<TagName, Map<AttributeKey, AttributeValue>> enforcedAttributes;
    private boolean preserveRelativeLinks;
    private Map<TagName, Map<AttributeKey, Set<Protocol>>> protocols;
    private Set<TagName> tagNames;

    public static Safelist none() {
        return new Safelist();
    }

    public static Safelist simpleText() {
        return new Safelist().addTags(SvgConstants.Attributes.PATH_DATA_REL_BEARING, "em", "i", "strong", "u");
    }

    public static Safelist basic() {
        return new Safelist().addTags("a", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "blockquote", "br", "cite", "code", "dd", "dl", "dt", "em", "i", "li", "ol", "p", "pre", "q", CommonCssConstants.SMALL, "span", "strike", "strong", AuthenticationTokenClaims.JSON_KEY_SUB, "sup", "u", "ul").addAttributes("a", "href").addAttributes("blockquote", "cite").addAttributes("q", "cite").addProtocols("a", "href", "ftp", ProxyConfig.MATCH_HTTP, "https", "mailto").addProtocols("blockquote", "cite", ProxyConfig.MATCH_HTTP, "https").addProtocols("cite", "cite", ProxyConfig.MATCH_HTTP, "https").addEnforcedAttribute("a", CommonAttributeConstants.REL, "nofollow");
    }

    public static Safelist basicWithImages() {
        return basic().addTags("img").addAttributes("img", "align", "alt", "height", "src", "title", "width").addProtocols("img", "src", ProxyConfig.MATCH_HTTP, "https");
    }

    public static Safelist relaxed() {
        return new Safelist().addTags("a", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "blockquote", "br", "caption", "cite", "code", "col", "colgroup", "dd", "div", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", "i", "img", "li", "ol", "p", "pre", "q", CommonCssConstants.SMALL, "span", "strike", "strong", AuthenticationTokenClaims.JSON_KEY_SUB, "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u", "ul").addAttributes("a", "href", "title").addAttributes("blockquote", "cite").addAttributes("col", "span", "width").addAttributes("colgroup", "span", "width").addAttributes("img", "align", "alt", "height", "src", "title", "width").addAttributes("ol", "start", "type").addAttributes("q", "cite").addAttributes("table", ErrorBundle.SUMMARY_ENTRY, "width").addAttributes("td", "abbr", "axis", "colspan", "rowspan", "width").addAttributes("th", "abbr", "axis", "colspan", "rowspan", "scope", "width").addAttributes("ul", "type").addProtocols("a", "href", "ftp", ProxyConfig.MATCH_HTTP, "https", "mailto").addProtocols("blockquote", "cite", ProxyConfig.MATCH_HTTP, "https").addProtocols("cite", "cite", ProxyConfig.MATCH_HTTP, "https").addProtocols("img", "src", ProxyConfig.MATCH_HTTP, "https").addProtocols("q", "cite", ProxyConfig.MATCH_HTTP, "https");
    }

    public Safelist() {
        this.tagNames = new HashSet();
        this.attributes = new HashMap();
        this.enforcedAttributes = new HashMap();
        this.protocols = new HashMap();
        this.preserveRelativeLinks = false;
    }

    public Safelist(Safelist safelist) {
        this();
        this.tagNames.addAll(safelist.tagNames);
        this.attributes.putAll(safelist.attributes);
        this.enforcedAttributes.putAll(safelist.enforcedAttributes);
        this.protocols.putAll(safelist.protocols);
        this.preserveRelativeLinks = safelist.preserveRelativeLinks;
    }

    public Safelist addTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            this.tagNames.add(TagName.valueOf(str));
        }
        return this;
    }

    public Safelist removeTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            TagName tagNameValueOf = TagName.valueOf(str);
            if (this.tagNames.remove(tagNameValueOf)) {
                this.attributes.remove(tagNameValueOf);
                this.enforcedAttributes.remove(tagNameValueOf);
                this.protocols.remove(tagNameValueOf);
            }
        }
        return this;
    }

    public Safelist addAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        Validate.isTrue(strArr.length > 0, "No attribute names supplied.");
        TagName tagNameValueOf = TagName.valueOf(str);
        this.tagNames.add(tagNameValueOf);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.valueOf(str2));
        }
        if (this.attributes.containsKey(tagNameValueOf)) {
            this.attributes.get(tagNameValueOf).addAll(hashSet);
        } else {
            this.attributes.put(tagNameValueOf, hashSet);
        }
        return this;
    }

    public Safelist removeAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        Validate.isTrue(strArr.length > 0, "No attribute names supplied.");
        TagName tagNameValueOf = TagName.valueOf(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.valueOf(str2));
        }
        if (this.tagNames.contains(tagNameValueOf) && this.attributes.containsKey(tagNameValueOf)) {
            Set<AttributeKey> set = this.attributes.get(tagNameValueOf);
            set.removeAll(hashSet);
            if (set.isEmpty()) {
                this.attributes.remove(tagNameValueOf);
            }
        }
        if (str.equals(":all")) {
            for (TagName tagName : this.attributes.keySet()) {
                Set<AttributeKey> set2 = this.attributes.get(tagName);
                set2.removeAll(hashSet);
                if (set2.isEmpty()) {
                    this.attributes.remove(tagName);
                }
            }
        }
        return this;
    }

    public Safelist addEnforcedAttribute(String str, String str2, String str3) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notEmpty(str3);
        TagName tagNameValueOf = TagName.valueOf(str);
        this.tagNames.add(tagNameValueOf);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
        AttributeValue attributeValueValueOf = AttributeValue.valueOf(str3);
        if (this.enforcedAttributes.containsKey(tagNameValueOf)) {
            this.enforcedAttributes.get(tagNameValueOf).put(attributeKeyValueOf, attributeValueValueOf);
        } else {
            HashMap map = new HashMap();
            map.put(attributeKeyValueOf, attributeValueValueOf);
            this.enforcedAttributes.put(tagNameValueOf, map);
        }
        return this;
    }

    public Safelist removeEnforcedAttribute(String str, String str2) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        TagName tagNameValueOf = TagName.valueOf(str);
        if (this.tagNames.contains(tagNameValueOf) && this.enforcedAttributes.containsKey(tagNameValueOf)) {
            AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
            Map<AttributeKey, AttributeValue> map = this.enforcedAttributes.get(tagNameValueOf);
            map.remove(attributeKeyValueOf);
            if (map.isEmpty()) {
                this.enforcedAttributes.remove(tagNameValueOf);
            }
        }
        return this;
    }

    public Safelist preserveRelativeLinks(boolean z) {
        this.preserveRelativeLinks = z;
        return this;
    }

    public Safelist addProtocols(String str, String str2, String... strArr) {
        Map<AttributeKey, Set<Protocol>> map;
        Set<Protocol> set;
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName tagNameValueOf = TagName.valueOf(str);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
        if (this.protocols.containsKey(tagNameValueOf)) {
            map = this.protocols.get(tagNameValueOf);
        } else {
            HashMap map2 = new HashMap();
            this.protocols.put(tagNameValueOf, map2);
            map = map2;
        }
        if (map.containsKey(attributeKeyValueOf)) {
            set = map.get(attributeKeyValueOf);
        } else {
            HashSet hashSet = new HashSet();
            map.put(attributeKeyValueOf, hashSet);
            set = hashSet;
        }
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.add(Protocol.valueOf(str3));
        }
        return this;
    }

    public Safelist removeProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName tagNameValueOf = TagName.valueOf(str);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(str2);
        Validate.isTrue(this.protocols.containsKey(tagNameValueOf), "Cannot remove a protocol that is not set.");
        Map<AttributeKey, Set<Protocol>> map = this.protocols.get(tagNameValueOf);
        Validate.isTrue(map.containsKey(attributeKeyValueOf), "Cannot remove a protocol that is not set.");
        Set<Protocol> set = map.get(attributeKeyValueOf);
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.remove(Protocol.valueOf(str3));
        }
        if (set.isEmpty()) {
            map.remove(attributeKeyValueOf);
            if (map.isEmpty()) {
                this.protocols.remove(tagNameValueOf);
            }
        }
        return this;
    }

    protected boolean isSafeTag(String str) {
        return this.tagNames.contains(TagName.valueOf(str));
    }

    protected boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        TagName tagNameValueOf = TagName.valueOf(str);
        AttributeKey attributeKeyValueOf = AttributeKey.valueOf(attribute.getKey());
        Set<AttributeKey> set = this.attributes.get(tagNameValueOf);
        if (set != null && set.contains(attributeKeyValueOf)) {
            if (!this.protocols.containsKey(tagNameValueOf)) {
                return true;
            }
            Map<AttributeKey, Set<Protocol>> map = this.protocols.get(tagNameValueOf);
            return !map.containsKey(attributeKeyValueOf) || testValidProtocol(element, attribute, map.get(attributeKeyValueOf));
        }
        if (this.enforcedAttributes.get(tagNameValueOf) != null) {
            Attributes enforcedAttributes = getEnforcedAttributes(str);
            String key = attribute.getKey();
            if (enforcedAttributes.hasKeyIgnoreCase(key)) {
                return enforcedAttributes.getIgnoreCase(key).equals(attribute.getValue());
            }
        }
        return !str.equals(":all") && isSafeAttribute(":all", element, attribute);
    }

    private boolean testValidProtocol(Element element, Attribute attribute, Set<Protocol> set) {
        String strAbsUrl = element.absUrl(attribute.getKey());
        if (strAbsUrl.length() == 0) {
            strAbsUrl = attribute.getValue();
        }
        if (!this.preserveRelativeLinks) {
            attribute.setValue(strAbsUrl);
        }
        Iterator<Protocol> it = set.iterator();
        while (it.hasNext()) {
            String string = it.next().toString();
            if (string.equals("#")) {
                if (isValidAnchor(strAbsUrl)) {
                    return true;
                }
            } else {
                if (Normalizer.lowerCase(strAbsUrl).startsWith(string + ":")) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isValidAnchor(String str) {
        return str.startsWith("#") && !str.matches(".*\\s.*");
    }

    Attributes getEnforcedAttributes(String str) {
        Attributes attributes = new Attributes();
        TagName tagNameValueOf = TagName.valueOf(str);
        if (this.enforcedAttributes.containsKey(tagNameValueOf)) {
            for (Map.Entry<AttributeKey, AttributeValue> entry : this.enforcedAttributes.get(tagNameValueOf).entrySet()) {
                attributes.put(entry.getKey().toString(), entry.getValue().toString());
            }
        }
        return attributes;
    }

    static class TagName extends TypedValue {
        TagName(String str) {
            super(str);
        }

        static TagName valueOf(String str) {
            return new TagName(str);
        }
    }

    static class AttributeKey extends TypedValue {
        AttributeKey(String str) {
            super(str);
        }

        static AttributeKey valueOf(String str) {
            return new AttributeKey(str);
        }
    }

    static class AttributeValue extends TypedValue {
        AttributeValue(String str) {
            super(str);
        }

        static AttributeValue valueOf(String str) {
            return new AttributeValue(str);
        }
    }

    static class Protocol extends TypedValue {
        Protocol(String str) {
            super(str);
        }

        static Protocol valueOf(String str) {
            return new Protocol(str);
        }
    }

    static abstract class TypedValue {
        private String value;

        TypedValue(String str) {
            Validate.notNull(str);
            this.value = str;
        }

        public int hashCode() {
            String str = this.value;
            return 31 + (str == null ? 0 : str.hashCode());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            TypedValue typedValue = (TypedValue) obj;
            String str = this.value;
            if (str == null) {
                return typedValue.value == null;
            }
            return str.equals(typedValue.value);
        }

        public String toString() {
            return this.value;
        }
    }
}

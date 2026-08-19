package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CssEnumValidator implements ICssDataTypeValidator {
    private Set<String> allowedValues;

    public CssEnumValidator(String... strArr) {
        this.allowedValues = new HashSet(Arrays.asList(strArr));
    }

    public CssEnumValidator(Collection<String> collection) {
        this(collection, null);
    }

    public CssEnumValidator(Collection<String> collection, Collection<String> collection2) {
        HashSet hashSet = new HashSet();
        this.allowedValues = hashSet;
        hashSet.addAll(collection);
        if (collection2 != null) {
            for (String str : collection2) {
                Iterator<String> it = collection.iterator();
                while (it.hasNext()) {
                    this.allowedValues.add(str + StringUtils.SPACE + it.next());
                }
            }
        }
    }

    public void addAllowedValues(Collection<String> collection) {
        this.allowedValues.addAll(collection);
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        return this.allowedValues.contains(str);
    }
}

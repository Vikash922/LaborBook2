package com.itextpdf.styledxmlparser.jsoup.select;

import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
abstract class CombiningEvaluator extends Evaluator {
    final ArrayList<Evaluator> evaluators;
    int num;

    CombiningEvaluator() {
        this.num = 0;
        this.evaluators = new ArrayList<>();
    }

    CombiningEvaluator(Collection<Evaluator> collection) {
        this();
        this.evaluators.addAll(collection);
        updateNumEvaluators();
    }

    Evaluator rightMostEvaluator() {
        int i = this.num;
        if (i > 0) {
            return this.evaluators.get(i - 1);
        }
        return null;
    }

    void replaceRightMostEvaluator(Evaluator evaluator) {
        this.evaluators.set(this.num - 1, evaluator);
    }

    void updateNumEvaluators() {
        this.num = this.evaluators.size();
    }

    static final class And extends CombiningEvaluator {
        And(Collection<Evaluator> collection) {
            super(collection);
        }

        And(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = this.num - 1; i >= 0; i--) {
                if (!this.evaluators.get(i).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return StringUtil.join(this.evaluators, "");
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.jsoup.select.CombiningEvaluator$Or */
    static final class C3539Or extends CombiningEvaluator {
        C3539Or(Collection<Evaluator> collection) {
            if (this.num > 1) {
                this.evaluators.add(new And(collection));
            } else {
                this.evaluators.addAll(collection);
            }
            updateNumEvaluators();
        }

        C3539Or(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }

        C3539Or() {
        }

        public void add(Evaluator evaluator) {
            this.evaluators.add(evaluator);
            updateNumEvaluators();
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.num; i++) {
                if (this.evaluators.get(i).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return StringUtil.join(this.evaluators, ", ");
        }
    }
}

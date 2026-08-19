package com.itextpdf.styledxmlparser.jsoup.select;

import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.Normalizer;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.parser.TokenQueue;
import com.itextpdf.styledxmlparser.jsoup.select.CombiningEvaluator;
import com.itextpdf.styledxmlparser.jsoup.select.Evaluator;
import com.itextpdf.styledxmlparser.jsoup.select.Selector;
import com.itextpdf.styledxmlparser.jsoup.select.StructuralEvaluator;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public class QueryParser {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final List<Evaluator> evals = new ArrayList();
    private final String query;

    /* JADX INFO: renamed from: tq */
    private final TokenQueue f3320tq;
    private static final String[] combinators = {",", ">", Marker.ANY_NON_NULL_MARKER, "~", StringUtils.SPACE};
    private static final String[] AttributeEvals = {"=", "!=", "^=", "$=", "*=", "~="};
    private static final Pattern NTH_AB = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    private static final Pattern NTH_B = Pattern.compile("([+-])?(\\d+)");

    private QueryParser(String str) {
        Validate.notEmpty(str);
        String strTrim = str.trim();
        this.query = strTrim;
        this.f3320tq = new TokenQueue(strTrim);
    }

    public static Evaluator parse(String str) {
        try {
            return new QueryParser(str).parse();
        } catch (IllegalArgumentException e) {
            throw new Selector.SelectorParseException(e.getMessage(), new Object[0]);
        }
    }

    Evaluator parse() {
        this.f3320tq.consumeWhitespace();
        if (this.f3320tq.matchesAny(combinators)) {
            this.evals.add(new StructuralEvaluator.Root());
            combinator(this.f3320tq.consume());
        } else {
            findElements();
        }
        while (!this.f3320tq.isEmpty()) {
            boolean zConsumeWhitespace = this.f3320tq.consumeWhitespace();
            if (this.f3320tq.matchesAny(combinators)) {
                combinator(this.f3320tq.consume());
            } else if (zConsumeWhitespace) {
                combinator(' ');
            } else {
                findElements();
            }
        }
        if (this.evals.size() == 1) {
            return this.evals.get(0);
        }
        return new CombiningEvaluator.And(this.evals);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void combinator(char r11) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.jsoup.select.QueryParser.combinator(char):void");
    }

    private String consumeSubQuery() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        while (!this.f3320tq.isEmpty()) {
            if (this.f3320tq.matches("(")) {
                sbBorrowBuilder.append("(").append(this.f3320tq.chompBalanced('(', ')')).append(")");
            } else if (this.f3320tq.matches("[")) {
                sbBorrowBuilder.append("[").append(this.f3320tq.chompBalanced('[', ']')).append("]");
            } else {
                if (this.f3320tq.matchesAny(combinators)) {
                    break;
                }
                sbBorrowBuilder.append(this.f3320tq.consume());
            }
        }
        return StringUtil.releaseBuilder(sbBorrowBuilder);
    }

    private void findElements() {
        if (this.f3320tq.matchChomp("#")) {
            byId();
            return;
        }
        if (this.f3320tq.matchChomp(".")) {
            byClass();
            return;
        }
        if (this.f3320tq.matchesWord() || this.f3320tq.matches("*|")) {
            byTag();
            return;
        }
        if (this.f3320tq.matches("[")) {
            byAttribute();
            return;
        }
        if (this.f3320tq.matchChomp("*")) {
            allElements();
            return;
        }
        if (this.f3320tq.matchChomp(":lt(")) {
            indexLessThan();
            return;
        }
        if (this.f3320tq.matchChomp(":gt(")) {
            indexGreaterThan();
            return;
        }
        if (this.f3320tq.matchChomp(":eq(")) {
            indexEquals();
            return;
        }
        if (this.f3320tq.matches(":has(")) {
            has();
            return;
        }
        if (this.f3320tq.matches(":contains(")) {
            contains(false);
            return;
        }
        if (this.f3320tq.matches(":containsOwn(")) {
            contains(true);
            return;
        }
        if (this.f3320tq.matches(":containsData(")) {
            containsData();
            return;
        }
        if (this.f3320tq.matches(":matches(")) {
            matches(false);
            return;
        }
        if (this.f3320tq.matches(":matchesOwn(")) {
            matches(true);
            return;
        }
        if (this.f3320tq.matches(":not(")) {
            not();
            return;
        }
        if (this.f3320tq.matchChomp(":nth-child(")) {
            cssNthChild(false, false);
            return;
        }
        if (this.f3320tq.matchChomp(":nth-last-child(")) {
            cssNthChild(true, false);
            return;
        }
        if (this.f3320tq.matchChomp(":nth-of-type(")) {
            cssNthChild(false, true);
            return;
        }
        if (this.f3320tq.matchChomp(":nth-last-of-type(")) {
            cssNthChild(true, true);
            return;
        }
        if (this.f3320tq.matchChomp(":first-child")) {
            this.evals.add(new Evaluator.IsFirstChild());
            return;
        }
        if (this.f3320tq.matchChomp(":last-child")) {
            this.evals.add(new Evaluator.IsLastChild());
            return;
        }
        if (this.f3320tq.matchChomp(":first-of-type")) {
            this.evals.add(new Evaluator.IsFirstOfType());
            return;
        }
        if (this.f3320tq.matchChomp(":last-of-type")) {
            this.evals.add(new Evaluator.IsLastOfType());
            return;
        }
        if (this.f3320tq.matchChomp(":only-child")) {
            this.evals.add(new Evaluator.IsOnlyChild());
            return;
        }
        if (this.f3320tq.matchChomp(":only-of-type")) {
            this.evals.add(new Evaluator.IsOnlyOfType());
            return;
        }
        if (this.f3320tq.matchChomp(":empty")) {
            this.evals.add(new Evaluator.IsEmpty());
        } else if (this.f3320tq.matchChomp(":root")) {
            this.evals.add(new Evaluator.IsRoot());
        } else {
            if (this.f3320tq.matchChomp(":matchText")) {
                this.evals.add(new Evaluator.MatchText());
                return;
            }
            throw new Selector.SelectorParseException("Could not parse query '{0}': unexpected token at '{1}'", this.query, this.f3320tq.remainder());
        }
    }

    private void byId() {
        String strConsumeCssIdentifier = this.f3320tq.consumeCssIdentifier();
        Validate.notEmpty(strConsumeCssIdentifier);
        this.evals.add(new Evaluator.C3540Id(strConsumeCssIdentifier));
    }

    private void byClass() {
        String strConsumeCssIdentifier = this.f3320tq.consumeCssIdentifier();
        Validate.notEmpty(strConsumeCssIdentifier);
        this.evals.add(new Evaluator.Class(strConsumeCssIdentifier.trim()));
    }

    private void byTag() {
        String strNormalize = Normalizer.normalize(this.f3320tq.consumeElementSelector());
        Validate.notEmpty(strNormalize);
        if (strNormalize.startsWith("*|")) {
            this.evals.add(new CombiningEvaluator.C3539Or(new Evaluator.Tag(strNormalize), new Evaluator.TagEndsWith(strNormalize.replace("*|", ":"))));
            return;
        }
        if (strNormalize.contains("|")) {
            strNormalize = strNormalize.replace("|", ":");
        }
        this.evals.add(new Evaluator.Tag(strNormalize));
    }

    private void byAttribute() {
        TokenQueue tokenQueue = new TokenQueue(this.f3320tq.chompBalanced('[', ']'));
        String strConsumeToAny = tokenQueue.consumeToAny(AttributeEvals);
        Validate.notEmpty(strConsumeToAny);
        tokenQueue.consumeWhitespace();
        if (tokenQueue.isEmpty()) {
            if (strConsumeToAny.startsWith("^")) {
                this.evals.add(new Evaluator.AttributeStarting(strConsumeToAny.substring(1)));
                return;
            } else {
                this.evals.add(new Evaluator.Attribute(strConsumeToAny));
                return;
            }
        }
        if (tokenQueue.matchChomp("=")) {
            this.evals.add(new Evaluator.AttributeWithValue(strConsumeToAny, tokenQueue.remainder()));
            return;
        }
        if (tokenQueue.matchChomp("!=")) {
            this.evals.add(new Evaluator.AttributeWithValueNot(strConsumeToAny, tokenQueue.remainder()));
            return;
        }
        if (tokenQueue.matchChomp("^=")) {
            this.evals.add(new Evaluator.AttributeWithValueStarting(strConsumeToAny, tokenQueue.remainder()));
            return;
        }
        if (tokenQueue.matchChomp("$=")) {
            this.evals.add(new Evaluator.AttributeWithValueEnding(strConsumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("*=")) {
            this.evals.add(new Evaluator.AttributeWithValueContaining(strConsumeToAny, tokenQueue.remainder()));
        } else {
            if (tokenQueue.matchChomp("~=")) {
                this.evals.add(new Evaluator.AttributeWithValueMatching(strConsumeToAny, Pattern.compile(tokenQueue.remainder())));
                return;
            }
            throw new Selector.SelectorParseException("Could not parse attribute query '{0}': unexpected token at '{1}'", this.query, tokenQueue.remainder());
        }
    }

    private void allElements() {
        this.evals.add(new Evaluator.AllElements());
    }

    private void indexLessThan() {
        this.evals.add(new Evaluator.IndexLessThan(consumeIndex()));
    }

    private void indexGreaterThan() {
        this.evals.add(new Evaluator.IndexGreaterThan(consumeIndex()));
    }

    private void indexEquals() {
        this.evals.add(new Evaluator.IndexEquals(consumeIndex()));
    }

    private void cssNthChild(boolean z, boolean z2) {
        String strNormalize = Normalizer.normalize(this.f3320tq.chompTo(")"));
        Matcher matcher = NTH_AB.matcher(strNormalize);
        Matcher matcher2 = NTH_B.matcher(strNormalize);
        int i = 2;
        int i2 = 1;
        if (!"odd".equals(strNormalize)) {
            if ("even".equals(strNormalize)) {
                i2 = 0;
            } else if (matcher.matches()) {
                int i3 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                i2 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
                i = i3;
            } else if (matcher2.matches()) {
                i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i = 0;
            } else {
                throw new Selector.SelectorParseException("Could not parse nth-index '{0}': unexpected format", strNormalize);
            }
        }
        if (z2) {
            if (z) {
                this.evals.add(new Evaluator.IsNthLastOfType(i, i2));
                return;
            } else {
                this.evals.add(new Evaluator.IsNthOfType(i, i2));
                return;
            }
        }
        if (z) {
            this.evals.add(new Evaluator.IsNthLastChild(i, i2));
        } else {
            this.evals.add(new Evaluator.IsNthChild(i, i2));
        }
    }

    private int consumeIndex() {
        String strTrim = this.f3320tq.chompTo(")").trim();
        Validate.isTrue(StringUtil.isNumeric(strTrim), "Index must be numeric");
        return Integer.parseInt(strTrim);
    }

    private void has() {
        this.f3320tq.consume(":has");
        String strChompBalanced = this.f3320tq.chompBalanced('(', ')');
        Validate.notEmpty(strChompBalanced, ":has(el) subselect must not be empty");
        this.evals.add(new StructuralEvaluator.Has(parse(strChompBalanced)));
    }

    private void contains(boolean z) {
        this.f3320tq.consume(z ? ":containsOwn" : ":contains");
        String strUnescape = TokenQueue.unescape(this.f3320tq.chompBalanced('(', ')'));
        Validate.notEmpty(strUnescape, ":contains(text) query must not be empty");
        if (z) {
            this.evals.add(new Evaluator.ContainsOwnText(strUnescape));
        } else {
            this.evals.add(new Evaluator.ContainsText(strUnescape));
        }
    }

    private void containsData() {
        this.f3320tq.consume(":containsData");
        String strUnescape = TokenQueue.unescape(this.f3320tq.chompBalanced('(', ')'));
        Validate.notEmpty(strUnescape, ":containsData(text) query must not be empty");
        this.evals.add(new Evaluator.ContainsData(strUnescape));
    }

    private void matches(boolean z) {
        this.f3320tq.consume(z ? ":matchesOwn" : ":matches");
        String strChompBalanced = this.f3320tq.chompBalanced('(', ')');
        Validate.notEmpty(strChompBalanced, ":matches(regex) query must not be empty");
        if (z) {
            this.evals.add(new Evaluator.MatchesOwn(Pattern.compile(strChompBalanced)));
        } else {
            this.evals.add(new Evaluator.Matches(Pattern.compile(strChompBalanced)));
        }
    }

    private void not() {
        this.f3320tq.consume(":not");
        String strChompBalanced = this.f3320tq.chompBalanced('(', ')');
        Validate.notEmpty(strChompBalanced, ":not(selector) subselect must not be empty");
        this.evals.add(new StructuralEvaluator.Not(parse(strChompBalanced)));
    }

    public String toString() {
        return this.query;
    }
}

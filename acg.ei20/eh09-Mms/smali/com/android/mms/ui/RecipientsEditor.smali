.class public Lcom/android/mms/ui/RecipientsEditor;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
    }
.end annotation


# static fields
.field private static mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;


# instance fields
.field private mLastSeparator:C

.field private mLongPressedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 54
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    .line 60
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V

    sput-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 61
    sget-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 63
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setThreshold(I)V

    .line 75
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientsEditor;)C
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/RecipientsEditor;C)C
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-char p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return p1
.end method

.method static synthetic access$100(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "c"

    .prologue
    .line 238
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    .local v1, s:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 241
    .local v0, len:I
    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-object v1

    .line 245
    :cond_0
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "key"

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 394
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 399
    :goto_1
    return-object v1

    .line 393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private static getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    const-class v0, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 384
    invoke-static {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    return-object v0
.end method

.method private static getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    .line 364
    const-string v0, "number"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecipientCount()I
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 374
    const-class v0, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 375
    array-length v1, v0

    if-lez v1, :cond_0

    .line 376
    aget-object v0, v0, v2

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "isMms"

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isVzwNickNameAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointToPosition(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 275
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    .line 278
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 282
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 283
    const/4 v3, -0x1

    .line 289
    :goto_0
    return v3

    .line 286
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 287
    .local v1, line:I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .local v2, off:I
    move v3, v2

    .line 289
    goto :goto_0
.end method


# virtual methods
.method public constructContactsFromInput()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;
    .locals 9
    .parameter "canBlock"

    .prologue
    const-string v8, "Mms/compose"

    .line 142
    sget-object v7, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v6

    .line 143
    .local v6, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "Mms/compose"

    const-string v7, "constructContactsFromInput numbers= xxxxxxxx"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 146
    .local v4, list:Lcom/android/mms/data/ContactList;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 147
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 149
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 153
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 155
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/mms/data/Contact;

    move-object v1, v0

    .line 160
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 163
    .local v2, e:Ljava/lang/CloneNotSupportedException;
    const-string v7, "Mms/compose"

    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #e:Ljava/lang/CloneNotSupportedException;
    .end local v5           #number:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public containsEmail()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    .line 234
    :goto_0
    return v3

    .line 229
    :cond_0
    sget-object v3, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #number:Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 234
    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 121
    :goto_0
    return v2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v0

    .line 119
    .local v0, end:I
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 121
    .local v1, len:I
    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 7

    .prologue
    .line 307
    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-ltz v5, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 309
    .local v4, text:Landroid/text/Spanned;
    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 310
    sget-object v5, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v5, v4, v6}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 311
    .local v3, start:I
    sget-object v5, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5, v4, v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 313
    .local v1, end:I
    if-eq v1, v3, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v3, v1, v6}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, number:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 316
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v5, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    invoke-direct {v5, v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;-><init>(Lcom/android/mms/data/Contact;)V

    .line 320
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #end:I
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #start:I
    .end local v4           #text:Landroid/text/Spanned;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 4
    .parameter "isMms"

    .prologue
    const/4 v3, 0x1

    .line 200
    sget-object v2, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    .line 209
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    .line 204
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 205
    goto :goto_0

    .line 209
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient(Z)Z
    .locals 3
    .parameter "isMms"

    .prologue
    .line 192
    sget-object v2, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const/4 v2, 0x1

    .line 196
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onFilterComplete(I)V

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 326
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->requestLayout()V

    .line 327
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 295
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 296
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 298
    .local v2, y:I
    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public populate(Lcom/android/mms/data/ContactList;)V
    .locals 5
    .parameter "list"

    .prologue
    const-string v4, ", "

    .line 252
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 254
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 255
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const-string v3, ", "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/RecipientsEditor;->contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 261
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 262
    const-string v3, ", "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    .line 266
    :cond_2
    return-void
.end method

.method public setFocusChangeRecipients()V
    .locals 9

    .prologue
    const/16 v8, 0x2c

    const/4 v7, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 335
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, editableString:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 337
    .local v5, start:I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 338
    .local v2, end:I
    if-nez v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 342
    const/4 v5, 0x0

    .line 346
    :goto_1
    invoke-static {v0, v5, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, original:Ljava/lang/String;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 348
    .local v3, i:I
    if-le v3, v7, :cond_3

    .line 349
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 350
    const/4 v6, 0x2

    sub-int v6, v3, v6

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    sub-int v6, v3, v7

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    .line 351
    sget-object v6, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v0, v5, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 344
    .end local v3           #i:I
    .end local v4           #original:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 355
    .restart local v3       #i:I
    .restart local v4       #original:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 356
    sub-int v6, v3, v7

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    .line 357
    sget-object v6, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v0, v5, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public setRecipientTokenizer(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 530
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V

    sput-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 531
    sget-object v0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

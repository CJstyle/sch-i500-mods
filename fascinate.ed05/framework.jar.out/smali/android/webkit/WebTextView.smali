.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$1;,
        Landroid/webkit/WebTextView$OutlineDrawable;,
        Landroid/webkit/WebTextView$AutoCompleteAdapter;
    }
.end annotation


# static fields
.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREVNEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final TEXTVIEW_MAX_LENGTH:I = 0x1000

.field static final mPasswordAdjustXPadding:I = 0x5


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCharacter:[C

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mMaxLength:I

.field private mNodeName:Ljava/lang/String;

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 134
    const/4 v0, 0x0

    const v1, 0x10102b9

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 135
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 137
    return-void
.end method

.method private createBackground()V
    .locals 4

    .prologue
    .line 780
    iget-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 796
    :goto_0
    return-void

    .line 783
    :cond_0
    new-instance v2, Landroid/webkit/WebTextView$OutlineDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>(Landroid/webkit/WebTextView$1;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 785
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 788
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 789
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v0, v2, 0x1

    .line 791
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 795
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 654
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 655
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 806
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 807
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 808
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 813
    :goto_0
    return-void

    .line 810
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method


# virtual methods
.method bringIntoView()V
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->bringPointIntoView(I)Z

    .line 647
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 292
    :goto_0
    return v3

    .line 145
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    move v9, v3

    .line 146
    .local v9, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 148
    .local v11, keyCode:I
    const/4 v10, 0x0

    .line 149
    .local v10, isArrowKey:Z
    packed-switch v11, :pswitch_data_0

    .line 163
    :goto_2
    const/16 v3, 0x3d

    if-ne v3, v11, :cond_5

    .line 164
    if-eqz v9, :cond_1

    .line 165
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 167
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 145
    .end local v9           #down:Z
    .end local v10           #isArrowKey:Z
    .end local v11           #keyCode:I
    :cond_2
    const/4 v3, 0x0

    move v9, v3

    goto :goto_1

    .line 154
    .restart local v9       #down:Z
    .restart local v10       #isArrowKey:Z
    .restart local v11       #keyCode:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 155
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 159
    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 170
    .local v17, text:Landroid/text/Spannable;
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 174
    .local v5, oldLength:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_6

    if-nez v5, :cond_6

    .line 175
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 176
    const/4 v3, 0x1

    goto :goto_0

    .line 179
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_9

    const/16 v3, 0x42

    if-ne v3, v11, :cond_9

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 183
    :cond_7
    if-nez v9, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 189
    .end local v5           #oldLength:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 190
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 192
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 193
    .restart local v5       #oldLength:I
    :cond_9
    const/16 v3, 0x17

    if-ne v3, v11, :cond_e

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 196
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 198
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_c

    .line 199
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 203
    :cond_c
    if-nez v9, :cond_d

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 207
    :cond_d
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 211
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_f

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 214
    :cond_f
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 215
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 217
    .local v13, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_11

    const/4 v3, 0x1

    move v12, v3

    .line 222
    .local v12, maxedOut:Z
    :goto_3
    if-eqz v12, :cond_12

    if-eq v13, v14, :cond_12

    .line 223
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 227
    .local v15, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 238
    const/16 v3, 0x42

    if-ne v3, v11, :cond_10

    .line 242
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 244
    :cond_10
    if-eqz v12, :cond_14

    if-nez v10, :cond_14

    const/16 v3, 0x43

    if-eq v11, v3, :cond_14

    .line 245
    if-ne v13, v14, :cond_13

    .line 247
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 217
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    move v12, v3

    goto :goto_3

    .line 225
    .restart local v12       #maxedOut:Z
    :cond_12
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 248
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 256
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 257
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 258
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 260
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 275
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 279
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_16

    if-nez v9, :cond_16

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 283
    :cond_16
    if-eqz v10, :cond_18

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 289
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 292
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 303
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 309
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 315
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 323
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 337
    packed-switch p1, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 339
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 345
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 346
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 347
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 351
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 356
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 358
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 360
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 413
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 415
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v1

    .line 377
    .local v1, prevInputType:I
    if-ne v1, v5, :cond_1

    .line 378
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 385
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 386
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 405
    .end local v1           #prevInputType:I
    :cond_0
    :goto_1
    return v6

    .line 380
    .restart local v1       #prevInputType:I
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 383
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_0

    .line 388
    .end local v1           #prevInputType:I
    :cond_2
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v0

    .line 393
    .local v0, nextInputType:I
    if-ne v0, v5, :cond_3

    .line 394
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 401
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 402
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 396
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 399
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_2
.end method

.method protected onSelectionChanged(II)V
    .locals 7
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 419
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-eqz v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 424
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 426
    .local v6, sp:Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 427
    .local v4, candStart:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 428
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 430
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    .end local v6           #sp:Landroid/text/Spannable;
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 442
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 443
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 448
    .local v17, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 454
    if-nez p4, :cond_2

    .line 455
    if-lez p3, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0

    .line 472
    :cond_2
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 473
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 475
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 476
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_6

    const/4 v5, 0x1

    move v11, v5

    .line 477
    .local v11, cannotUseKeyEvents:Z
    :goto_1
    if-eqz v11, :cond_7

    const/4 v5, 0x0

    move v12, v5

    .line 478
    .local v12, charactersFromKeyEvents:I
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_3

    if-eqz v11, :cond_8

    .line 479
    :cond_3
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 495
    .end local v8           #replace:Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v11, :cond_9

    .line 496
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 497
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 500
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 501
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 497
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 476
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_6
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 477
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_7
    const/4 v5, 0x1

    move v12, v5

    goto :goto_2

    .line 491
    .restart local v12       #charactersFromKeyEvents:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_3

    .line 505
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 599
    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 512
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 518
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 519
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 520
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 521
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 524
    :pswitch_1
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v9, :cond_0

    .line 525
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 526
    const/4 v9, 0x0

    goto :goto_1

    .line 528
    :cond_0
    iget-object v9, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 529
    .local v7, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 530
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 531
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 532
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 533
    iget v9, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 534
    .local v1, dx:I
    iget v9, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 538
    .local v2, dy:I
    div-int/lit8 v8, v7, 0x2

    .line 539
    .local v8, smallerSlop:I
    if-gt v1, v8, :cond_1

    if-le v2, v8, :cond_4

    .line 540
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_2

    .line 541
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    iget v10, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-static {p0, v9, v10}, Landroid/text/method/Touch;->getMaxScrollX(Landroid/widget/TextView;Landroid/text/Layout;I)I

    move-result v9

    int-to-float v5, v9

    .line 547
    .local v5, maxScrollX:F
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_3

    iget v10, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    :goto_2
    iget v11, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView;->scrollFocusedTextInput(FI)V

    .line 550
    .end local v5           #maxScrollX:F
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 551
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 552
    const/4 v9, 0x1

    goto :goto_1

    .line 547
    .restart local v5       #maxScrollX:F
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 554
    .end local v5           #maxScrollX:F
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    .line 559
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 561
    :cond_5
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_7

    .line 563
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v9, :cond_6

    .line 564
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v11, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v12, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 566
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 568
    :cond_6
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 569
    .local v6, scrolled:Z
    if-eqz v6, :cond_7

    .line 570
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 571
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 572
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 575
    .end local v6           #scrolled:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 578
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v7           #slop:I
    .end local v8           #smallerSlop:I
    :pswitch_2
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v9, :cond_8

    .line 579
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 580
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 582
    :cond_8
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v9, :cond_9

    .line 585
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 586
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_9

    .line 587
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 591
    :cond_9
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v9, :cond_a

    .line 592
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 594
    :cond_a
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 604
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 622
    :goto_0
    return v2

    .line 607
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 608
    goto :goto_0

    .line 612
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 613
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 616
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 617
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 620
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 622
    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 628
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 639
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 641
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->inAnimateZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 662
    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 665
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$000(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 667
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 668
    return-void
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 709
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, v2

    .line 710
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 720
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 726
    :cond_0
    :goto_1
    return-void

    .line 709
    .end local v0           #selection:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 724
    .restart local v0       #selection:I
    :cond_2
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method setInPassword(Z)V
    .locals 1
    .parameter "inPassword"

    .prologue
    .line 734
    if-eqz p1, :cond_0

    .line 735
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 737
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 741
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 742
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    invoke-virtual {p0, p1}, Landroid/webkit/WebTextView;->setCursorVisible(Z)V

    .line 746
    return-void

    .line 741
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 801
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 803
    return-void
.end method

.method setNodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 827
    iput-object p1, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    .line 828
    return-void
.end method

.method setNodePointer(I)V
    .locals 0
    .parameter "ptr"

    .prologue
    .line 822
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 823
    return-void
.end method

.method setRect(IIII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 842
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 843
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 844
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 852
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_0
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 855
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 857
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 858
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    :goto_1
    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 864
    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 865
    return-void

    .line 846
    :cond_0
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 847
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 848
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 849
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_0

    .line 860
    :cond_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 871
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 873
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 874
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 875
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 876
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 877
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 886
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 887
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 888
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 889
    .local v3, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 890
    .local v2, selEnd:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 891
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 892
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 893
    .local v1, newLength:I
    if-le v3, v1, :cond_0

    move v3, v1

    .line 894
    :cond_0
    if-le v2, v1, :cond_1

    move v2, v1

    .line 895
    :cond_1
    invoke-static {v0, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 896
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 897
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 898
    return-void
.end method

.method setType(I)V
    .locals 14
    .parameter "type"

    .prologue
    const/4 v13, 0x0

    .line 909
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v10, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 910
    :cond_0
    const/4 v9, 0x1

    .line 911
    .local v9, single:Z
    const/4 v3, 0x0

    .line 912
    .local v3, inPassword:Z
    const/4 v5, -0x1

    .line 913
    .local v5, maxLength:I
    const/4 v4, 0x1

    .line 914
    .local v4, inputType:I
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 915
    or-int/lit16 v4, v4, 0xa0

    .line 917
    :cond_1
    const/high16 v2, -0x7000

    .line 919
    .local v2, imeOptions:I
    packed-switch p1, :pswitch_data_0

    .line 959
    or-int/lit8 v2, v2, 0x2

    .line 962
    :goto_1
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 963
    if-eqz v9, :cond_4

    .line 964
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v11

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 966
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v5

    .line 967
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    const/16 v10, 0x1000

    if-le v5, v10, :cond_3

    .line 968
    :cond_2
    const/16 v5, 0x1000

    .line 971
    :cond_3
    const/4 v10, 0x2

    if-eq p1, v10, :cond_4

    .line 972
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 974
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v11, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v6, v11}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;I)V

    .line 980
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v0

    .line 981
    .local v0, action:I
    const/16 v7, 0xc

    .line 982
    .local v7, next_mask:I
    const/4 v8, 0x3

    .line 983
    .local v8, prev_mask:I
    and-int v10, v0, v7

    if-eqz v10, :cond_5

    and-int v10, v0, v8

    if-eqz v10, :cond_5

    .line 984
    const-string v10, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 999
    :goto_2
    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1000
    invoke-direct {p0, v5}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1001
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1002
    invoke-virtual {p0, v4}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1003
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1004
    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_0

    .line 921
    .end local v0           #action:I
    .end local v1           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    .end local v7           #next_mask:I
    .end local v8           #prev_mask:I
    :pswitch_0
    or-int/lit8 v2, v2, 0x2

    .line 922
    goto :goto_1

    .line 924
    :pswitch_1
    const/4 v9, 0x0

    .line 925
    const v4, 0x2c001

    .line 929
    or-int/lit8 v2, v2, 0x1

    .line 930
    goto :goto_1

    .line 932
    :pswitch_2
    const/4 v3, 0x1

    .line 933
    or-int/lit8 v2, v2, 0x2

    .line 934
    goto :goto_1

    .line 936
    :pswitch_3
    or-int/lit8 v2, v2, 0x3

    .line 937
    goto :goto_1

    .line 941
    :pswitch_4
    or-int/lit8 v2, v2, 0x2

    .line 942
    goto :goto_1

    .line 944
    :pswitch_5
    or-int/lit8 v4, v4, 0x2

    .line 948
    goto :goto_1

    .line 950
    :pswitch_6
    or-int/lit8 v4, v4, 0x3

    .line 952
    goto/16 :goto_1

    .line 956
    :pswitch_7
    or-int/lit8 v2, v2, 0x2

    .line 957
    goto/16 :goto_1

    .line 986
    .restart local v0       #action:I
    .restart local v7       #next_mask:I
    .restart local v8       #prev_mask:I
    :cond_5
    and-int v10, v0, v8

    if-eqz v10, :cond_6

    .line 987
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 989
    :cond_6
    and-int v10, v0, v7

    if-eqz v10, :cond_7

    .line 990
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 995
    :cond_7
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

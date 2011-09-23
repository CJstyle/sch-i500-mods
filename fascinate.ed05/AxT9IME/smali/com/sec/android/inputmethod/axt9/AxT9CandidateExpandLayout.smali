.class public Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;
.super Landroid/widget/LinearLayout;
.source "AxT9CandidateExpandLayout.java"


# static fields
.field private static final BTN_MIN_SIZE:I

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static PADDING_LEFT:I

.field private static PADDING_RIGHT:I

.field private static SCROLL_WIDTH:I


# instance fields
.field private mAddwordButton:Landroid/widget/Button;

.field private mBtnIndex:I

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mColorNormal:I

.field private mColorRecommended:I

.field mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mCurrentPage:I

.field private mDotLangth:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviousY:I

.field private mScrolled:Z

.field private mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedWordValid:Z

.field private mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

.field private mbActiveWordIndex:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_LEFT:I

    .line 32
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_RIGHT:I

    .line 37
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_MIN_WIDTH:I

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    .line 38
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 41
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 46
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    .line 57
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mPreviousY:I

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mScrolled:Z

    .line 61
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 63
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    .line 64
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCurrentPage:I

    .line 69
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 41
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 46
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    .line 57
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mPreviousY:I

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mScrolled:Z

    .line 61
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 63
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    .line 64
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCurrentPage:I

    .line 74
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mScrolled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mPreviousY:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method private createLayoutForScroll()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 298
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 303
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f020222

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 305
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-object v0
.end method

.method private displayNormal(I)V
    .locals 25
    .parameter "displayedNum"

    .prologue
    .line 178
    const/16 v20, 0x0

    .line 179
    .local v20, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x40

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 180
    .local v6, count:I
    const/4 v10, 0x0

    .line 182
    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTypedWordValid:Z

    move/from16 v18, v0

    .line 184
    .local v18, typedWordValid:Z
    const v21, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ScrollView;

    .line 186
    .local v12, scroll:Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    move/from16 v0, p1

    move v1, v6

    if-lt v0, v1, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x8

    :goto_0
    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 193
    .local v9, lp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :goto_1
    return-void

    .line 189
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 199
    :cond_1
    const/16 v17, 0x0

    .line 200
    .local v17, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 202
    .local v5, cellLayout:Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    .line 204
    .local v16, textWidth:F
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EXPAND_TEXTVIEW_HEIGHT:I

    const/16 v23, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 206
    .local v11, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 208
    move/from16 v7, p1

    .local v7, idx:I
    :goto_2
    if-ge v7, v6, :cond_7

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 210
    .local v14, suggestion:Ljava/lang/CharSequence;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    .local v15, temp:Ljava/lang/StringBuilder;
    new-instance v17, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v17           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 212
    .restart local v17       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/high16 v21, 0x41a0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    if-eqz v18, :cond_3

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorRecommended:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 221
    :goto_3
    const v21, 0x7f020121

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    .line 222
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 223
    const/16 v21, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 224
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v22, 0x0

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setPadding(IIII)V

    .line 226
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 228
    const/16 v21, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move-object v0, v10

    move-object v1, v14

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 229
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v22, v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 231
    .local v19, wordWidth:I
    add-int v21, v20, v19

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 232
    if-nez v20, :cond_5

    .line 233
    const/4 v8, 0x0

    .local v8, index:I
    :goto_4
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 234
    const/16 v21, 0x0

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    const-string v21, "..."

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object v0, v14

    move v1, v8

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 237
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 238
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 240
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gez v21, :cond_4

    .line 266
    .end local v8           #index:I
    :cond_2
    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v14

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 267
    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    add-int v20, v20, v19

    .line 208
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 218
    .end local v19           #wordWidth:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorNormal:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 233
    .restart local v8       #index:I
    .restart local v19       #wordWidth:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 245
    .end local v8           #index:I
    :cond_5
    const/16 v20, 0x0

    .line 246
    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 250
    :cond_6
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 251
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_5
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 252
    const/16 v21, 0x0

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 253
    const-string v21, "..."

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object v0, v14

    move v1, v8

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 256
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 258
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_2

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 272
    .end local v8           #index:I
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v19           #wordWidth:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x8

    :goto_6
    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080043

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v13, v0

    .line 277
    .local v13, scrollHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 278
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 279
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 272
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #scrollHeight:I
    :cond_8
    const/16 v22, 0x0

    goto :goto_6

    .line 281
    .restart local v13       #scrollHeight:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 282
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 283
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v21, v13, 0x2

    div-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 285
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 286
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 287
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v21, v13, 0x3

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 290
    .end local v9           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 291
    .restart local v9       #lp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v9

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 292
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected freeVariables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 325
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 327
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    .line 329
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 330
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 332
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 333
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_LEFT:I

    .line 87
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_RIGHT:I

    .line 88
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_LEFT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->PADDING_RIGHT:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->SCROLL_WIDTH:I

    .line 91
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 134
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    .line 137
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    const v2, 0x7f02023f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 146
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mAddwordButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZBI)V
    .locals 2
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .parameter "displayedNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZBI)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorNormal:I

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mColorRecommended:I

    .line 159
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 160
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mSuggestionList:Ljava/util/List;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 169
    iput-boolean p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTypedWordValid:Z

    .line 170
    iput-byte p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mbActiveWordIndex:B

    .line 172
    invoke-direct {p0, p5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I

    .line 174
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCurrentPage:I

    .line 175
    return-void
.end method

.method public setViewManager(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;)V
    .locals 0
    .parameter "viewManager"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 151
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 314
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 316
    :cond_0
    return-void
.end method

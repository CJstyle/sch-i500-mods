.class public Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;
.super Landroid/widget/LinearLayout;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static BTN_HWR_SIZE:I

.field private static BTN_MIN_SIZE:I

.field private static CANDIDATEVIEW_WIDTH:I

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

.field private static EXPAND_BTN_BOTTOM_MARGIN:I

.field private static EXPAND_BTN_LEFT_MARGIN:I

.field private static EXPAND_BTN_RIGHT_MARGIN:I

.field private static EXPAND_BTN_TOP_MARGIN:I

.field private static EXPAND_BTN_WIDTH:I

.field private static PADDING_RIGHT:I

.field private static PREV_NEXT_BTN_WIDTH:I

.field private static ROW_HEIGHT:I

.field private static SCROLL_WIDTH:I


# instance fields
.field private mCandidateMode:I

.field private mCandidateView:[Landroid/widget/LinearLayout;

.field private mCandidateViewExpand:Landroid/widget/LinearLayout;

.field private mCandidateViewHwr:Landroid/widget/LinearLayout;

.field private mCandidateViewNormal:Landroid/widget/LinearLayout;

.field private mColorNormal:I

.field private mColorPress:I

.field private mColorRecommended:I

.field private mCompletions:Z

.field private mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mDotLangth:F

.field private mExpandNextBtn:Landroid/widget/Button;

.field private mExpandPrevBtn:Landroid/widget/Button;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHwrIsExpand:Z

.field private mHwrNextBtn:Landroid/widget/Button;

.field private mHwrPrevBtn:Landroid/widget/Button;

.field private mMoreBtn:Landroid/widget/Button;

.field private mNextString:Ljava/lang/String;

.field private mNormalNextBtn:Landroid/widget/Button;

.field private mNormalPrevBtn:Landroid/widget/Button;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPrevString:Ljava/lang/String;

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

.field private mTotalWidth:I

.field private mTypedWordValid:Z

.field private mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

.field private mbActiveWordIndex:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    .line 35
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    .line 36
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    .line 37
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    .line 38
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    .line 39
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    .line 42
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    .line 43
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    .line 45
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_MIN_WIDTH:I

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    .line 46
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    .line 47
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    .line 48
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    .line 49
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 53
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 54
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    .line 61
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 62
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 63
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 64
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    .line 65
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 67
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    .line 69
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    .line 70
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    .line 72
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    .line 75
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    .line 80
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 83
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    .line 342
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrIsExpand:Z

    .line 101
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 53
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 54
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    .line 61
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 67
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    .line 69
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    .line 72
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    .line 73
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    .line 75
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    .line 76
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    .line 80
    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 83
    iput-byte v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    .line 342
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrIsExpand:Z

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 107
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayExpand()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCompletions:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9IME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I

    return p1
.end method

.method private createExpandViews()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 345
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v6

    .line 347
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 352
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 355
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    invoke-direct {v2, v8, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 358
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 359
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 361
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sget v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 366
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 367
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 368
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 369
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 371
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 372
    .local v1, closeBtn:Landroid/widget/Button;
    const v3, 0x7f02022a

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 374
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 384
    .local v0, BtnWidth:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 385
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 386
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 387
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 388
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 390
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    .line 391
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    const v4, 0x7f02023f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 392
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 395
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$7;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 406
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 407
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 408
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 409
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 410
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 412
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    .line 413
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    const v4, 0x7f02023f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 414
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 417
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$8;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 427
    return-void
.end method

.method private createHwrViews()V
    .locals 10

    .prologue
    const v9, 0x7f02023f

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 430
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    .line 433
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    invoke-direct {v1, v8, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 438
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 441
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 444
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    .line 445
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 447
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 460
    .local v0, BtnWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 461
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 462
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 463
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 464
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 466
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    .line 467
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 468
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 471
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 483
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 484
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 485
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 486
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 488
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    .line 489
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 490
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 493
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$10;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$10;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 524
    return-void
.end method

.method private createLayoutForExpand()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 966
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 968
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 971
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    return-object v0
.end method

.method private createLayoutForExpandPrevNext()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 977
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 979
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 982
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    return-object v0
.end method

.method private createLayoutForOneLine()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 933
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 935
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 938
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    return-object v0
.end method

.method private createLayoutForPrevNext()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 944
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 946
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 949
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    return-object v0
.end method

.method private createLayoutForPrevNextOneLine()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 955
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 957
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 960
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    return-object v0
.end method

.method private createLayoutForScroll()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 922
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 924
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 927
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    return-object v0
.end method

.method private createNormalViews()V
    .locals 10

    .prologue
    const v9, 0x7f02023f

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 178
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    .line 180
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 185
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    invoke-direct {v1, v5, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 191
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 192
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 240
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 245
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 246
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 247
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 248
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 250
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    .line 251
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    const v3, 0x7f02022d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 253
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    .local v0, BtnWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 269
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 270
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 271
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 272
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 274
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    .line 275
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mPrevString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 279
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$3;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v1, v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 291
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 292
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 293
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 294
    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 296
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    .line 297
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 301
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$4;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 340
    return-void
.end method

.method private displayExpand()I
    .locals 25

    .prologue
    .line 786
    const/4 v7, 0x1

    .line 787
    .local v7, displayedNum:I
    const/4 v10, 0x0

    .line 788
    .local v10, isSetted:Z
    const/16 v20, 0x0

    .line 789
    .local v20, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x40

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 791
    .local v6, count:I
    const/4 v11, 0x0

    .line 793
    .local v11, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    move/from16 v18, v0

    .line 795
    .local v18, typedWordValid:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 797
    const/16 v17, 0x0

    .line 799
    .local v17, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v13

    .line 801
    .local v13, prevNextCode:I
    const/4 v5, 0x0

    .line 802
    .local v5, cellLayout:Landroid/widget/LinearLayout;
    if-eqz v13, :cond_1

    .line 803
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForExpandPrevNext()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 808
    :goto_0
    const/16 v16, 0x0

    .line 811
    .local v16, textWidth:F
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x1

    move-object v0, v12

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 814
    .local v12, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_1
    if-ge v8, v6, :cond_8

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 817
    .local v14, suggestion:Ljava/lang/CharSequence;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 818
    .local v15, temp:Ljava/lang/StringBuilder;
    new-instance v17, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v17           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 819
    .restart local v17       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/high16 v21, 0x41a0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 822
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    if-eqz v18, :cond_2

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 828
    :goto_2
    const v21, 0x7f020121

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    .line 829
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 830
    const/16 v21, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setHighlightColor(I)V

    .line 832
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

    .line 834
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 836
    const/16 v21, 0x0

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move-object v0, v11

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

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 837
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v22, v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 839
    .local v19, wordWidth:I
    add-int v21, v20, v19

    if-eqz v13, :cond_3

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v22, v22, v23

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 840
    if-nez v20, :cond_6

    .line 841
    const/4 v9, 0x0

    .local v9, index:I
    :goto_4
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 842
    const/16 v21, 0x0

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 843
    const-string v21, "..."

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object v0, v14

    move v1, v9

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 845
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object v0, v11

    move-object v1, v15

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 846
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 848
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    if-eqz v13, :cond_4

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v22, v22, v23

    :goto_5
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gez v21, :cond_5

    .line 881
    .end local v9           #index:I
    :cond_0
    :goto_6
    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v14

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 882
    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    add-int v20, v20, v19

    .line 814
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 805
    .end local v8           #idx:I
    .end local v12           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v16           #textWidth:F
    .end local v19           #wordWidth:I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForExpand()Landroid/widget/LinearLayout;

    move-result-object v5

    goto/16 :goto_0

    .line 825
    .restart local v8       #idx:I
    .restart local v12       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14       #suggestion:Ljava/lang/CharSequence;
    .restart local v15       #temp:Ljava/lang/StringBuilder;
    .restart local v16       #textWidth:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 839
    .restart local v19       #wordWidth:I
    :cond_3
    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto/16 :goto_3

    .line 848
    .restart local v9       #index:I
    :cond_4
    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_5

    .line 841
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 854
    .end local v9           #index:I
    :cond_6
    if-nez v10, :cond_7

    .line 855
    move v7, v8

    .line 856
    const/4 v10, 0x1

    .line 858
    :cond_7
    const/16 v20, 0x0

    .line 859
    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 887
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v19           #wordWidth:I
    :cond_8
    if-eqz v13, :cond_d

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 890
    packed-switch v13, :pswitch_data_0

    .line 918
    :goto_7
    return v7

    .line 863
    .restart local v14       #suggestion:Ljava/lang/CharSequence;
    .restart local v15       #temp:Ljava/lang/StringBuilder;
    .restart local v19       #wordWidth:I
    :cond_9
    if-eqz v13, :cond_a

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v22

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 864
    const/4 v9, 0x0

    .restart local v9       #index:I
    :goto_9
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 865
    const/16 v21, 0x0

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 866
    const-string v21, "..."

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object v0, v14

    move v1, v9

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 868
    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object v0, v11

    move-object v1, v15

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    add-float v21, v21, v22

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 869
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x0

    .line 871
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    if-eqz v13, :cond_b

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v23, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v22, v22, v23

    :goto_a
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_0

    .line 864
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 863
    .end local v9           #index:I
    :cond_a
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_8

    .line 871
    .restart local v9       #index:I
    :cond_b
    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_a

    .line 878
    .end local v9           #index:I
    :cond_c
    move v7, v6

    goto/16 :goto_6

    .line 892
    .end local v14           #suggestion:Ljava/lang/CharSequence;
    .end local v15           #temp:Ljava/lang/StringBuilder;
    .end local v19           #wordWidth:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_7

    .line 898
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0x777778

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_7

    .line 904
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0x777778

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_7

    .line 913
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandNextBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mExpandPrevBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 890
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private displayHwr()V
    .locals 15

    .prologue
    const v14, -0x777778

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1010
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v3

    .line 1012
    .local v3, prevNextCode:I
    if-eqz v3, :cond_0

    const/4 v8, 0x4

    move v0, v8

    .line 1013
    .local v0, count:I
    :goto_0
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1014
    .local v4, realCount:I
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    .line 1018
    .local v7, typedWordValid:Z
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1019
    const/4 v6, 0x0

    .line 1021
    .local v6, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1024
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1025
    const/4 v5, 0x0

    .line 1026
    .local v5, suggestion:Ljava/lang/CharSequence;
    if-ge v1, v4, :cond_1

    .line 1027
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #suggestion:Ljava/lang/CharSequence;
    check-cast v5, Ljava/lang/CharSequence;

    .line 1028
    .restart local v5       #suggestion:Ljava/lang/CharSequence;
    new-instance v6, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v6           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 1030
    .restart local v6       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1031
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setHighlightColor(I)V

    .line 1032
    invoke-virtual {v6, v5, v5, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1038
    :goto_2
    const/high16 v8, 0x41a0

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 1039
    sub-int v8, v0, v11

    if-ge v1, v8, :cond_2

    .line 1040
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020121

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    :goto_3
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 1045
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 1046
    invoke-virtual {v6, v10, v10, v10, v10}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setPadding(IIII)V

    .line 1048
    iget-byte v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    if-ne v1, v8, :cond_3

    if-eqz v7, :cond_3

    .line 1049
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 1054
    :goto_4
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewHwr:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1012
    .end local v0           #count:I
    .end local v1           #idx:I
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #realCount:I
    .end local v5           #suggestion:Ljava/lang/CharSequence;
    .end local v6           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    .end local v7           #typedWordValid:Z
    :cond_0
    const/4 v8, 0x6

    move v0, v8

    goto :goto_0

    .line 1034
    .restart local v0       #count:I
    .restart local v1       #idx:I
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #realCount:I
    .restart local v5       #suggestion:Ljava/lang/CharSequence;
    .restart local v6       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    .restart local v7       #typedWordValid:Z
    :cond_1
    new-instance v6, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v6           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 1035
    .restart local v6       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const-string v8, ""

    const-string v9, ""

    invoke-virtual {v6, v8, v9, v10}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 1042
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020240

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1051
    :cond_3
    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto :goto_4

    .line 1057
    .end local v5           #suggestion:Ljava/lang/CharSequence;
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sget v9, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1059
    .restart local v2       #params:Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1060
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1061
    sget v8, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1064
    if-eqz v3, :cond_5

    .line 1065
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1066
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1067
    packed-switch v3, :pswitch_data_0

    .line 1098
    :goto_5
    return-void

    .line 1069
    :pswitch_0
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1070
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 1071
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1072
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_5

    .line 1075
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1076
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 1077
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1078
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_5

    .line 1081
    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1082
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 1083
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1084
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_5

    .line 1090
    :cond_5
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrNextBtn:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1091
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrPrevBtn:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 1067
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private displayNormal()V
    .locals 24

    .prologue
    .line 633
    const/16 v19, 0x0

    .line 634
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x40

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 635
    .local v6, count:I
    const/4 v10, 0x0

    .line 637
    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    move/from16 v17, v0

    .line 639
    .local v17, typedWordValid:Z
    const/4 v9, 0x0

    .line 641
    .local v9, isMoreBtnShouldVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 643
    const/16 v16, 0x0

    .line 645
    .local v16, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v12

    .line 647
    .local v12, prevNextCode:I
    const/4 v5, 0x0

    .line 648
    .local v5, cellLayout:Landroid/widget/LinearLayout;
    if-eqz v12, :cond_1

    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForPrevNextOneLine()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 659
    :goto_0
    const/4 v15, 0x0

    .line 661
    .local v15, textWidth:F
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->EXPAND_TEXTVIEW_HEIGHT:I

    move-object v0, v11

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 664
    .local v11, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x0

    .local v7, idx:I
    :goto_1
    if-ge v7, v6, :cond_f

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 667
    .local v13, suggestion:Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 668
    .local v14, temp:Ljava/lang/StringBuilder;
    new-instance v16, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local v16           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;-><init>(Landroid/content/Context;)V

    .line 669
    .restart local v16       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/high16 v20, 0x41a0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextSize(F)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    move/from16 v20, v0

    move v0, v7

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    if-eqz v17, :cond_4

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorRecommended:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    .line 678
    :goto_2
    const v20, 0x7f020121

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setBackgroundResource(I)V

    .line 679
    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setMinWidth(I)V

    .line 680
    const/16 v20, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setGravity(I)V

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorPress:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setHighlightColor(I)V

    .line 682
    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v21, 0x0

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setPadding(IIII)V

    .line 684
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 686
    const/16 v20, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object v0, v10

    move-object v1, v13

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 687
    move v0, v15

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x0

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    add-int/lit8 v21, v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 689
    .local v18, wordWidth:I
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 690
    if-eqz v12, :cond_5

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v20, v20, v21

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 691
    const/4 v8, 0x0

    .local v8, index:I
    :goto_4
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move v0, v8

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 692
    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 693
    const-string v20, "..."

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object v0, v13

    move v1, v8

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 695
    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move-object v0, v10

    move-object v1, v14

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v21, v0

    add-float v20, v20, v21

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 696
    move v0, v15

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v18, v20, 0x0

    .line 698
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    if-eqz v12, :cond_6

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v22

    :goto_5
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpg-float v20, v20, v21

    if-gez v20, :cond_7

    .line 740
    .end local v8           #index:I
    :cond_0
    move-object/from16 v0, v16

    move-object v1, v14

    move-object v2, v13

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 741
    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    add-int v19, v19, v18

    .line 664
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 650
    .end local v7           #idx:I
    .end local v11           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #suggestion:Ljava/lang/CharSequence;
    .end local v14           #temp:Ljava/lang/StringBuilder;
    .end local v15           #textWidth:F
    .end local v18           #wordWidth:I
    :cond_1
    if-eqz v12, :cond_2

    .line 651
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForPrevNext()Landroid/widget/LinearLayout;

    move-result-object v5

    goto/16 :goto_0

    .line 652
    :cond_2
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForOneLine()Landroid/widget/LinearLayout;

    move-result-object v5

    goto/16 :goto_0

    .line 655
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v5

    goto/16 :goto_0

    .line 675
    .restart local v7       #idx:I
    .restart local v11       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #suggestion:Ljava/lang/CharSequence;
    .restart local v14       #temp:Ljava/lang/StringBuilder;
    .restart local v15       #textWidth:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mColorNormal:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 690
    .restart local v18       #wordWidth:I
    :cond_5
    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    goto/16 :goto_3

    .line 698
    .restart local v8       #index:I
    :cond_6
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    goto :goto_5

    .line 691
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 704
    .end local v8           #index:I
    :cond_8
    add-int v20, v19, v18

    if-eqz v12, :cond_9

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v22

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 705
    if-nez v19, :cond_b

    .line 706
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_7
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move v0, v8

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 707
    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 708
    const-string v20, "..."

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object v0, v13

    move v1, v8

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 710
    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move-object v0, v10

    move-object v1, v14

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v21, v0

    add-float v20, v20, v21

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 711
    move v0, v15

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v18, v20, 0x0

    .line 713
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    if-eqz v12, :cond_a

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v22

    :goto_8
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_0

    .line 706
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 704
    .end local v8           #index:I
    :cond_9
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_6

    .line 713
    .restart local v8       #index:I
    :cond_a
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_8

    .line 718
    .end local v8           #index:I
    :cond_b
    const/16 v19, 0x0

    .line 719
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createLayoutForScroll()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 721
    const/4 v9, 0x1

    .line 723
    :cond_c
    if-eqz v12, :cond_d

    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v20, v20, v21

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 724
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_a
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move v0, v8

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 725
    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 726
    const-string v20, "..."

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object v0, v13

    move v1, v8

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 728
    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move-object v0, v10

    move-object v1, v14

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v21, v0

    add-float v20, v20, v21

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_MIN_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 729
    move v0, v15

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v18, v20, 0x0

    .line 731
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    if-eqz v12, :cond_e

    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    sget v22, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    sub-int v21, v21, v22

    :goto_b
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mDotLangth:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpg-float v20, v20, v21

    if-ltz v20, :cond_0

    .line 724
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 723
    .end local v8           #index:I
    :cond_d
    sget v20, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_9

    .line 731
    .restart local v8       #index:I
    :cond_e
    sget v21, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    goto :goto_b

    .line 745
    .end local v8           #index:I
    .end local v13           #suggestion:Ljava/lang/CharSequence;
    .end local v14           #temp:Ljava/lang/StringBuilder;
    .end local v18           #wordWidth:I
    :cond_f
    if-nez v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .end local v5           #cellLayout:Landroid/widget/LinearLayout;
    check-cast v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v20

    if-nez v20, :cond_10

    if-nez v6, :cond_11

    .line 747
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 753
    :goto_c
    if-eqz v12, :cond_12

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    packed-switch v12, :pswitch_data_0

    .line 782
    :goto_d
    return-void

    .line 750
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mMoreBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c

    .line 758
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_d

    .line 764
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, -0x777778

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_d

    .line 770
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, -0x777778

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_d

    .line 779
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalNextBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mNormalPrevBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 594
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setVisibility(I)V

    .line 595
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 596
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    .line 597
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mHwrIsExpand:Z

    .line 598
    return-void
.end method

.method protected freeVariables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1177
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 1179
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 1180
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    .line 1181
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    .line 1182
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1184
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 1186
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1187
    return-void
.end method

.method public initDimens()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 152
    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    .line 153
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    .line 154
    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_TOP_MARGIN:I

    .line 155
    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_BOTTOM_MARGIN:I

    .line 156
    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    .line 157
    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    .line 158
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    .line 159
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    .line 160
    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->CANDIDATEVIEW_WIDTH:I

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PADDING_RIGHT:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->SCROLL_WIDTH:I

    .line 167
    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_LEFT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EXPAND_BTN_RIGHT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->PREV_NEXT_BTN_WIDTH:I

    .line 170
    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->ROW_HEIGHT:I

    .line 172
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->BTN_HWR_SIZE:I

    .line 175
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->initDimens()V

    .line 122
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V

    .line 126
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createHwrViews()V

    .line 127
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createExpandViews()V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->removeAllViews()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1172
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getSuggestion()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 1174
    return-void
.end method

.method public setCandidateMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 531
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    if-eq v1, p1, :cond_0

    .line 532
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    .line 544
    const-string v0, ""

    .line 546
    .local v0, m:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 549
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 551
    const-string v0, "MODE_NORMAL"

    .line 556
    :goto_1
    if-ne p1, v3, :cond_3

    .line 557
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 559
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 561
    const-string v0, "MODE_EXPAND"

    .line 566
    :goto_2
    if-ne p1, v4, :cond_4

    .line 568
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 570
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 572
    const-string v0, "MODE_HWR"

    .line 588
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 589
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 563
    :cond_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 574
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public setSuggestions(Ljava/util/List;ZZB)V
    .locals 3
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZB)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    .line 609
    :goto_0
    iput-boolean p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z

    .line 610
    iput-byte p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B

    .line 612
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateMode:I

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 628
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 629
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->requestLayout()V

    .line 630
    return-void

    .line 606
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;

    goto :goto_0

    .line 614
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayNormal()V

    goto :goto_1

    .line 620
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayHwr()V

    goto :goto_1

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setViewManager(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 528
    return-void
.end method

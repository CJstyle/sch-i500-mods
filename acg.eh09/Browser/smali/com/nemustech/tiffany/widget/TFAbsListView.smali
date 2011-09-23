.class public abstract Lcom/nemustech/tiffany/widget/TFAbsListView;
.super Lcom/nemustech/tiffany/widget/TFAdapterView;
.source "TFAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nemustech/tiffany/widget/TFAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBlockExcessScroll:Z

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field protected mExcessScroll:I

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

.field mFastScrollEnabled:Z

.field private mFiltered:Z

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 603
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;)V

    .line 202
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 217
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 227
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 233
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 238
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 243
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 248
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 253
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 258
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 263
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 310
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 336
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 374
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 394
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 405
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 408
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollProfilingStarted:Z

    .line 411
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingProfilingStarted:Z

    .line 453
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 528
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 564
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    .line 578
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 583
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 604
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initAbsListView()V

    .line 606
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 607
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 608
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 609
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 616
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 617
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 623
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 217
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 227
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 233
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 238
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 243
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 248
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 253
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 258
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 263
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 310
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 336
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 374
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 394
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 396
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 405
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 408
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollProfilingStarted:Z

    .line 411
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingProfilingStarted:Z

    .line 453
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 528
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 564
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    .line 578
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 583
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 624
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initAbsListView()V

    .line 626
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 629
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 630
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 634
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 637
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 638
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setStackFromBottom(Z)V

    .line 640
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 641
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setScrollingCacheEnabled(Z)V

    .line 643
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 644
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setTextFilterEnabled(Z)V

    .line 646
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 648
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setTranscriptMode(I)V

    .line 650
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 651
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setCacheColorHint(I)V

    .line 653
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 654
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFastScrollEnabled(Z)V

    .line 656
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 657
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 659
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 660
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1600(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$1800(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 3831
    if-nez p1, :cond_0

    .line 3849
    :goto_0
    return v0

    .line 3834
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v5

    move v3, v0

    .line 3835
    :goto_1
    if-ge v2, v1, :cond_2

    .line 3836
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3837
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3839
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AbsListView "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 3842
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 3844
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AbsListView "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 3835
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 3849
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2823
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$3;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 2839
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2840
    return-void
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2814
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2815
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2816
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2817
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 2819
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 3584
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 3585
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3586
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3587
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3589
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3594
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3596
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3597
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3598
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3599
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3600
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3601
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3602
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3603
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3604
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3605
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3606
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3609
    :cond_0
    if-eqz p1, :cond_1

    .line 3610
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3614
    :goto_0
    return-void

    .line 3612
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3406
    sparse-switch p2, :sswitch_data_0

    .line 3432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3408
    :sswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 3409
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 3410
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 3411
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3435
    :goto_0
    sub-int/2addr v1, v3

    .line 3436
    sub-int/2addr v0, v2

    .line 3437
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 3414
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3415
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3416
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 3417
    iget v3, p1, Landroid/graphics/Rect;->top:I

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3418
    goto :goto_0

    .line 3420
    :sswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 3421
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 3422
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 3423
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3424
    goto :goto_0

    .line 3426
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3427
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 3428
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 3429
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3430
    goto :goto_0

    .line 3406
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 664
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setClickable(Z)V

    .line 665
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFocusableInTouchMode(Z)V

    .line 666
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setWillNotDraw(Z)V

    .line 667
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 668
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setScrollingCacheEnabled(Z)V

    .line 670
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 671
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchSlop:I

    .line 672
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    .line 673
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    .line 674
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDensityScale:F

    .line 675
    return-void
.end method

.method private positionPopup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3379
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3380
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3381
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getLocationOnScreen([I)V

    .line 3384
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDensityScale:F

    const/high16 v3, 0x41a0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 3385
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3386
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    aget v1, v1, v5

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3391
    :goto_0
    return-void

    .line 3389
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v1, v1, v5

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1508
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3372
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionPopup()V

    .line 3374
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkFocus()V

    .line 3376
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2083
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2084
    .local v0, distance:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchSlop:I

    if-le v0, v3, :cond_2

    .line 2085
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createScrollingCache()V

    .line 2086
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2087
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    .line 2088
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2092
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2093
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2095
    :cond_0
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2096
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2097
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2098
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2100
    :cond_1
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2103
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v3, v6

    .line 2107
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 3

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 856
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2607
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    .line 2608
    .local v2, count:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    .line 2609
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2611
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2622
    :cond_0
    return-void

    .line 2615
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2616
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2617
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2618
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2620
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2615
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3694
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3656
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3715
    instance-of v0, p1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1171
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 1172
    .local v1, count:I
    if-lez v1, :cond_4

    .line 1173
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3

    .line 1174
    mul-int/lit8 v2, v1, 0x64

    .line 1176
    .local v2, extent:I
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1177
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1178
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1179
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1180
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1183
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1184
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1185
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1186
    if-lez v3, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1190
    :cond_1
    move v5, v2

    .line 1193
    .local v5, retVal:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1195
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1196
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1199
    .end local v4           #ratio:F
    :cond_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1205
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    :cond_3
    move v8, v10

    .line 1202
    goto :goto_0

    :cond_4
    move v8, v9

    .line 1205
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 18

    .prologue
    .line 1210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move v5, v0

    .line 1211
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    .line 1212
    .local v2, childCount:I
    if-ltz v5, :cond_5

    if-lez v2, :cond_5

    .line 1213
    const/4 v9, 0x0

    .line 1214
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1215
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1216
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1217
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1218
    .local v6, height:I
    if-lez v6, :cond_0

    .line 1219
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1223
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move v14, v0

    if-gez v14, :cond_1

    .line 1224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move v10, v0

    .line 1225
    .local v10, savedExcessScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1226
    .local v11, shrinkedScrollExtent:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1228
    .local v8, normalScrollExtent:I
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 1230
    sub-int v4, v8, v11

    .line 1232
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedExcessScroll:I
    .end local v11           #shrinkedScrollExtent:I
    :cond_1
    move v14, v9

    .line 1249
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_0
    return v14

    .line 1238
    .restart local v9       #retVal:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move v3, v0

    .line 1239
    .local v3, count:I
    if-nez v5, :cond_3

    .line 1240
    const/4 v7, 0x0

    .line 1246
    .local v7, index:I
    :goto_1
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_0

    .line 1241
    .end local v7           #index:I
    :cond_3
    add-int v14, v5, v2

    if-ne v14, v3, :cond_4

    .line 1242
    move v7, v3

    .restart local v7       #index:I
    goto :goto_1

    .line 1244
    .end local v7           #index:I
    :cond_4
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_1

    .line 1249
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1254
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1825
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3361
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3363
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1512
    const/4 v2, 0x0

    .line 1513
    .local v2, saveCount:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1514
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1516
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollX:I

    .line 1517
    .local v3, scrollX:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    .line 1518
    .local v4, scrollY:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1521
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    .line 1524
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 1525
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1526
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1529
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1531
    if-eqz v1, :cond_2

    .line 1532
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1535
    :cond_2
    if-eqz v0, :cond_3

    .line 1536
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1537
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    .line 1539
    :cond_3
    return-void

    .line 1513
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1988
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2537
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2542
    return-void
.end method

.method drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1582
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1583
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1585
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1686
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->drawableStateChanged()V

    .line 1687
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1690
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3705
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3710
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1281
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 1282
    .local v1, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1283
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1293
    :goto_0
    return v5

    .line 1286
    :cond_0
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1287
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1290
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v6, v1, v7

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getExcessScrollDrawShift(I)I

    move-result v6

    add-int v0, v5, v6

    .line 1291
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v4

    .line 1292
    .local v4, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1293
    .local v3, fadeLength:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 3764
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method protected getExcessScrollMode()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 845
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 846
    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3068
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3058
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1385
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1386
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3744
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1263
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    .line 1264
    .local v0, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1265
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1275
    :goto_0
    return v4

    .line 1268
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1269
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getExcessScrollDrawShift(I)I

    move-result v5

    add-int v3, v4, v5

    .line 1273
    .local v3, top:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    if-lt v3, v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 1274
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1275
    .local v2, fadeLength:F
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3243
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    .line 3244
    .local v0, count:I
    if-lez v0, :cond_a

    .line 3251
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 3253
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 3255
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 3258
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3354
    :cond_1
    :goto_0
    return-void

    .line 3262
    :cond_2
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 3310
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3312
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 3315
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 3316
    sub-int v1, v0, v5

    .line 3318
    :cond_4
    if-gez v1, :cond_5

    .line 3319
    const/4 v1, 0x0

    .line 3323
    :cond_5
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3325
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 3326
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3264
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3269
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3270
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 3276
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findSyncPosition()I

    move-result v1

    .line 3277
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 3279
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3280
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 3282
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    .line 3284
    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 3287
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3295
    :goto_1
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3291
    :cond_7
    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 3303
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3304
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 3330
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3331
    if-ltz v2, :cond_a

    .line 3332
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3339
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 3347
    :cond_a
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3348
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    .line 3349
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedRowId:J

    .line 3350
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    .line 3351
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedRowId:J

    .line 3352
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 3353
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 3347
    goto :goto_2

    .line 3262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3082
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3083
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3084
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3085
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3087
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 3088
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 3089
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 3090
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3092
    :cond_1
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;->onScroll(Lcom/nemustech/tiffany/widget/TFAbsListView;III)V

    .line 776
    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3442
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1642
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1647
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1648
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1651
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1653
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1654
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1655
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1657
    :cond_3
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1659
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v1

    .line 1660
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1661
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1662
    if-eqz v1, :cond_6

    .line 1663
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1669
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1670
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1671
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    .line 1673
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1674
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1666
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1346
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 1452
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1455
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1461
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1468
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 1469
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1470
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1471
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1489
    :cond_0
    :goto_0
    return-object v0

    .line 1479
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1480
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1481
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1733
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onAttachedToWindow()V

    .line 1735
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1736
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1738
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 1739
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1742
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3800
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onConsistencyCheck(I)Z

    move-result v0

    .line 3802
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3804
    :goto_0
    if-eqz v1, :cond_5

    .line 3806
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2100(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v1

    .line 3807
    array-length v2, v1

    move v3, v0

    move v0, v6

    .line 3808
    :goto_1
    if-ge v0, v2, :cond_2

    .line 3809
    aget-object v4, v1, v0

    if-eqz v4, :cond_0

    .line 3811
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its active recycler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 3808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v6

    .line 3802
    goto :goto_0

    .line 3818
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2200(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3819
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    .line 3820
    :goto_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2300(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v1

    .line 3821
    array-length v2, v1

    move v3, v0

    move v0, v6

    .line 3822
    :goto_3
    if-ge v0, v2, :cond_4

    .line 3823
    aget-object v4, v1, v0

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v6

    .line 3822
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v3

    .line 3827
    :cond_5
    return v0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1695
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1697
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1723
    :goto_0
    return-object v4

    .line 1703
    :cond_0
    sget-object v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1708
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1709
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1710
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1711
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1712
    move v0, v2

    .line 1718
    :cond_1
    if-ltz v0, :cond_2

    .line 1719
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1723
    goto :goto_0

    .line 1710
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 3520
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3524
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3525
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3526
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3527
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$4;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$4;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3561
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3563
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3564
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3566
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1746
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onDetachedFromWindow()V

    .line 1749
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1751
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1752
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1753
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1754
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 1755
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1759
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3697
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3698
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3699
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 3701
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1127
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1128
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 1131
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3637
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3639
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3640
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 3649
    :cond_0
    :goto_0
    return-void

    .line 3644
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3645
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2559
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v4

    .line 2599
    :goto_1
    return v0

    .line 2562
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findMotionRow(I)I

    move-result v0

    .line 2563
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eq v3, v6, :cond_1

    if-ltz v0, :cond_1

    .line 2566
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2567
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2568
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionX:I

    .line 2569
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    .line 2570
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2571
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2572
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 2574
    :cond_1
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    .line 2575
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    :cond_2
    move v0, v5

    .line 2576
    goto :goto_1

    .line 2582
    :pswitch_1
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2584
    :pswitch_2
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    sub-int v0, v2, v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->startScrollIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 2585
    goto :goto_1

    .line 2593
    :pswitch_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2594
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1958
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1963
    sparse-switch p1, :sswitch_data_0

    .line 1981
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1966
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 1967
    goto :goto_0

    .line 1969
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1973
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1974
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1975
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1976
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    move v1, v5

    .line 1977
    goto :goto_0

    .line 1963
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1316
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onLayout(ZIIII)V

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mInLayout:Z

    .line 1318
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mInLayout:Z

    .line 1320
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->useDefaultSelector()V

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1304
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1305
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1306
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1307
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1308
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1071
    sget-object v2, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1073
    instance-of v2, p1, Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1076
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 1078
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1023
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 1025
    const-class v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1026
    const-string v0, "com.nemustech.tiffany.tfabslistview.savedstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    .line 1028
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncHeight:J

    .line 1030
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 1031
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 1032
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncRowId:J

    .line 1033
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    .line 1034
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSpecificTop:I

    .line 1035
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncMode:I

    .line 1047
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 1050
    return-void

    .line 1036
    :cond_1
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1037
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 1039
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 1040
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 1041
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncRowId:J

    .line 1042
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    .line 1043
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSpecificTop:I

    .line 1044
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1058
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1060
    .local v0, ignoreThis:Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1062
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 1064
    return-object v1
.end method

.method protected onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 12
    .parameter "b"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 975
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    invoke-direct {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;-><init>()V

    .line 977
    .local v4, ss:Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 978
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 979
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    .line 980
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->height:I

    .line 982
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_2

    .line 984
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 985
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    .line 986
    iput-wide v10, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    .line 1001
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1002
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v7, :cond_0

    .line 1003
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1004
    .local v5, textFilter:Landroid/widget/EditText;
    if-eqz v5, :cond_0

    .line 1005
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1006
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1012
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v5           #textFilter:Landroid/widget/EditText;
    :cond_0
    const-string v7, "com.nemustech.tiffany.tfabslistview.savedstate"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1013
    return-void

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v9

    .line 977
    goto :goto_0

    .line 988
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 990
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 991
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 992
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    .line 993
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 995
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iput v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 996
    iput-wide v10, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    .line 997
    iput v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1543
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 1545
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->rememberSyncState()V

    .line 1551
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3665
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3666
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    .line 3667
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 3669
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 3670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 3676
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 3677
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3679
    if-eqz v0, :cond_3

    .line 3680
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3687
    :cond_1
    return-void

    .line 3671
    :cond_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 3673
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 3674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    goto :goto_0

    .line 3682
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2128
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2131
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 2426
    :goto_0
    return v0

    :cond_1
    move v0, v5

    .line 2131
    goto :goto_0

    .line 2141
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2148
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_3

    .line 2149
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2151
    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2156
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 2161
    :cond_4
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->start(F)V

    .line 2164
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-ne v3, v8, :cond_5

    .line 2165
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2172
    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    move v0, v6

    .line 2426
    goto :goto_0

    .line 2175
    :pswitch_0
    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->pointToPosition(II)I

    move-result v3

    .line 2176
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->cancel()V

    .line 2177
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1e

    .line 2178
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_9

    if-ltz v3, :cond_9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-nez v0, :cond_9

    .line 2182
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2184
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    .line 2185
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2187
    :cond_7
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    .line 2211
    :goto_2
    if-ltz v0, :cond_8

    .line 2213
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2214
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2216
    :cond_8
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionX:I

    .line 2217
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    .line 2218
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2219
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    goto :goto_1

    .line 2189
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_a

    if-gez v3, :cond_a

    move v0, v5

    .line 2193
    goto/16 :goto_0

    .line 2200
    :cond_a
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-nez v0, :cond_b

    .line 2201
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createScrollingCache()V

    .line 2203
    :cond_b
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2204
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    .line 2205
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findMotionRow(I)I

    move-result v0

    .line 2206
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2224
    :pswitch_1
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    sub-int v0, v2, v0

    .line 2225
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 2231
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2241
    :pswitch_3
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    if-eq v2, v1, :cond_6

    .line 2243
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v1

    .line 2244
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    const/high16 v3, -0x8000

    if-eq v1, v3, :cond_d

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    sub-int v1, v2, v1

    .line 2246
    :goto_3
    if-eqz v1, :cond_c

    .line 2247
    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->trackMotionScroll(II)V

    .line 2267
    :cond_c
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    goto/16 :goto_1

    :cond_d
    move v1, v0

    .line 2244
    goto :goto_3

    .line 2277
    :pswitch_4
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_2

    .line 2380
    :goto_4
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2383
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2385
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2386
    if-eqz v0, :cond_e

    .line 2387
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2390
    :cond_e
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 2391
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2392
    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2281
    :pswitch_5
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2282
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2283
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2284
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eqz v2, :cond_f

    .line 2285
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2288
    :cond_f
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    if-nez v2, :cond_10

    .line 2289
    new-instance v2, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    invoke-direct {v2, p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    .line 2292
    :cond_10
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    .line 2293
    iput-object v1, v2, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2294
    iput v0, v2, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2295
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2297
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 2299
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-ne v0, v6, :cond_16

    .line 2300
    :cond_11
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2301
    if-eqz v0, :cond_12

    .line 2302
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_5
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2305
    :cond_12
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2306
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2307
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    if-nez v0, :cond_15

    .line 2308
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 2309
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2310
    invoke-virtual {v1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2311
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2312
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2313
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 2314
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2315
    if-eqz v0, :cond_13

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_13

    .line 2316
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2319
    :cond_13
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    move v0, v6

    .line 2338
    goto/16 :goto_0

    .line 2302
    :cond_14
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    goto :goto_5

    .line 2335
    :cond_15
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto :goto_6

    .line 2340
    :cond_16
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    if-nez v0, :cond_17

    .line 2341
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2345
    :cond_17
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 2348
    :pswitch_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    .line 2349
    if-lez v0, :cond_1b

    .line 2350
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    if-nez v1, :cond_18

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_18

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    if-ge v1, v2, :cond_18

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_18

    .line 2354
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2355
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2357
    :cond_18
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2358
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2359
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 2361
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    if-le v1, v2, :cond_1a

    .line 2362
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    if-nez v1, :cond_19

    .line 2363
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    .line 2365
    :cond_19
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2367
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 2369
    :cond_1a
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2370
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2374
    :cond_1b
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2375
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2405
    :pswitch_7
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2406
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2407
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2408
    if-eqz v0, :cond_1c

    .line 2409
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2411
    :cond_1c
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 2413
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2414
    if-eqz v0, :cond_1d

    .line 2415
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2418
    :cond_1d
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 2419
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2420
    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_1e
    move v0, v3

    goto/16 :goto_2

    .line 2172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2225
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2277
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2111
    if-eqz p1, :cond_0

    .line 2113
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 2117
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2120
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2121
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2124
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1763
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onWindowFocusChanged(Z)V

    .line 1765
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1767
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1768
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1769
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1771
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1773
    if-ne v0, v4, :cond_0

    .line 1775
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 1779
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v1, :cond_1

    .line 1780
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1810
    :cond_1
    :goto_1
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 1811
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v4

    .line 1765
    goto :goto_0

    .line 1789
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v1, :cond_4

    .line 1791
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 1795
    :cond_4
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1797
    if-ne v0, v4, :cond_5

    .line 1799
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 1803
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 1804
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 1805
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1912
    const/4 v6, 0x0

    .line 1914
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1918
    :cond_0
    if-nez v6, :cond_1

    .line 1919
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1920
    invoke-super {p0, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1922
    :cond_1
    if-eqz v6, :cond_2

    .line 1923
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performHapticFeedback(I)Z

    .line 1925
    :cond_2
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1999
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2000
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2001
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2002
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2005
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 2006
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2007
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2008
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2009
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2010
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2011
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2015
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2006
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2015
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1494
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1495
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(IIII)V

    .line 1498
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    .line 1499
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1500
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    .line 1501
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->refreshDrawableState()V

    .line 1503
    :cond_0
    return-void

    .line 1500
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 3100
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    .line 3101
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3102
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3104
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3105
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3106
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2632
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/nemustech/tiffany/widget/TFAbsListView;I)V

    .line 2635
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 2638
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1136
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 1138
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resetList()V

    .line 886
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 887
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 889
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1144
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeAllViewsInLayout()V

    .line 1145
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    .line 1146
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 1147
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 1148
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOldSelectedPosition:I

    .line 1149
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOldSelectedRowId:J

    .line 1150
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 1151
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 1152
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 1153
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1154
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 1155
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 3140
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    .line 3142
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 3143
    const/16 v18, 0x0

    .line 3234
    :goto_0
    return v18

    .line 3146
    :cond_0
    const/4 v14, 0x0

    .line 3148
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 3149
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 3150
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move v8, v0

    .line 3151
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 3152
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 3154
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 3155
    move v13, v15

    .line 3157
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3158
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3159
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 3162
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 3219
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3221
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 3222
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 3223
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSpecificTop:I

    .line 3224
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 3225
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 3226
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3227
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectionInt(I)V

    .line 3228
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 3232
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 3234
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3164
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 3165
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 3169
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 3171
    move v13, v8

    .line 3172
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 3173
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3174
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3176
    .local v16, top:I
    if-nez v9, :cond_5

    .line 3178
    move/from16 v14, v16

    .line 3180
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 3183
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 3186
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 3188
    add-int v13, v8, v9

    .line 3189
    move/from16 v14, v16

    .line 3190
    goto/16 :goto_1

    .line 3172
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3194
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move v10, v0

    .line 3195
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 3196
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 3198
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 3199
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3200
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3201
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 3203
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3204
    move/from16 v14, v16

    .line 3205
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 3206
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 3210
    :cond_9
    if-gt v3, v5, :cond_a

    .line 3211
    add-int v13, v8, v9

    .line 3212
    move/from16 v14, v16

    .line 3213
    goto/16 :goto_1

    .line 3198
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 3230
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 3234
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 3454
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->acceptFilter()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 3512
    :goto_0
    return v0

    .line 3460
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    move v1, v4

    .line 3489
    :goto_1
    if-eqz v0, :cond_1

    .line 3490
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3493
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3494
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {p3, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 3497
    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 3498
    packed-switch v2, :pswitch_data_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v4

    move v1, v4

    .line 3468
    goto :goto_1

    .line 3470
    :sswitch_1
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3471
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3473
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v0, v2

    :goto_3
    move v1, v0

    move v0, v4

    .line 3482
    goto :goto_1

    .line 3475
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3478
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_3

    .line 3485
    :sswitch_2
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    move v0, v2

    move v1, v4

    goto :goto_1

    .line 3500
    :pswitch_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3504
    :pswitch_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3508
    :pswitch_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, p3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    .line 3460
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 3754
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    .line 3755
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFastScrollEnabled:Z

    .line 699
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1094
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 1098
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1100
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1102
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1104
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1108
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 1109
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1112
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1327
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1329
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1334
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionPopup()V

    .line 1339
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1333
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 809
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    .line 810
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1614
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1616
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1618
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1619
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 1620
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 1621
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 1622
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 1623
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1624
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1625
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 741
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 878
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    .line 879
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayoutIfNecessary()V

    .line 881
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 823
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    .line 824
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3729
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    .line 3730
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 1935
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1936
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1937
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1938
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1940
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1944
    :cond_0
    if-nez v6, :cond_1

    .line 1945
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1948
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 1953
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1559
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1564
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1562
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 22
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v5

    .line 2854
    .local v5, childCount:I
    if-nez v5, :cond_1

    .line 3049
    :cond_0
    :goto_0
    return-void

    .line 2858
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2859
    .local v10, firstTop:I
    const/16 v20, 0x1

    sub-int v20, v5, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 2861
    .local v15, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2865
    .local v16, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 2868
    .local v8, end:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 2869
    .local v13, height:I
    if-gez p1, :cond_2

    .line 2870
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2875
    :goto_1
    if-gez p2, :cond_3

    .line 2876
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2896
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move v9, v0

    .line 2911
    .local v9, firstPosition:I
    if-nez v9, :cond_5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    if-lez p2, :cond_5

    .line 2918
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 2919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2921
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 2922
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 2872
    .end local v9           #firstPosition:I
    :cond_2
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2878
    :cond_3
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2926
    .restart local v9       #firstPosition:I
    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 2933
    :cond_5
    add-int v20, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    if-gt v15, v8, :cond_7

    if-gez p2, :cond_7

    .line 2940
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 2941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2943
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 2944
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2945
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 2948
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 2958
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 2959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 2960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2961
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 2962
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 2967
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int p2, p2, v20

    .line 2968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int p1, p1, v20

    .line 2969
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2979
    :cond_9
    if-gez p2, :cond_c

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 2981
    .local v7, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 2983
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 2984
    .local v12, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getFooterViewsCount()I

    move-result v21

    sub-int v11, v20, v21

    .line 2986
    .local v11, footerViewsStart:I
    const/16 v18, 0x0

    .line 2987
    .local v18, start:I
    const/4 v6, 0x0

    .line 2989
    .local v6, count:I
    if-eqz v7, :cond_f

    .line 2990
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v20, p2

    .line 2991
    .local v19, top:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v5, :cond_a

    .line 2992
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2993
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    .line 3032
    .end local v4           #child:Landroid/view/View;
    .end local v19           #top:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    move/from16 v20, v0

    add-int v20, v20, p1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewNewTop:I

    .line 3034
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockLayoutRequests:Z

    .line 3035
    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->detachViewsFromParent(II)V

    .line 3036
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 3038
    if-eqz v7, :cond_b

    .line 3039
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    .line 3042
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 3043
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->fillGap(Z)V

    .line 3044
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockLayoutRequests:Z

    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 2979
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v11           #footerViewsStart:I
    .end local v12           #headerViewsCount:I
    .end local v14           #i:I
    .end local v18           #start:I
    :cond_c
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_3

    .line 2996
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v11       #footerViewsStart:I
    .restart local v12       #headerViewsCount:I
    .restart local v14       #i:I
    .restart local v18       #start:I
    .restart local v19       #top:I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 2997
    add-int v17, v9, v14

    .line 2998
    .local v17, position:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_e

    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_e

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2991
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 3010
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v17           #position:I
    .end local v19           #top:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v3, v20, p2

    .line 3011
    .local v3, bottom:I
    const/16 v20, 0x1

    sub-int v14, v5, v20

    .restart local v14       #i:I
    :goto_5
    if-ltz v14, :cond_a

    .line 3012
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3013
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move v1, v3

    if-le v0, v1, :cond_a

    .line 3016
    move/from16 v18, v14

    .line 3017
    add-int/lit8 v6, v6, 0x1

    .line 3018
    add-int v17, v9, v14

    .line 3019
    .restart local v17       #position:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_10

    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_10

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3011
    :cond_10
    add-int/lit8 v14, v14, -0x1

    goto :goto_5
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1349
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1352
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1355
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1357
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1358
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1362
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1367
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v3

    .line 1370
    .local v3, count:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1373
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1374
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1375
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBottom:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1378
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1352
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1358
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1362
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1370
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1375
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1378
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

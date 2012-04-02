.class public Lcom/sec/android/app/twlauncher/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    }
.end annotation


# instance fields
.field private SNAP_VELOCITY:I

.field private isSettingsButtonShown:Z

.field private isSettingsButtonTouched:Z

.field private mAllowLongPress:Z

.field private mAutoScrollRunnable:Ljava/lang/Runnable;

.field private mChildTopOffset:I

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentScreen:I

.field private mDefaultIMEIPosX:I

.field private mDefaultIMEIPosY:I

.field private mDefaultIMEIPosYGap:I

.field private mDefaultScreen:I

.field private final mDelayedShortcutDisplay:Z

.field private final mDimPaint:Landroid/graphics/Paint;

.field private mDownX:F

.field private mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field private mEnablePageIndicatorShowHide:Z

.field private mEndScreen:I

.field private mExistWidgetSpace:Z

.field private mFirstLayout:Z

.field private mHideIndicator:Ljava/lang/Runnable;

.field mHideTime:Ljava/util/Calendar;

.field private mIMEITextPaint:Landroid/graphics/Paint;

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mIgnoreRestore:Z

.field private mIsAutoScrolling:Z

.field private mIsSingleTap:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mNextScreen:I

.field private mOpenFlag:Z

.field private mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorTop:I

.field private mScrollDirection:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSettingsBg:Landroid/graphics/drawable/Drawable;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIcon:Landroid/graphics/drawable/Drawable;

.field private mSnapToScreenDuration:I

.field private mStartScreen:I

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private mTextSize:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedPageIndicatorIndex:I

.field private mUseLargeDrawablesOnlyForPageIndicator:Z

.field private mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 95
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirstLayout:Z

    .line 98
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 102
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 111
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 123
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 134
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 136
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    .line 137
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 161
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 162
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 172
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    .line 174
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 183
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 184
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 185
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 679
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    .line 680
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    .line 2256
    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Workspace$4;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    .line 230
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 231
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 233
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 235
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    .line 236
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace()V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$510(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 584
    :cond_0
    return-void
.end method

.method private drawDefaultIMEIText(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 820
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 822
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 823
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mBootVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 824
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 825
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 827
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 828
    return-void
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 859
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 861
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v3

    .line 862
    .local v3, updatedScreen:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 863
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    if-nez v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 867
    .local v2, rightNow:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 872
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 873
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 876
    .local v1, redraw:Z
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawSettingButton(Landroid/graphics/Canvas;)V

    .line 878
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0
.end method

.method private drawSettingButton(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 883
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 885
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 889
    return-void
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 1778
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1782
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;
    .locals 2

    .prologue
    .line 1717
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v0, v1

    .line 1718
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object p0

    .line 1717
    .end local v0           #index:I
    .restart local p0
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v0, v1

    goto :goto_0
.end method

.method private getWhichScreen()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1437
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 1438
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1439
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1440
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 1442
    .local v3, scrollX:I
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 1444
    .local v0, availableToScroll:I
    if-gez v3, :cond_0

    .line 1445
    const/4 v4, 0x0

    .line 1452
    :goto_0
    return v4

    .line 1446
    :cond_0
    if-gtz v0, :cond_1

    .line 1447
    sub-int v4, v1, v7

    goto :goto_0

    .line 1449
    :cond_1
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0
.end method

.method private initPageIndicator()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 835
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v4, :cond_0

    .line 836
    new-instance v4, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    .line 840
    .local v3, pageCount:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 842
    .local v2, indicatorWidth:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 843
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 845
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(I)V

    .line 846
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 847
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v4, :cond_2

    .line 848
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 853
    :goto_0
    mul-int v4, v2, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    if-lez v3, :cond_1

    sub-int v6, v3, v7

    :cond_1
    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .line 854
    .local v1, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    .line 855
    return-void

    .line 850
    .end local v1           #indicatorTotalWidth:I
    :cond_2
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 245
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 246
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 247
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 249
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 252
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 253
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    .line 254
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 257
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 258
    const v3, 0x7f02002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 259
    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 261
    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    .line 262
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    .line 264
    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mChildTopOffset:I

    .line 266
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    .line 272
    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    .line 273
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 274
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x7f07000d

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 277
    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    .line 278
    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    .line 279
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 284
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_0

    .line 285
    const/16 v3, 0x190

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 295
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 298
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 299
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    return-void

    .line 287
    :cond_0
    const/16 v3, 0x258

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    goto :goto_0
.end method

.method private isSettingsButtonArea(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 1609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1610
    .local v1, rightNow:Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    if-nez v2, :cond_0

    move v2, v4

    .line 1622
    :goto_0
    return v2

    .line 1614
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1615
    .local v0, rect:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1616
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1617
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1618
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1619
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1620
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1622
    goto :goto_0
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 1653
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1654
    return-void
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v12

    .line 1659
    if-eqz v12, :cond_1

    const/4 v4, 0x1

    move v13, v4

    .line 1660
    :goto_0
    if-eqz v13, :cond_2

    .line 1661
    instance-of v4, v12, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v4, :cond_2

    .line 1662
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v4, v0

    .line 1663
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/UserFolder;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1710
    :cond_0
    :goto_1
    return-void

    .line 1659
    :cond_1
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 1669
    :cond_2
    check-cast p4, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1673
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1687
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1676
    :pswitch_0
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide v4, v0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v4, v0

    if-eqz v4, :cond_6

    .line 1678
    new-instance v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    check-cast p4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1680
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const v6, 0x7f030001

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 p4, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    move-object/from16 p4, v4

    .line 1690
    :goto_3
    if-eqz p6, :cond_4

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p5

    move-object v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 1691
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1692
    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 1693
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v4, :cond_0

    .line 1694
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p5

    move-object v1, v9

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1695
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1697
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1699
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object p1, v0

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 1706
    :cond_3
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v6, -0x64

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move v9, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move v10, v0

    move-object/from16 v5, p4

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1709
    if-eqz v13, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_1

    .line 1683
    :pswitch_1
    const v6, 0x7f030007

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v5, v0

    invoke-static {v6, v7, v4, v5}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v4

    move-object v9, v4

    .line 1685
    goto :goto_3

    .line 1690
    :cond_4
    const/4 v4, -0x1

    goto :goto_4

    .line 1701
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    if-eq p1, v4, :cond_3

    .line 1702
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 p5, v0

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_5

    :cond_6
    move-object/from16 v4, p4

    goto/16 :goto_2

    .line 1673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 1456
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1457
    return-void
.end method

.method private updateWallpaperOffset(I)V
    .locals 11
    .parameter "scrollRange"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v9

    int-to-float v6, v6

    div-float v5, v10, v6

    .line 608
    .local v5, xStep:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v7, v5, v8

    if-nez v7, :cond_2

    move v7, v10

    :goto_0
    invoke-virtual {v6, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 611
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 612
    .local v3, scrollX:I
    sub-int v6, v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v0, v6, v3

    .line 614
    .local v0, availableToScroll:I
    if-gez v3, :cond_3

    .line 615
    const/4 v3, 0x0

    .line 620
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 622
    .local v4, token:Landroid/os/IBinder;
    if-eqz v4, :cond_1

    .line 623
    if-nez p1, :cond_4

    .line 624
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v7, 0x3f00

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 634
    :cond_1
    :goto_2
    return-void

    .end local v0           #availableToScroll:I
    .end local v1           #count:I
    .end local v3           #scrollX:I
    .end local v4           #token:Landroid/os/IBinder;
    :cond_2
    move v7, v5

    .line 608
    goto :goto_0

    .line 616
    .restart local v0       #availableToScroll:I
    .restart local v1       #count:I
    .restart local v3       #scrollX:I
    :cond_3
    if-gtz v0, :cond_0

    .line 617
    sub-int v6, v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int v3, v6, v7

    goto :goto_1

    .line 626
    .restart local v4       #token:Landroid/os/IBinder;
    :cond_4
    int-to-float v6, v3

    int-to-float v7, p1

    div-float v2, v6, v7

    .line 631
    .local v2, offset:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6, v4, v2, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1726
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 1727
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1728
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_1

    move v3, v6

    .line 1729
    .local v3, spanX:I
    :goto_0
    if-nez v0, :cond_2

    move v4, v6

    .line 1731
    .local v4, spanY:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v5, :cond_0

    .line 1732
    if-nez v0, :cond_3

    move-object v1, v7

    .line 1733
    .local v1, ignoreView:Landroid/view/View;
    :goto_2
    invoke-virtual {v2, v7, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1736
    .end local v1           #ignoreView:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v5

    return v5

    .line 1728
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    :cond_1
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v3, v5

    goto :goto_0

    .line 1729
    .restart local v3       #spanX:I
    :cond_2
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v4, v5

    goto :goto_1

    .line 1732
    .restart local v4       #spanY:I
    :cond_3
    iget-object v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v1, v5

    goto :goto_2
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 1550
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1551
    .local v5, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 1553
    .local v7, result:[I
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 1554
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    move-object v0, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1555
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 992
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 994
    .local v0, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v0, :cond_2

    .line 995
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 996
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 997
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 998
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1009
    .end local v0           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1000
    .restart local v0       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 1001
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1002
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1006
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 458
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 459
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 473
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 474
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 488
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 489
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 504
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    if-lt p2, v5, :cond_2

    .line 506
    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item in db lies on nonexistent screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Screen count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Item will be deleted. Iteminfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    .line 510
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 511
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 541
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 520
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 521
    .local v3, group:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    .line 522
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 526
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3
    if-nez v4, :cond_5

    .line 527
    new-instance v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-direct {v4, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 534
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_1
    if-eqz p7, :cond_6

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, p1, v5, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 535
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v5, :cond_4

    .line 536
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 539
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 540
    .local v2, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto :goto_0

    .line 529
    .end local v2           #folder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_5
    iput p3, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 530
    iput p4, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 531
    iput p5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 532
    iput p6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 534
    :cond_6
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 331
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 339
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 343
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 347
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 351
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 323
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 327
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 355
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1883
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method clearChildrenCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1285
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1286
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1287
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1288
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1291
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1292
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_1

    .line 1293
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1295
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 645
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-eq v1, v4, :cond_1

    .line 646
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 648
    .local v0, count:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 649
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 651
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 652
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 653
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 654
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 655
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v1, v5, :cond_6

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 661
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 668
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0

    .line 659
    :cond_5
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1

    .line 663
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v1, :cond_4

    .line 664
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 739
    const/4 v7, 0x0

    .line 743
    .local v7, restore:Z
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0

    .line 749
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v8

    if-gez v8, :cond_0

    .line 757
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    if-eqz v8, :cond_5

    .line 758
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 759
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v8, :cond_4

    .line 760
    new-instance v8, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    .line 767
    :cond_4
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 768
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 771
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 773
    .local v0, childCount:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v8, v11, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v5, v11

    .line 775
    .local v5, fastDraw:Z
    :goto_1
    if-eqz v5, :cond_9

    .line 776
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 805
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 808
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    if-eqz v8, :cond_7

    .line 809
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMEIText(Landroid/graphics/Canvas;)V

    .line 812
    :cond_7
    if-eqz v7, :cond_0

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .end local v5           #fastDraw:Z
    :cond_8
    move v5, v12

    .line 773
    goto :goto_1

    .line 778
    .restart local v5       #fastDraw:Z
    :cond_9
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    sub-int v2, v8, v9

    .line 779
    .local v2, diff:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v3

    .line 781
    .local v3, drawingTime:J
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ltz v8, :cond_c

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v11, :cond_c

    .line 783
    if-lez v2, :cond_b

    .line 784
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int v9, v0, v11

    if-ge v8, v9, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 788
    :cond_a
    :goto_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 789
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 786
    :cond_b
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v8, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 792
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 793
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 794
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 793
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 976
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 987
    :goto_0
    return v0

    .line 981
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 984
    goto :goto_0

    .line 987
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public drawWallpaperImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "canvas"
    .parameter "drawDst"

    .prologue
    const/4 v10, 0x1

    .line 684
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move v7, v8

    .line 687
    .local v7, wallpaperDrawableWidth:I
    :goto_0
    const/4 v0, 0x0

    .line 689
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 690
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageMenuWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 697
    :cond_0
    :goto_1
    if-eqz v0, :cond_7

    .line 699
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 700
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 701
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    iput v7, v8, Landroid/graphics/Rect;->right:I

    .line 702
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v10

    mul-int v4, v8, v9

    .line 705
    .local v4, scrollXMax:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 706
    .local v3, scrollX:I
    if-gez v3, :cond_1

    const/4 v3, 0x0

    .line 707
    :cond_1
    if-le v3, v4, :cond_2

    move v3, v4

    .line 709
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 710
    .local v2, savedCanvas:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v5, v7, v8

    .line 711
    .local v5, scrollableWidth:I
    const/4 v6, 0x0

    .line 712
    .local v6, translateX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    if-le v8, v10, :cond_3

    .line 713
    neg-int v8, v5

    int-to-float v8, v8

    int-to-float v9, v3

    int-to-float v10, v4

    div-float/2addr v9, v10

    mul-float v6, v8, v9

    .line 717
    :cond_3
    const/4 v1, 0x0

    .line 718
    .local v1, fillOuterSpace:Z
    if-gtz v5, :cond_4

    .line 720
    const/4 v1, 0x1

    .line 721
    int-to-float v8, v5

    const/high16 v9, -0x4100

    mul-float v6, v8, v9

    .line 723
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 724
    const/4 v1, 0x1

    .line 726
    :cond_5
    if-eqz v1, :cond_6

    .line 727
    const/high16 v8, -0x100

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 731
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 732
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 733
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 735
    .end local v1           #fillOuterSpace:Z
    .end local v2           #savedCanvas:I
    .end local v3           #scrollX:I
    .end local v4           #scrollXMax:I
    .end local v5           #scrollableWidth:I
    .end local v6           #translateX:F
    :cond_7
    return-void

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v7           #wallpaperDrawableWidth:I
    :cond_8
    move v7, v10

    .line 684
    goto :goto_0

    .line 694
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #wallpaperDrawableWidth:I
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1261
    if-le p1, p2, :cond_0

    .line 1262
    move p1, p2

    .line 1263
    move p2, p1

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1268
    .local v0, count:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1269
    sub-int v4, v0, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1271
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1272
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1273
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1274
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1278
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_2

    .line 1279
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1280
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->buildDrawingCache(Z)V

    .line 1282
    :cond_2
    return-void
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 3
    .parameter "occupied"

    .prologue
    const/4 v2, 0x0

    .line 560
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 561
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    .line 564
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 1847
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 1848
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1849
    .local v3, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 1850
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 1851
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1852
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1853
    .local v6, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v9, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v10

    if-ne v9, v10, :cond_0

    iget v9, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v10

    if-ne v9, v10, :cond_0

    instance-of v9, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v9, :cond_0

    .line 1854
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    move-object v4, v0

    .line 1855
    .local v4, f:Lcom/sec/android/app/twlauncher/Folder;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 1861
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #f:Lcom/sec/android/app/twlauncher/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 1850
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1847
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1861
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 379
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v6

    .line 380
    .local v4, index:I
    :goto_0
    const/4 v2, 0x0

    .line 381
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 382
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 386
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v8

    .line 395
    :goto_2
    return-object v6

    .line 379
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #index:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v4, v6

    goto :goto_0

    .line 384
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #index:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 388
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 389
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 391
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v6, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget v6, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v7

    if-ne v6, v7, :cond_3

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v6, :cond_3

    .line 392
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v6, v0

    goto :goto_2

    .line 388
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_4
    move-object v6, v8

    .line 395
    goto :goto_2
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .locals 8
    .parameter "screen"

    .prologue
    const/4 v7, 0x0

    .line 362
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 363
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v2, :cond_0

    move-object v5, v7

    .line 372
    :goto_0
    return-object v5

    .line 364
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 365
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 366
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 368
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    if-ne v5, v6, :cond_1

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v5, :cond_1

    .line 369
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    goto :goto_0

    .line 365
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    move-object v5, v7

    .line 372
    goto :goto_0
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 400
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 403
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 404
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 405
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 406
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 408
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v9

    if-ne v8, v9, :cond_1

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_1

    .line 409
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 405
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 415
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    return-object v3
.end method

.method getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1832
    const/4 v2, -0x1

    .line 1833
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1834
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1835
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1836
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1837
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 1842
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 1836
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v4, v2

    .line 1842
    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 1866
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1867
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1868
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 1869
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1870
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1871
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v0

    .line 1876
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 1869
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1866
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1876
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method initAddWidget()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 832
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .locals 2

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 2159
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 2160
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2161
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1627
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1631
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1650
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1638
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1562
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 1563
    if-eq p1, p0, :cond_2

    .line 1564
    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    .line 1605
    :cond_1
    :goto_0
    return-void

    .line 1567
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v0

    .line 1570
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    if-eq v4, v0, :cond_5

    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1572
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1575
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1576
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop()  both cell and cell parent are NULL : originalCellLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cell.getParent()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1579
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1580
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop() cell screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1585
    :cond_4
    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    .line 1587
    :cond_5
    sub-int v7, p2, p4

    sub-int v8, p3, p5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v6, p0

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v5, v11, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1592
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1593
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    iget v5, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1597
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v0, :cond_6

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1601
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1602
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_0

    .line 1569
    :cond_7
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v4, v0

    goto/16 :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 4
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1797
    if-eqz p2, :cond_1

    .line 1798
    if-eq p1, p0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 1799
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1800
    .local v1, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1801
    .local v0, cell:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1804
    .local v2, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1813
    .end local v0           #cell:Landroid/view/View;
    .end local v1           #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1814
    return-void

    .line 1807
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 1808
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1809
    .restart local v1       #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 1035
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v1

    .line 1036
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v5

    .line 1257
    :goto_0
    return v0

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 1052
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1057
    if-ne v0, v6, :cond_4

    .line 1058
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v1, v7, :cond_3

    move v0, v7

    .line 1059
    goto :goto_0

    .line 1060
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v1, v6, :cond_4

    move v0, v5

    .line 1061
    goto :goto_0

    .line 1065
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1069
    packed-switch v0, :pswitch_data_0

    .line 1257
    :cond_5
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v0, v7, :cond_17

    move v0, v7

    goto :goto_0

    .line 1071
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_9

    .line 1072
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_6

    .line 1073
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1077
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1080
    :cond_6
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1082
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1083
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1084
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1085
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1087
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinchStart:I

    sub-int v6, v0, v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v6

    sub-int v2, v1, v3

    sub-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v0, v4, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    .line 1089
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-ltz v0, :cond_8

    :cond_7
    move v0, v5

    goto/16 :goto_0

    .line 1091
    :cond_8
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    if-le v0, v8, :cond_5

    .line 1092
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v7

    .line 1095
    goto/16 :goto_0

    .line 1114
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1118
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 1120
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 1121
    if-le v0, v3, :cond_b

    move v4, v7

    .line 1122
    :goto_2
    if-le v2, v3, :cond_c

    move v3, v7

    .line 1124
    :goto_3
    if-nez v4, :cond_a

    if-eqz v3, :cond_f

    .line 1126
    :cond_a
    if-ge v0, v2, :cond_d

    if-eqz v3, :cond_d

    .line 1127
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1139
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    .line 1140
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1144
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :cond_b
    move v4, v5

    .line 1121
    goto :goto_2

    :cond_c
    move v3, v5

    .line 1122
    goto :goto_3

    .line 1128
    :cond_d
    if-eqz v4, :cond_e

    .line 1130
    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1131
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    goto :goto_4

    .line 1135
    :cond_e
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto :goto_4

    .line 1148
    :cond_f
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto/16 :goto_1

    .line 1155
    :pswitch_2
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1156
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    .line 1157
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1158
    const-wide/16 v3, 0x4e20

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->reserveIndicatorHideTime(J)V

    .line 1161
    float-to-int v0, v1

    float-to-int v3, v2

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonArea(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1162
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 1169
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    :cond_11
    move v0, v7

    :goto_5
    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_12
    move v0, v5

    goto :goto_5

    .line 1176
    :pswitch_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    if-eqz v0, :cond_13

    float-to-int v0, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonArea(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1177
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v5

    .line 1180
    goto/16 :goto_0

    .line 1183
    :cond_13
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v0, v7, :cond_14

    .line 1185
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1186
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1194
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 1195
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1196
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1198
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_5

    .line 1199
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-ltz v0, :cond_16

    :cond_15
    move v0, v5

    goto/16 :goto_0

    .line 1201
    :cond_16
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    if-le v0, v8, :cond_5

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    goto/16 :goto_1

    .line 1221
    :pswitch_4
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-nez v0, :cond_5

    .line 1222
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1223
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1224
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1225
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1227
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1228
    sub-int v4, v0, v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v4

    sub-int v2, v1, v3

    sub-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinchStart:I

    .line 1234
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    .line 1235
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1239
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :cond_17
    move v0, v5

    .line 1257
    goto/16 :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, childLeft:I
    const/4 v2, 0x0

    .line 929
    .local v2, childTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 930
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 931
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 932
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 933
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 934
    .local v3, childWidth:I
    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 935
    add-int/2addr v1, v3

    .line 930
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 939
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator()V

    .line 940
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v4, 0x0

    const-string v3, "Workspace can only be used in EXACTLY mode."

    .line 893
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 895
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 896
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 897
    if-eq v1, v2, :cond_0

    .line 898
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 902
    if-eq v1, v2, :cond_1

    .line 903
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    move v2, v4

    .line 908
    :goto_0
    if-ge v2, v1, :cond_2

    .line 909
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 914
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 915
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v2

    if-nez v2, :cond_3

    .line 916
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 919
    :cond_3
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirstLayout:Z

    .line 920
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 922
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 956
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 958
    .local v2, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_0

    .line 959
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .line 971
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    return v3

    .line 962
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 963
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 967
    .local v1, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 968
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 971
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 965
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1532
    move-object v0, p1

    check-cast v0, Landroid/view/AbsSavedState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1533
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v2, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    move-object v1, v0

    .line 1538
    .local v1, savedState:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v2, :cond_0

    .line 1539
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 1540
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1525
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1526
    .local v0, state:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    .line 1527
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-string v3, ","

    .line 305
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 319
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1299
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1300
    :cond_0
    const/4 v11, 0x0

    .line 1433
    :goto_0
    return v11

    .line 1303
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_2

    .line 1304
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1306
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1309
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1310
    .local v9, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1312
    .local v10, y:F
    packed-switch v0, :pswitch_data_0

    .line 1433
    :cond_3
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 1318
    :pswitch_0
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1319
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1326
    :cond_4
    :goto_2
    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1327
    iput v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    goto :goto_1

    .line 1321
    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1322
    :cond_6
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    float-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    float-to-int v13, v10

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto :goto_2

    .line 1331
    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1332
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v11, :cond_7

    .line 1333
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto :goto_1

    .line 1337
    :cond_7
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    sub-float/2addr v11, v9

    float-to-int v2, v11

    .line 1338
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    sub-float/2addr v11, v10

    float-to-int v3, v11

    .line 1340
    .local v3, deltaY:I
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    if-eqz v11, :cond_9

    .line 1341
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    if-gt v11, v12, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    if-le v11, v12, :cond_3

    .line 1342
    :cond_8
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1347
    :cond_9
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1350
    :cond_a
    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    .line 1352
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1353
    .local v1, childCount:I
    const/4 v11, 0x1

    sub-int v11, v1, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v12

    mul-int v5, v11, v12

    .line 1354
    .local v5, maxScrollX:I
    if-gez v2, :cond_c

    .line 1355
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    neg-int v6, v11

    .line 1356
    .local v6, minScrollX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-le v11, v6, :cond_3

    .line 1357
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-lez v11, :cond_b

    .line 1358
    const/4 v11, 0x0

    invoke-virtual {p0, v2, v11}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1362
    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1363
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1360
    :cond_b
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v11, v6, v11

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_3

    .line 1366
    .end local v6           #minScrollX:I
    :cond_c
    if-lez v2, :cond_3

    .line 1367
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v5, v11, v12

    .line 1368
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-ge v11, v5, :cond_3

    .line 1369
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v11, v5, v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1370
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1378
    .end local v1           #childCount:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v5           #maxScrollX:I
    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 1379
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    if-eqz v11, :cond_14

    .line 1380
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    float-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    float-to-int v13, v10

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v4

    .line 1381
    .local v4, index:I
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v11, :cond_10

    .line 1382
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    if-nez v11, :cond_e

    .line 1383
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1384
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1385
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1386
    :cond_d
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1387
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1388
    const/4 v11, -0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 1405
    :cond_e
    :goto_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1423
    .end local v4           #index:I
    :goto_5
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 1424
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1426
    :cond_f
    const-wide/16 v11, 0x7d0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->reserveIndicatorHideTime(J)V

    .line 1427
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 1390
    .restart local v4       #index:I
    :cond_10
    const/4 v11, -0x1

    if-eq v4, v11, :cond_11

    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    if-ne v4, v11, :cond_11

    .line 1391
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_4

    .line 1392
    :cond_11
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1393
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    if-eqz v11, :cond_12

    .line 1394
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v11, v12}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto :goto_4

    .line 1396
    :cond_12
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1397
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1398
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1399
    :cond_13
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1400
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1401
    const/4 v11, -0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto :goto_4

    .line 1407
    .end local v4           #index:I
    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1408
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v7, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1409
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v8, v11

    .line 1411
    .local v8, velocityX:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1412
    .restart local v1       #childCount:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    if-le v8, v11, :cond_15

    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ltz v11, :cond_15

    .line 1414
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_5

    .line 1415
    :cond_15
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    neg-int v11, v11

    if-ge v8, v11, :cond_16

    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v12, 0x1

    sub-int v12, v1, v12

    if-gt v11, v12, :cond_16

    .line 1417
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto/16 :goto_5

    .line 1419
    :cond_16
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_5

    .line 1430
    .end local v1           #childCount:I
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v8           #velocityX:I
    :pswitch_3
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method pauseScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 2165
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2166
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2175
    :cond_0
    return-void

    .line 2167
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2168
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2169
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2170
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2171
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2172
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInScreen(Landroid/view/View;I)V
    .locals 5
    .parameter "child"
    .parameter "screen"

    .prologue
    .line 545
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 546
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 551
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 552
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 556
    :cond_2
    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeInScreen group:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  child:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1992
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 1993
    .local v7, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1994
    .local v4, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 1996
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1997
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1998
    .local v6, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 1999
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1998
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2002
    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    .line 2003
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2006
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace$3;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/CellLayout;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2002
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2115
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 945
    .local v0, screen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 947
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 949
    :cond_1
    const/4 v1, 0x1

    .line 951
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reserveIndicatorHideTime(J)V
    .locals 5
    .parameter "millis"

    .prologue
    .line 1012
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1016
    .local v0, hideTime:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-nez v3, :cond_0

    .line 1017
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    .line 1019
    :cond_0
    const/16 v3, 0xe

    long-to-int v4, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1020
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1022
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 1028
    .local v2, timerTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1029
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v3, 0x64

    add-long/2addr v3, p1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1030
    return-void
.end method

.method resume(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 2192
    move v0, p1

    .line 2193
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 2194
    .local v2, width:I
    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    .line 2195
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 2196
    .local v1, scroller:Landroid/widget/Scroller;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2197
    :cond_0
    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 2199
    .end local v1           #scroller:Landroid/widget/Scroller;
    :cond_1
    return-void
.end method

.method resumeScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 2179
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2180
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2189
    :cond_0
    return-void

    .line 2181
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2182
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2183
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2184
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2185
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2186
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1817
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1818
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1821
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 1824
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1825
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1829
    :cond_0
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1891
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1892
    return-void
.end method

.method setAtuoScrollScreen(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 2248
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 2249
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 2250
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 2252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2253
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2254
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 437
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 439
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 441
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1791
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1787
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 594
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 595
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 596
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_0
    return-void
.end method

.method setShowIndicator()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 445
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1460
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 1461
    return-void
.end method

.method snapToScreen(II)V
    .locals 9
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1464
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1465
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1470
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_4

    move v6, v1

    .line 1471
    .local v6, changingScreens:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1472
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1475
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 1476
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_2

    .line 1477
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 1480
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 1481
    .local v8, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v3, v8, v0

    .line 1483
    .local v3, delta:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 1485
    if-gez p2, :cond_3

    .line 1486
    iget p2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 1488
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 1490
    return-void

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_4
    move v6, v2

    .line 1470
    goto :goto_0
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter "cellInfo"

    .prologue
    .line 1493
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1497
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v4, :cond_0

    .line 1505
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1507
    .local v3, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 1508
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1511
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1513
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1514
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1516
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1518
    .local v2, current:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1519
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    const/4 v5, 0x0

    invoke-interface {v4, v1, p0, v3, v5}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 1520
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_0
.end method

.method stopAutoScrollRunnable()V
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2287
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2120
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2121
    const/4 v5, 0x0

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_3

    .line 2122
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2123
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v11

    .line 2124
    const/4 v6, 0x0

    move v12, v6

    :goto_1
    if-ge v12, v11, :cond_2

    .line 2125
    invoke-virtual {v5, v12}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2126
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 2127
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 2128
    check-cast v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 2132
    iget-object v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2133
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 2134
    iget v14, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v14, :cond_1

    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v13, :cond_1

    .line 2136
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2137
    const/4 v7, 0x0

    move v15, v7

    :goto_2
    if-ge v15, v14, :cond_1

    .line 2138
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2139
    iget-object v7, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v7, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2141
    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    const/16 v16, 0x0

    new-instance v17, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object/from16 v18, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2137
    :cond_0
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    goto :goto_2

    .line 2124
    :cond_1
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto/16 :goto_1

    .line 2121
    :cond_2
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto/16 :goto_0

    .line 2150
    :cond_3
    return-void
.end method

.method updateWallpaperOffset()V
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 602
    return-void
.end method

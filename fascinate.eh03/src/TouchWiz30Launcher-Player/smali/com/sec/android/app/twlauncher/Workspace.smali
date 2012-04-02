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
.field private LAUNCHER_LOOP_WORKSPACE:Z

.field private final LOOP_LEFT:I

.field private final LOOP_NONE:I

.field private final LOOP_RIGHT:I

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

.field private mIsWallpaperLooping:Z

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

.field private mSnaptoScreenStartTime:J

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

.field private mWallpaperLooingState:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 99
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirstLayout:Z

    .line 102
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 106
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 115
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 127
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 138
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 140
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    .line 141
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 165
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 176
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    .line 178
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 187
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 188
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 189
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 215
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    .line 216
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_NONE:I

    .line 217
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_LEFT:I

    .line 218
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_RIGHT:I

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 222
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 730
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    .line 731
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    .line 2518
    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Workspace$4;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    .line 247
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 248
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 250
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 252
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    .line 253
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace()V

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$510(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
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
    .line 78
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 609
    :cond_0
    return-void
.end method

.method private drawDefaultIMEIText(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 928
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 930
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 931
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mBootVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 932
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

    .line 933
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

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 936
    return-void
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v2

    .line 974
    .local v2, updatedScreen:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 975
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 989
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 990
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 999
    .local v1, redraw:Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0
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
    .line 2009
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 2010
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2014
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
    .line 1949
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v0, v1

    .line 1950
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object p0

    .line 1949
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

    .line 1640
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 1641
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1642
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1643
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 1646
    .local v3, scrollX:I
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    .line 1647
    if-gez v3, :cond_0

    .line 1648
    div-int/lit8 v5, v2, 0x2

    sub-int v5, v3, v5

    div-int v4, v5, v2

    .line 1666
    :goto_0
    return v4

    .line 1650
    :cond_0
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 1655
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 1657
    .local v0, availableToScroll:I
    if-gez v3, :cond_2

    .line 1658
    const/4 v4, 0x0

    goto :goto_0

    .line 1659
    :cond_2
    if-gtz v0, :cond_3

    .line 1660
    sub-int v4, v1, v7

    goto :goto_0

    .line 1662
    :cond_3
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

    .line 943
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v4, :cond_0

    .line 944
    new-instance v4, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    .line 948
    .local v3, pageCount:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 950
    .local v2, indicatorWidth:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 951
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 952
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 953
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(I)V

    .line 954
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 955
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v4, :cond_2

    .line 956
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 961
    :goto_0
    mul-int v4, v2, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    if-lez v3, :cond_1

    sub-int v6, v3, v7

    :cond_1
    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .line 962
    .local v1, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    .line 963
    return-void

    .line 958
    .end local v1           #indicatorTotalWidth:I
    :cond_2
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 262
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 263
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 264
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 266
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 269
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 270
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    .line 271
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 274
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 275
    const v3, 0x7f02002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 276
    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 278
    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    .line 279
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    .line 281
    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mChildTopOffset:I

    .line 283
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 287
    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    .line 289
    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    .line 290
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 291
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x7f07000d

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 294
    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    .line 295
    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    .line 296
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    .line 297
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 303
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    .line 305
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    .line 309
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_0

    .line 310
    const/16 v3, 0x190

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 320
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    .line 321
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 322
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 323
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    return-void

    .line 312
    :cond_0
    const/16 v3, 0x258

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

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
    .line 1885
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1886
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
    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v12

    .line 1891
    if-eqz v12, :cond_1

    const/4 v4, 0x1

    move v13, v4

    .line 1892
    :goto_0
    if-eqz v13, :cond_2

    .line 1893
    instance-of v4, v12, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v4, :cond_2

    .line 1894
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v4, v0

    .line 1895
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/UserFolder;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1942
    :cond_0
    :goto_1
    return-void

    .line 1891
    :cond_1
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 1901
    :cond_2
    check-cast p4, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1905
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1919
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

    .line 1908
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

    .line 1910
    new-instance v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    check-cast p4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1912
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

    .line 1922
    :goto_3
    if-eqz p6, :cond_4

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p5

    move-object v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 1923
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1924
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

    .line 1925
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v4, :cond_0

    .line 1926
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p5

    move-object v1, v9

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1927
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1929
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1931
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object p1, v0

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 1938
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

    .line 1941
    if-eqz v13, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_1

    .line 1915
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

    .line 1917
    goto :goto_3

    .line 1922
    :cond_4
    const/4 v4, -0x1

    goto :goto_4

    .line 1933
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    if-eq p1, v4, :cond_3

    .line 1934
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

    .line 1905
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
    .line 1670
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1671
    return-void
.end method

.method private updateWallpaperOffset(I)V
    .locals 11
    .parameter "scrollRange"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v9

    int-to-float v6, v6

    div-float v5, v10, v6

    .line 633
    .local v5, xStep:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v7, v5, v8

    if-nez v7, :cond_2

    move v7, v10

    :goto_0
    invoke-virtual {v6, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 635
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 636
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 637
    .local v3, scrollX:I
    sub-int v6, v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v0, v6, v3

    .line 639
    .local v0, availableToScroll:I
    if-gez v3, :cond_3

    .line 640
    const/4 v3, 0x0

    .line 645
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 647
    .local v4, token:Landroid/os/IBinder;
    if-eqz v4, :cond_1

    .line 648
    if-nez p1, :cond_4

    .line 649
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v7, 0x3f00

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 659
    :cond_1
    :goto_2
    return-void

    .end local v0           #availableToScroll:I
    .end local v1           #count:I
    .end local v3           #scrollX:I
    .end local v4           #token:Landroid/os/IBinder;
    :cond_2
    move v7, v5

    .line 633
    goto :goto_0

    .line 641
    .restart local v0       #availableToScroll:I
    .restart local v1       #count:I
    .restart local v3       #scrollX:I
    :cond_3
    if-gtz v0, :cond_0

    .line 642
    sub-int v6, v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int v3, v6, v7

    goto :goto_1

    .line 651
    .restart local v4       #token:Landroid/os/IBinder;
    :cond_4
    int-to-float v6, v3

    int-to-float v7, p1

    div-float v2, v6, v7

    .line 656
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

    .line 1958
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 1959
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1960
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_1

    move v3, v6

    .line 1961
    .local v3, spanX:I
    :goto_0
    if-nez v0, :cond_2

    move v4, v6

    .line 1963
    .local v4, spanY:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v5, :cond_0

    .line 1964
    if-nez v0, :cond_3

    move-object v1, v7

    .line 1965
    .local v1, ignoreView:Landroid/view/View;
    :goto_2
    invoke-virtual {v2, v7, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1968
    .end local v1           #ignoreView:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v5

    return v5

    .line 1960
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    :cond_1
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v3, v5

    goto :goto_0

    .line 1961
    .restart local v3       #spanX:I
    :cond_2
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v4, v5

    goto :goto_1

    .line 1964
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
    .line 1782
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1783
    .local v5, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 1785
    .local v7, result:[I
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 1786
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    move-object v0, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1787
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

    .line 1113
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1115
    .local v0, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v0, :cond_2

    .line 1116
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1117
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1118
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 1119
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1130
    .end local v0           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1121
    .restart local v0       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 1122
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1123
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1127
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
    .line 483
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 484
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
    .line 498
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 499
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
    .line 513
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 514
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
    .line 529
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    if-lt p2, v5, :cond_2

    .line 531
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

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    .line 535
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 536
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

    .line 566
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 545
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 546
    .local v3, group:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    .line 547
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 551
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3
    if-nez v4, :cond_5

    .line 552
    new-instance v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-direct {v4, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 559
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_1
    if-eqz p7, :cond_6

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, p1, v5, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 560
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v5, :cond_4

    .line 561
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 564
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 565
    .local v2, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto :goto_0

    .line 554
    .end local v2           #folder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_5
    iput p3, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 555
    iput p4, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 556
    iput p5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 557
    iput p6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 559
    :cond_6
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 356
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 364
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 368
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 372
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 376
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 348
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 352
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 380
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2134
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method clearChildrenCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1415
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1416
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1417
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1418
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1421
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1422
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_1

    .line 1423
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1425
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 664
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 665
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    .line 668
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 669
    .local v0, count:I
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v1, :cond_0

    if-lt v0, v3, :cond_0

    .line 670
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    .line 671
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 678
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 723
    .end local v0           #count:I
    :cond_2
    :goto_1
    return-void

    .line 672
    .restart local v0       #count:I
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v2, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 673
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    goto :goto_0

    .line 682
    .end local v0           #count:I
    :cond_4
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-eq v1, v6, :cond_2

    .line 683
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 685
    .restart local v0       #count:I
    if-lt v0, v3, :cond_7

    .line 686
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 688
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v1, :cond_7

    if-lt v0, v3, :cond_7

    .line 689
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-gez v1, :cond_9

    .line 690
    sub-int v1, v0, v4

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 694
    :cond_5
    :goto_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v2, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 695
    :cond_6
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_7

    .line 696
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 702
    :cond_7
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 704
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 705
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 706
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v1, v4, :cond_b

    .line 707
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 708
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 712
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 719
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto/16 :goto_1

    .line 691
    :cond_9
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lt v1, v0, :cond_5

    .line 692
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    goto :goto_2

    .line 710
    :cond_a
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_3

    .line 714
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v1, :cond_8

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 813
    const/4 v8, 0x0

    .line 817
    .local v8, restore:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->isClosing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 825
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 828
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v9

    if-gez v9, :cond_0

    .line 836
    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v10

    mul-int v7, v9, v10

    .line 837
    .local v7, maxScrollX:I
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v9, :cond_3

    .line 838
    const/4 v9, 0x1

    if-le v0, v9, :cond_3

    .line 839
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-gez v9, :cond_9

    .line 840
    const/4 v9, 0x1

    sub-int v9, v0, v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 848
    :cond_3
    :goto_1
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    if-eqz v9, :cond_6

    .line 849
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 850
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v9, :cond_5

    .line 851
    new-instance v9, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    .line 858
    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 859
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 864
    :cond_6
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a

    const/4 v9, 0x1

    move v5, v9

    .line 866
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_b

    .line 867
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 913
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 916
    sget-boolean v9, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    if-eqz v9, :cond_8

    .line 917
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMEIText(Landroid/graphics/Canvas;)V

    .line 920
    :cond_8
    if-eqz v8, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 841
    .end local v5           #fastDraw:Z
    :cond_9
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lt v9, v0, :cond_3

    .line 842
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    goto :goto_1

    .line 864
    :cond_a
    const/4 v9, 0x0

    move v5, v9

    goto :goto_2

    .line 869
    .restart local v5       #fastDraw:Z
    :cond_b
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iget v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    sub-int v2, v9, v10

    .line 870
    .local v2, diff:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v3

    .line 872
    .local v3, drawingTime:J
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ltz v9, :cond_10

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ge v9, v0, :cond_10

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v9, :cond_10

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    sub-int v10, v0, v10

    if-ne v9, v10, :cond_10

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-ltz v9, :cond_c

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-le v9, v7, :cond_10

    .line 877
    :cond_c
    if-lez v2, :cond_f

    .line 878
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v10, 0x1

    sub-int v10, v0, v10

    if-ge v9, v10, :cond_d

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 882
    :cond_d
    :goto_4
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 883
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 893
    :cond_e
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x2

    if-lt v0, v9, :cond_7

    .line 894
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-gez v9, :cond_11

    .line 895
    neg-int v9, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 896
    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v9

    mul-int/2addr v9, v0

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 880
    :cond_f
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v9, :cond_d

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_4

    .line 886
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 887
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    if-ge v6, v1, :cond_e

    .line 888
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 887
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 898
    .end local v1           #count:I
    .end local v6           #i:I
    :cond_11
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-le v9, v7, :cond_7

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v9

    mul-int/2addr v9, v0

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 900
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 901
    neg-int v9, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 1097
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 1108
    :goto_0
    return v0

    .line 1102
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 1105
    goto :goto_0

    .line 1108
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public drawWallpaperImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "canvas"
    .parameter "drawDst"

    .prologue
    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move v12, v13

    .line 738
    .local v12, wallpaperDrawableWidth:I
    :goto_0
    const/4 v4, 0x0

    .line 740
    .local v4, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageMenuWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 742
    if-eqz v4, :cond_0

    .line 743
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 748
    :cond_0
    :goto_1
    if-eqz v4, :cond_9

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    const/4 v14, 0x0

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    iput v12, v13, Landroid/graphics/Rect;->right:I

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    mul-int v9, v13, v14

    .line 756
    .local v9, scrollXMax:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v8, v0

    .line 757
    .local v8, scrollX:I
    if-gez v8, :cond_1

    const/4 v8, 0x0

    .line 758
    :cond_1
    if-le v8, v9, :cond_2

    move v8, v9

    .line 760
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 761
    .local v7, savedCanvas:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int v10, v12, v13

    .line 762
    .local v10, scrollableWidth:I
    const/4 v11, 0x0

    .line 763
    .local v11, translateX:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    .line 764
    neg-int v13, v10

    int-to-float v13, v13

    int-to-float v14, v8

    int-to-float v15, v9

    div-float/2addr v14, v15

    mul-float v11, v13, v14

    .line 768
    :cond_3
    const/4 v5, 0x0

    .line 769
    .local v5, fillOuterSpace:Z
    if-gtz v10, :cond_4

    .line 771
    const/4 v5, 0x1

    .line 772
    int-to-float v13, v10

    const/high16 v14, -0x4100

    mul-float v11, v13, v14

    .line 774
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 775
    const/4 v5, 0x1

    .line 777
    :cond_5
    if-eqz v5, :cond_6

    .line 778
    const/high16 v13, -0x100

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 783
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move v13, v0

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    move v13, v0

    if-eqz v13, :cond_8

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    move-wide v15, v0

    sub-long/2addr v13, v15

    long-to-int v3, v13

    .line 785
    .local v3, current:I
    int-to-float v13, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    move v14, v0

    int-to-float v14, v14

    div-float v6, v13, v14

    .line 787
    .local v6, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    move v13, v0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    .line 788
    const/high16 v13, 0x3f80

    cmpl-float v13, v6, v13

    if-lez v13, :cond_7

    .line 789
    const/high16 v6, 0x3f80

    .line 790
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 791
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 793
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v6

    neg-float v11, v13

    .line 805
    .end local v3           #current:I
    .end local v6           #progress:F
    :cond_8
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 806
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 807
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 809
    .end local v5           #fillOuterSpace:Z
    .end local v7           #savedCanvas:I
    .end local v8           #scrollX:I
    .end local v9           #scrollXMax:I
    .end local v10           #scrollableWidth:I
    .end local v11           #translateX:F
    :cond_9
    return-void

    .line 735
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #wallpaperDrawableWidth:I
    :cond_a
    const/4 v13, 0x1

    move v12, v13

    goto/16 :goto_0

    .line 745
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    .restart local v12       #wallpaperDrawableWidth:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_1

    .line 794
    .restart local v3       #current:I
    .restart local v5       #fillOuterSpace:Z
    .restart local v6       #progress:F
    .restart local v7       #savedCanvas:I
    .restart local v8       #scrollX:I
    .restart local v9       #scrollXMax:I
    .restart local v10       #scrollableWidth:I
    .restart local v11       #translateX:F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 795
    const/high16 v13, 0x3f80

    cmpl-float v13, v6, v13

    if-lez v13, :cond_d

    .line 796
    const/high16 v6, 0x3f80

    .line 797
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 798
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 800
    :cond_d
    const/high16 v13, 0x3f80

    sub-float/2addr v13, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    neg-float v11, v13

    goto :goto_2
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1391
    if-le p1, p2, :cond_0

    .line 1392
    move p1, p2

    .line 1393
    move p2, p1

    .line 1396
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1398
    .local v0, count:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1399
    sub-int v4, v0, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1401
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1402
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1403
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1404
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1407
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1408
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_2

    .line 1409
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1410
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->buildDrawingCache(Z)V

    .line 1412
    :cond_2
    return-void
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 3
    .parameter "occupied"

    .prologue
    const/4 v2, 0x0

    .line 585
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 586
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    .line 589
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 2098
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 2099
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2100
    .local v3, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2101
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 2102
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2103
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 2104
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

    .line 2105
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    move-object v4, v0

    .line 2106
    .local v4, f:Lcom/sec/android/app/twlauncher/Folder;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 2112
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #f:Lcom/sec/android/app/twlauncher/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 2101
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2098
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2112
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

    .line 404
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v6

    .line 405
    .local v4, index:I
    :goto_0
    const/4 v2, 0x0

    .line 406
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 407
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 411
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v8

    .line 420
    :goto_2
    return-object v6

    .line 404
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #index:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v4, v6

    goto :goto_0

    .line 409
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #index:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 413
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 414
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 416
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

    .line 417
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v6, v0

    goto :goto_2

    .line 413
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_4
    move-object v6, v8

    .line 420
    goto :goto_2
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .locals 8
    .parameter "screen"

    .prologue
    const/4 v7, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 388
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v2, :cond_0

    move-object v5, v7

    .line 397
    :goto_0
    return-object v5

    .line 389
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 390
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 391
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 393
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

    .line 394
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    goto :goto_0

    .line 390
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    move-object v5, v7

    .line 397
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
    .line 424
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 425
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 428
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 429
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 430
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 431
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 433
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

    .line 434
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 430
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 440
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
    .line 2468
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2469
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
    .line 2083
    const/4 v2, -0x1

    .line 2084
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 2085
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2086
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 2087
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2088
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 2093
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 2087
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

    .line 2093
    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 2116
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 2117
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2118
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2119
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 2120
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 2121
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2122
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v0

    .line 2127
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 2120
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2117
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2127
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
    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 940
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .locals 2

    .prologue
    .line 2414
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 2421
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 2422
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2423
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
    .line 1859
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1863
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
    .line 1874
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1882
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
    .line 1870
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
    .line 1790
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1794
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 1795
    if-eq p1, p0, :cond_2

    .line 1796
    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    .line 1837
    :cond_1
    :goto_0
    return-void

    .line 1799
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v0

    .line 1802
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    if-eq v4, v0, :cond_5

    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1804
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1807
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1808
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

    .line 1810
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1811
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1812
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

    .line 1814
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1817
    :cond_4
    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    .line 1819
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

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v5, v11, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1824
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1825
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1826
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    iget v5, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1829
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v0, :cond_6

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1833
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1834
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_0

    .line 1801
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
    .line 2027
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2029
    if-eqz p2, :cond_1

    .line 2030
    if-eq p1, p0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 2031
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2032
    .local v1, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2033
    .local v0, cell:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2036
    .local v2, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2045
    .end local v0           #cell:Landroid/view/View;
    .end local v1           #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2046
    return-void

    .line 2039
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 2040
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2041
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

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 1156
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v1

    .line 1157
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v5

    .line 1387
    :goto_0
    return v0

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 1173
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1175
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1178
    if-ne v0, v6, :cond_4

    .line 1179
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v1, v7, :cond_3

    move v0, v7

    .line 1180
    goto :goto_0

    .line 1181
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v1, v6, :cond_4

    move v0, v5

    .line 1182
    goto :goto_0

    .line 1186
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1190
    packed-switch v0, :pswitch_data_0

    .line 1387
    :cond_5
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v0, v7, :cond_15

    move v0, v7

    goto :goto_0

    .line 1192
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_9

    .line 1193
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_6

    .line 1194
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1198
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1201
    :cond_6
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1203
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1204
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1205
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1206
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1208
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

    .line 1210
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

    .line 1212
    :cond_8
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    if-le v0, v8, :cond_5

    .line 1213
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v7

    .line 1216
    goto/16 :goto_0

    .line 1235
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1239
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 1241
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 1242
    if-le v0, v3, :cond_b

    move v4, v7

    .line 1243
    :goto_2
    if-le v2, v3, :cond_c

    move v3, v7

    .line 1245
    :goto_3
    if-nez v4, :cond_a

    if-eqz v3, :cond_f

    .line 1247
    :cond_a
    if-ge v0, v2, :cond_d

    if-eqz v3, :cond_d

    .line 1248
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1260
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    .line 1261
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1265
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :cond_b
    move v4, v5

    .line 1242
    goto :goto_2

    :cond_c
    move v3, v5

    .line 1243
    goto :goto_3

    .line 1249
    :cond_d
    if-eqz v4, :cond_e

    .line 1251
    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1252
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    goto :goto_4

    .line 1256
    :cond_e
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto :goto_4

    .line 1269
    :cond_f
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto/16 :goto_1

    .line 1276
    :pswitch_2
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1277
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    .line 1278
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1279
    const-wide/16 v3, 0x4e20

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->reserveIndicatorHideTime(J)V

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-nez v0, :cond_10

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

    if-eq v0, v1, :cond_11

    :cond_10
    move v0, v7

    :goto_5
    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_11
    move v0, v5

    goto :goto_5

    .line 1313
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v0, v7, :cond_12

    .line 1315
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1316
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1318
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

    .line 1324
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 1325
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1326
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1328
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_5

    .line 1329
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-ltz v0, :cond_14

    :cond_13
    move v0, v5

    goto/16 :goto_0

    .line 1331
    :cond_14
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    if-le v0, v8, :cond_5

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    goto/16 :goto_1

    .line 1351
    :pswitch_4
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-nez v0, :cond_5

    .line 1352
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1353
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1354
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1355
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1357
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1358
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

    .line 1364
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    .line 1365
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1369
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :cond_15
    move v0, v5

    .line 1387
    goto/16 :goto_0

    .line 1190
    nop

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
    .line 1047
    const/4 v1, 0x0

    .line 1048
    .local v1, childLeft:I
    const/4 v2, 0x0

    .line 1050
    .local v2, childTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 1051
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1052
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1053
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 1054
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1055
    .local v3, childWidth:I
    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1056
    add-int/2addr v1, v3

    .line 1051
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1060
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator()V

    .line 1061
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

    .line 1014
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1016
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1017
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1018
    if-eq v1, v2, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1023
    if-eq v1, v2, :cond_1

    .line 1024
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    move v2, v4

    .line 1029
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1030
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1034
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

    .line 1035
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1037
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 1040
    :cond_3
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirstLayout:Z

    .line 1041
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 1043
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1077
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 1079
    .local v2, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_0

    .line 1080
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .line 1092
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    return v3

    .line 1083
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1084
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 1088
    .local v1, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1089
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1092
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1086
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
    .line 1764
    move-object v0, p1

    check-cast v0, Landroid/view/AbsSavedState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1765
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v2, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    move-object v1, v0

    .line 1770
    .local v1, savedState:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v2, :cond_0

    .line 1771
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 1772
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1757
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1758
    .local v0, state:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    .line 1759
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

    .line 330
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

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    .line 343
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 344
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1430
    :cond_0
    const/16 v18, 0x0

    .line 1636
    :goto_0
    return v18

    .line 1433
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 1434
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1436
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1439
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 1440
    .local v16, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 1443
    .local v17, y:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1445
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 1450
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 1636
    :cond_5
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 1456
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_7

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1464
    :cond_6
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1465
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    goto :goto_1

    .line 1459
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1460
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto :goto_2

    .line 1469
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1470
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1471
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 1475
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move v5, v0

    .line 1476
    .local v5, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    move/from16 v18, v0

    sub-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v0, v0

    move v6, v0

    .line 1478
    .local v6, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1479
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 1480
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1487
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1488
    if-gez v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v19

    mul-int v18, v18, v19

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1489
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1494
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1497
    :cond_f
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 1500
    .local v4, childCount:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v19

    mul-int v11, v18, v19

    .line 1502
    .local v11, maxScrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    const/16 v18, 0x2

    move v0, v4

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    .line 1503
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto/16 :goto_1

    .line 1507
    :cond_10
    if-gez v5, :cond_12

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    neg-int v0, v0

    move v12, v0

    .line 1509
    .local v12, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v12

    if-le v0, v1, :cond_5

    .line 1510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    if-lez v18, :cond_11

    .line 1511
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1515
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v18

    if-nez v18, :cond_5

    .line 1516
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1513
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    sub-int v18, v12, v18

    move/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_3

    .line 1519
    .end local v12           #minScrollX:I
    :cond_12
    if-lez v5, :cond_5

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v11, v18, v19

    .line 1521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v11

    if-ge v0, v1, :cond_5

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    move/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v18

    if-nez v18, :cond_5

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1532
    .end local v4           #childCount:I
    .end local v5           #deltaX:I
    .end local v6           #deltaY:I
    .end local v11           #maxScrollX:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1533
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v8

    .line 1535
    .local v8, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 1536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1538
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1540
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1542
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 1559
    :cond_14
    :goto_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1621
    .end local v8           #index:I
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 1622
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1630
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 1544
    .restart local v8       #index:I
    :cond_17
    const/16 v18, -0x1

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 1545
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_4

    .line 1546
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1547
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto :goto_4

    .line 1550
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1551
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1553
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1555
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto/16 :goto_4

    .line 1561
    .end local v8           #index:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v0

    .line 1562
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1563
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v14, v0

    .line 1565
    .local v14, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 1567
    .restart local v4       #childCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 1568
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v18

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    const/16 v18, 0x1

    move/from16 v9, v18

    .line 1569
    .local v9, isPortrait:Z
    :goto_6
    if-eqz v9, :cond_1d

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v18

    move/from16 v10, v18

    .line 1570
    .local v10, iwidth:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v15, v18

    .line 1573
    .local v15, wallpaperDrawableWidth:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    move/from16 v18, v0

    move v0, v14

    move/from16 v1, v18

    if-le v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    if-ltz v18, :cond_20

    .line 1575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1577
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    if-gez v18, :cond_1f

    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_1f

    if-eq v10, v15, :cond_1f

    .line 1579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1580
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1581
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1568
    .end local v9           #isPortrait:Z
    .end local v10           #iwidth:I
    .end local v15           #wallpaperDrawableWidth:I
    :cond_1c
    const/16 v18, 0x0

    move/from16 v9, v18

    goto/16 :goto_6

    .line 1569
    .restart local v9       #isPortrait:Z
    :cond_1d
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v18

    move/from16 v10, v18

    goto/16 :goto_7

    .line 1570
    .restart local v10       #iwidth:I
    :cond_1e
    const/16 v18, 0x1

    move/from16 v15, v18

    goto :goto_8

    .line 1583
    .restart local v15       #wallpaperDrawableWidth:I
    :cond_1f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    goto/16 :goto_5

    .line 1587
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v19, v4, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_22

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1591
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move v1, v4

    if-lt v0, v1, :cond_21

    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_21

    if-eq v10, v15, :cond_21

    .line 1593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1594
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1595
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1597
    :cond_21
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    goto/16 :goto_5

    .line 1602
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v18

    if-gez v18, :cond_23

    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_23

    if-eq v10, v15, :cond_23

    .line 1606
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1607
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1608
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1609
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v18

    move/from16 v0, v18

    move v1, v4

    if-lt v0, v1, :cond_24

    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_24

    if-eq v10, v15, :cond_24

    .line 1610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1611
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1612
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1614
    :cond_24
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    goto/16 :goto_5

    .line 1633
    .end local v4           #childCount:I
    .end local v7           #display:Landroid/view/Display;
    .end local v9           #isPortrait:Z
    .end local v10           #iwidth:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    .end local v15           #wallpaperDrawableWidth:I
    :pswitch_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 1450
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
    .line 2427
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2428
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2437
    :cond_0
    return-void

    .line 2429
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2430
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2431
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2432
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2433
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2434
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2430
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInScreen(Landroid/view/View;I)V
    .locals 5
    .parameter "child"
    .parameter "screen"

    .prologue
    .line 570
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 571
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

    .line 574
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 576
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 577
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 578
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 581
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

    .line 582
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
    .line 2243
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 2244
    .local v7, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2245
    .local v4, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 2247
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2248
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2249
    .local v6, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 2250
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2249
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2253
    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    .line 2254
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2257
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace$3;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/CellLayout;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2253
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2366
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
    .line 1065
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1066
    .local v0, screen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1068
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1070
    :cond_1
    const/4 v1, 0x1

    .line 1072
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
    .line 1133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1137
    .local v0, hideTime:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-nez v3, :cond_0

    .line 1138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    .line 1140
    :cond_0
    const/16 v3, 0xe

    long-to-int v4, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1141
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1143
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 1149
    .local v2, timerTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1150
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v3, 0x64

    add-long/2addr v3, p1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1151
    return-void
.end method

.method resume(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 2454
    move v0, p1

    .line 2455
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 2456
    .local v2, width:I
    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    .line 2457
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 2458
    .local v1, scroller:Landroid/widget/Scroller;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2459
    :cond_0
    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 2461
    .end local v1           #scroller:Landroid/widget/Scroller;
    :cond_1
    return-void
.end method

.method resumeScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 2441
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2442
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2451
    :cond_0
    return-void

    .line 2443
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2444
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2445
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2446
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2447
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2448
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2444
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2049
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2051
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    .line 2052
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2065
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2067
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    .line 2068
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2080
    :cond_0
    :goto_0
    return-void

    .line 2075
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 2142
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 2143
    return-void
.end method

.method setAtuoScrollScreen(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 2510
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 2511
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 2512
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 2514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2515
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2516
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 464
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 466
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 2023
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 2019
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 620
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 621
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_0
    return-void
.end method

.method setShowIndicator()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 470
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1674
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 1675
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1678
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1679
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1682
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 1684
    .local v7, childCount:I
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-lt v7, v0, :cond_6

    .line 1685
    if-ltz p1, :cond_1

    if-ge p1, v7, :cond_1

    .line 1686
    sub-int v0, v7, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1694
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_7

    move v6, v1

    .line 1695
    .local v6, changingScreens:Z
    :goto_1
    if-eqz v6, :cond_2

    .line 1696
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1699
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1700
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_3

    .line 1701
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1704
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 1705
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v3, v9, v0

    .line 1707
    .local v3, delta:I
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_4

    .line 1708
    if-gez p1, :cond_8

    .line 1709
    sub-int p1, v7, v1

    .line 1715
    :cond_4
    :goto_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 1717
    if-gez p2, :cond_5

    .line 1718
    iget p2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 1720
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 1722
    return-void

    .line 1691
    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_7
    move v6, v2

    .line 1694
    goto :goto_1

    .line 1710
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_8
    if-lt p1, v7, :cond_4

    .line 1711
    const/4 p1, 0x0

    goto :goto_2
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter "cellInfo"

    .prologue
    .line 1725
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1729
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v4, :cond_0

    .line 1737
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1739
    .local v3, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 1740
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1743
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1745
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1746
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1748
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1750
    .local v2, current:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1751
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    const/4 v5, 0x0

    invoke-interface {v4, v1, p0, v3, v5}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 1752
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_0
.end method

.method stopAutoScrollRunnable()V
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2549
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
    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2371
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2372
    const/4 v5, 0x0

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_3

    .line 2373
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2374
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v11

    .line 2375
    const/4 v6, 0x0

    move v12, v6

    :goto_1
    if-ge v12, v11, :cond_2

    .line 2376
    invoke-virtual {v5, v12}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2377
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 2378
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 2379
    check-cast v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 2383
    iget-object v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2384
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 2385
    iget v14, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    if-nez v14, :cond_1

    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v13, :cond_1

    .line 2387
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2388
    const/4 v7, 0x0

    move v15, v7

    :goto_2
    if-ge v15, v14, :cond_1

    .line 2389
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2390
    iget-object v7, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2391
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

    .line 2392
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

    .line 2388
    :cond_0
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    goto :goto_2

    .line 2375
    :cond_1
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto/16 :goto_1

    .line 2372
    :cond_2
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto/16 :goto_0

    .line 2401
    :cond_3
    return-void
.end method

.method updateWallpaperOffset()V
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 627
    return-void
.end method

.class public Lcom/sec/android/app/twlauncher/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG_TOUCH:Z = false

.field private static final INVALID_SCREEN:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "Launcher.Workspace"

.field private static final SCROLL_DOWN:Z = true

.field private static final SCROLL_DURATION:I = 0x12c

.field private static final SCROLL_RESTART_DURATION:I = 0x3e8

.field private static final SNAPTOSCREEN_DURATION:I = 0x190

.field private static final SNAPTOSCREEN_DURATION_HORIZONTAL:I = 0x258

.field private static final TOUCH_STATE_NO_SCROLLING:I = 0x2

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


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

.field mDragCell:I

.field private mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field mDragView:Landroid/view/View;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field mDrawerContentHeight:I

.field mDrawerContentWidth:I

.field mDropCell:I

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

.field private mUpdateWallpaperOffsetCount:I

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
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
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

    .line 226
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 93
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirstLayout:Z

    .line 96
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 100
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 109
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 121
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 132
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 134
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    .line 135
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    .line 138
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 159
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 170
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    .line 172
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 181
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 182
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 183
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 587
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUpdateWallpaperOffsetCount:I

    .line 662
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    .line 663
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    .line 2217
    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Workspace$4;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    .line 228
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 229
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 231
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 233
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$510(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
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
    .line 72
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 567
    :cond_0
    return-void
.end method

.method private drawDefaultIMEIText(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 781
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 783
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 784
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mBootVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 785
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

    .line 786
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

    .line 788
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 789
    return-void
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 820
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 822
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v3

    .line 823
    .local v3, updatedScreen:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 824
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    if-nez v0, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 828
    .local v2, rightNow:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 832
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 833
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 834
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 837
    .local v1, redraw:Z
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawSettingButton(Landroid/graphics/Canvas;)V

    .line 839
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0
.end method

.method private drawSettingButton(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 844
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 846
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 848
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    .line 850
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
    .line 1738
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 1739
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1743
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
    .line 1678
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v0, v1

    .line 1679
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object p0

    .line 1678
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

    .line 1398
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 1399
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1400
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1401
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 1403
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

    .line 1405
    .local v0, availableToScroll:I
    if-gez v3, :cond_0

    .line 1406
    const/4 v4, 0x0

    .line 1413
    :goto_0
    return v4

    .line 1407
    :cond_0
    if-gtz v0, :cond_1

    .line 1408
    sub-int v4, v1, v7

    goto :goto_0

    .line 1410
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

    .line 796
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v4, :cond_0

    .line 797
    new-instance v4, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    .line 801
    .local v3, pageCount:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 803
    .local v2, indicatorWidth:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 804
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 806
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(I)V

    .line 807
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 808
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v4, :cond_2

    .line 809
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 814
    :goto_0
    mul-int v4, v2, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    if-lez v3, :cond_1

    sub-int v6, v3, v7

    :cond_1
    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .line 815
    .local v1, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    .line 816
    return-void

    .line 811
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

    .line 243
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 244
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 245
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 247
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 250
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 251
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    .line 252
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 255
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 256
    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 257
    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 259
    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    .line 260
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    .line 262
    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mChildTopOffset:I

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    .line 270
    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    .line 271
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x7f07000d

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 275
    const v3, 0x7f020045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    .line 277
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    .line 278
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 288
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    .line 289
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    return-void
.end method

.method private isSettingsButtonArea(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 1570
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1571
    .local v1, rightNow:Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonShown:Z

    if-nez v2, :cond_0

    move v2, v4

    .line 1583
    :goto_0
    return v2

    .line 1575
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1576
    .local v0, rect:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1577
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1578
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1579
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1580
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1581
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1583
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
    .line 1614
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1615
    return-void
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V
    .locals 23
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v18

    .line 1620
    .local v18, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v18, :cond_1

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 1621
    .local v21, isFolder:Z
    :goto_0
    if-eqz v21, :cond_2

    .line 1622
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move v5, v0

    if-eqz v5, :cond_2

    .line 1623
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v4, v0

    .line 1624
    .local v4, uf:Lcom/sec/android/app/twlauncher/UserFolder;
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/UserFolder;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1671
    .end local v4           #uf:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local p4
    :cond_0
    :goto_1
    return-void

    .line 1620
    .end local v21           #isFolder:Z
    .restart local p4
    :cond_1
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_0

    .line 1630
    .restart local v21       #isFolder:Z
    :cond_2
    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object/from16 v19, v0

    .line 1634
    .local v19, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 1648
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown item type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1637
    :pswitch_0
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v5, v0

    if-eqz v5, :cond_3

    .line 1639
    new-instance v20, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    check-cast v19, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v19           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .local v20, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object/from16 v19, v20

    .line 1641
    .end local v20           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v19       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    const v6, 0x7f030001

    move-object/from16 v0, v19

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 v20, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p5

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v10

    .line 1651
    .end local p4
    .local v10, view:Landroid/view/View;
    :goto_2
    if-eqz p6, :cond_5

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v5, v0

    invoke-virtual {v10, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1653
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v12, v0

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v5, v0

    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1656
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1658
    .local v22, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 1667
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v11, v0

    const-wide/16 v13, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v15, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    move-object/from16 v12, v19

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1670
    if-eqz v21, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_1

    .line 1644
    .end local v10           #view:Landroid/view/View;
    .end local v22           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .restart local p4
    :pswitch_1
    const v5, 0x7f030007

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .end local p4
    check-cast p4, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v20, v0

    move v0, v5

    move-object v1, v6

    move-object/from16 v2, p4

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v10

    .line 1646
    .restart local v10       #view:Landroid/view/View;
    goto/16 :goto_2

    .line 1651
    :cond_5
    const/4 v5, -0x1

    goto/16 :goto_3

    .line 1662
    .restart local v22       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    if-eq v0, v1, :cond_4

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_4

    .line 1634
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
    .line 1417
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1418
    return-void
.end method

.method private updateWallpaperOffset(I)V
    .locals 11
    .parameter "scrollRange"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v10

    int-to-float v6, v6

    div-float v5, v9, v6

    .line 591
    .local v5, xStep:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v7, v5, v8

    if-nez v7, :cond_2

    move v7, v9

    :goto_0
    invoke-virtual {v6, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 594
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 595
    .local v3, scrollX:I
    sub-int v6, v1, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v0, v6, v3

    .line 597
    .local v0, availableToScroll:I
    if-gez v3, :cond_3

    .line 598
    const/4 v3, 0x0

    .line 603
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 605
    .local v4, token:Landroid/os/IBinder;
    if-eqz v4, :cond_1

    .line 606
    if-nez p1, :cond_4

    .line 607
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v7, 0x3f00

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 617
    :cond_1
    :goto_2
    return-void

    .end local v0           #availableToScroll:I
    .end local v1           #count:I
    .end local v3           #scrollX:I
    .end local v4           #token:Landroid/os/IBinder;
    :cond_2
    move v7, v5

    .line 591
    goto :goto_0

    .line 599
    .restart local v0       #availableToScroll:I
    .restart local v1       #count:I
    .restart local v3       #scrollX:I
    :cond_3
    if-gtz v0, :cond_0

    .line 600
    sub-int v6, v1, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int v3, v6, v7

    goto :goto_1

    .line 609
    .restart local v4       #token:Landroid/os/IBinder;
    :cond_4
    int-to-float v6, v3

    int-to-float v7, p1

    div-float v2, v6, v7

    .line 610
    .local v2, offset:F
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUpdateWallpaperOffsetCount:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_5

    .line 611
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    sub-float v7, v9, v2

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 612
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUpdateWallpaperOffsetCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUpdateWallpaperOffsetCount:I

    .line 614
    :cond_5
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

    .line 1687
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 1688
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1689
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_1

    move v3, v6

    .line 1690
    .local v3, spanX:I
    :goto_0
    if-nez v0, :cond_2

    move v4, v6

    .line 1692
    .local v4, spanY:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v5, :cond_0

    .line 1693
    if-nez v0, :cond_3

    move-object v1, v7

    .line 1694
    .local v1, ignoreView:Landroid/view/View;
    :goto_2
    invoke-virtual {v2, v7, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1697
    .end local v1           #ignoreView:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v5

    return v5

    .line 1689
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    :cond_1
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v3, v5

    goto :goto_0

    .line 1690
    .restart local v3       #spanX:I
    :cond_2
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v4, v5

    goto :goto_1

    .line 1693
    .restart local v4       #spanY:I
    :cond_3
    iget-object v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v1, v5

    goto :goto_2
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    .line 1506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    .line 1507
    return-void
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 1511
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1512
    .local v5, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 1514
    .local v7, result:[I
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 1515
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    move-object v0, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1516
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

    .line 953
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 955
    .local v0, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v0, :cond_2

    .line 956
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 957
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 958
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 959
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 970
    .end local v0           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 961
    .restart local v0       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 962
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 963
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 967
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
    .line 451
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 452
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
    .line 466
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 467
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
    .line 481
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 482
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 497
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 498
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The screen must be >= 0 and < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  screen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 503
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 504
    .local v1, group:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v2, 0x0

    .line 505
    .local v2, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 509
    .restart local v2       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    if-nez v2, :cond_5

    .line 510
    new-instance v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .end local v2           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-direct {v2, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 517
    .restart local v2       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_0
    if-eqz p7, :cond_6

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, p1, v3, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 518
    instance-of v3, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 522
    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 523
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    .line 524
    :cond_4
    return-void

    .line 512
    .end local v0           #folder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_5
    iput p3, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 513
    iput p4, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 514
    iput p5, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 515
    iput p6, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_0

    .line 517
    :cond_6
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 324
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 332
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 336
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 340
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 344
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 316
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
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
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1844
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method clearChildrenCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1246
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1247
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1248
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1249
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1253
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_1

    .line 1254
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1256
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-eq v1, v4, :cond_1

    .line 629
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

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 631
    .local v0, count:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 632
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 634
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 636
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 638
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v1, v5, :cond_6

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 644
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 651
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0

    .line 642
    :cond_5
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1

    .line 646
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v1, :cond_4

    .line 647
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

    .line 700
    const/4 v7, 0x0

    .line 704
    .local v7, restore:Z
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0

    .line 710
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

    .line 718
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    if-eqz v8, :cond_5

    .line 719
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 720
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v8, :cond_4

    .line 721
    new-instance v8, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    .line 728
    :cond_4
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 729
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 734
    .local v0, childCount:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v8, v11, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v5, v11

    .line 736
    .local v5, fastDraw:Z
    :goto_1
    if-eqz v5, :cond_9

    .line 737
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 766
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 769
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    if-eqz v8, :cond_7

    .line 770
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMEIText(Landroid/graphics/Canvas;)V

    .line 773
    :cond_7
    if-eqz v7, :cond_0

    .line 774
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .end local v5           #fastDraw:Z
    :cond_8
    move v5, v12

    .line 734
    goto :goto_1

    .line 739
    .restart local v5       #fastDraw:Z
    :cond_9
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    sub-int v2, v8, v9

    .line 740
    .local v2, diff:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v3

    .line 742
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

    .line 744
    if-lez v2, :cond_b

    .line 745
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int v9, v0, v11

    if-ge v8, v9, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 749
    :cond_a
    :goto_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 750
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 747
    :cond_b
    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v8, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 753
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 754
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 755
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 754
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 937
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 939
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 948
    :goto_0
    return v0

    .line 942
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 944
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 945
    goto :goto_0

    .line 948
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public drawWallpaperImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "canvas"
    .parameter "drawDst"

    .prologue
    const/4 v8, 0x1

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 669
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageMenuWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 674
    :goto_0
    if-eqz v0, :cond_3

    .line 676
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 677
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 678
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 679
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v8

    mul-int v3, v6, v7

    .line 682
    .local v3, scrollXMax:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 683
    .local v2, scrollX:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 684
    :cond_0
    if-le v2, v3, :cond_1

    move v2, v3

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 687
    .local v1, savedCanvas:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v4, v6, v7

    .line 688
    .local v4, scrollableWidth:I
    const/4 v5, 0x0

    .line 689
    .local v5, translateX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 690
    neg-int v6, v4

    int-to-float v6, v6

    int-to-float v7, v2

    int-to-float v8, v3

    div-float/2addr v7, v8

    mul-float v5, v6, v7

    .line 692
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 694
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 696
    .end local v1           #savedCanvas:I
    .end local v2           #scrollX:I
    .end local v3           #scrollXMax:I
    .end local v4           #scrollableWidth:I
    .end local v5           #translateX:F
    :cond_3
    return-void

    .line 671
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1223
    if-le p1, p2, :cond_0

    .line 1224
    move p1, p2

    .line 1225
    move p2, p1

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1230
    .local v0, count:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1231
    sub-int v4, v0, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1233
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1234
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1235
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1236
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1239
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_2

    .line 1240
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1241
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->buildDrawingCache(Z)V

    .line 1243
    :cond_2
    return-void
.end method

.method public estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "recycle"

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 1706
    .local v6, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1707
    .local v8, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v8, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 1708
    .local v3, spanX:I
    :goto_0
    if-nez v8, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 1709
    .local v4, spanY:I
    :goto_1
    if-nez v8, :cond_2

    const/4 v0, 0x0

    move-object v5, v0

    .line 1711
    .local v5, ignoreView:Landroid/view/View;
    :goto_2
    if-eqz p5, :cond_3

    move-object/from16 v10, p5

    .line 1714
    .local v10, location:Landroid/graphics/Rect;
    :goto_3
    sub-int v1, p1, p3

    sub-int v2, p2, p4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v9

    .line 1717
    .local v9, dropCell:[I
    if-nez v9, :cond_4

    .line 1718
    const/4 v0, 0x0

    .line 1729
    :goto_4
    return-object v0

    .line 1707
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v5           #ignoreView:Landroid/view/View;
    .end local v9           #dropCell:[I
    .end local v10           #location:Landroid/graphics/Rect;
    :cond_0
    iget v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v3, v0

    goto :goto_0

    .line 1708
    .restart local v3       #spanX:I
    :cond_1
    iget v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v4, v0

    goto :goto_1

    .line 1709
    .restart local v4       #spanY:I
    :cond_2
    iget-object v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v5, v0

    goto :goto_2

    .line 1711
    .restart local v5       #ignoreView:Landroid/view/View;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    goto :goto_3

    .line 1721
    .restart local v9       #dropCell:[I
    .restart local v10       #location:Landroid/graphics/Rect;
    :cond_4
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 1723
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 1725
    const/4 v0, 0x0

    aget v0, v9, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 1726
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    move-object v0, v10

    .line 1729
    goto :goto_4
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 3
    .parameter "occupied"

    .prologue
    const/4 v2, 0x0

    .line 543
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 544
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    .line 547
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 1808
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 1809
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1810
    .local v3, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 1811
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 1812
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1813
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1814
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

    .line 1815
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    move-object v4, v0

    .line 1816
    .local v4, f:Lcom/sec/android/app/twlauncher/Folder;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 1822
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #f:Lcom/sec/android/app/twlauncher/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 1811
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1808
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1822
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method getMovePinch()I
    .locals 1

    .prologue
    .line 2173
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    return v0
.end method

.method getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 372
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v6

    .line 373
    .local v4, index:I
    :goto_0
    const/4 v2, 0x0

    .line 374
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 375
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 379
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v8

    .line 388
    :goto_2
    return-object v6

    .line 372
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #index:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v4, v6

    goto :goto_0

    .line 377
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #index:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 381
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 382
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 384
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

    .line 385
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v6, v0

    goto :goto_2

    .line 381
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_4
    move-object v6, v8

    .line 388
    goto :goto_2
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .locals 8
    .parameter "screen"

    .prologue
    const/4 v7, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 356
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v2, :cond_0

    move-object v5, v7

    .line 365
    :goto_0
    return-object v5

    .line 357
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 358
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 359
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 361
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

    .line 362
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    goto :goto_0

    .line 358
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    move-object v5, v7

    .line 365
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
    .line 392
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 393
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 396
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 397
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 398
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 399
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 401
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

    .line 402
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 398
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 408
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
    .line 2167
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2168
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
    .line 1793
    const/4 v2, -0x1

    .line 1794
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1795
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1796
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1797
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1798
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 1803
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 1797
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

    .line 1803
    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 1826
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 1827
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1828
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1829
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 1830
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1831
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1832
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v0

    .line 1837
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 1830
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1827
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1837
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method ignoreRestore(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 2163
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 2164
    return-void
.end method

.method initAddWidget()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 793
    return-void
.end method

.method isDefaultScreenShowing()Z
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .locals 2

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 2119
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    const/16 v1, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 2120
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2121
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2122
    :cond_0
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
    .line 1588
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1592
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
    .line 1603
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1611
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
    .line 1599
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 25
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1523
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    .line 1524
    .local v7, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 1525
    sub-int v4, p2, p4

    sub-int v5, p3, p5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    .line 1566
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 1528
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget-object v13, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1530
    .local v13, cell:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v2, v0

    move/from16 v18, v2

    .line 1531
    .local v18, index:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move/from16 v0, v18

    move v1, v2

    if-eq v0, v1, :cond_5

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1533
    .local v24, originalCellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1536
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1537
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrop()  both cell and cell parent are NULL : originalCellLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v4, v0

    iget v4, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cell.getParent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1540
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1541
    .local v22, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrop() cell screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    .end local v22           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1546
    :cond_4
    invoke-virtual {v7, v13}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    .line 1548
    .end local v24           #originalCellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_5
    sub-int v9, p2, p4

    sub-int v10, p3, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v11, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v12, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v15, v0

    move-object/from16 v8, p0

    move-object v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v2, v0

    invoke-virtual {v7, v13, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1553
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1554
    .local v15, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1555
    .local v23, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v14, v0

    const-wide/16 v16, -0x64

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move/from16 v20, v0

    invoke-static/range {v14 .. v20}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1558
    instance-of v2, v15, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v2, :cond_6

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    check-cast v15, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v15           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v2, v3, v15}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1562
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v21

    .line 1563
    .local v21, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_0

    .line 1530
    .end local v18           #index:I
    .end local v21           #folder:Lcom/sec/android/app/twlauncher/Folder;
    .end local v23           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .restart local p1
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v2, v0

    move/from16 v18, v2

    goto/16 :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 4
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1758
    if-eqz p2, :cond_1

    .line 1759
    if-eq p1, p0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 1760
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1761
    .local v1, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1762
    .local v0, cell:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1765
    .local v2, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1774
    .end local v0           #cell:Landroid/view/View;
    .end local v1           #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1775
    return-void

    .line 1768
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 1769
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1770
    .restart local v1       #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v14

    .line 996
    .local v14, workspaceLocked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v11

    .line 997
    .local v11, allAppsVisible:Z
    if-nez v14, :cond_0

    if-eqz v11, :cond_1

    .line 998
    :cond_0
    const/4 v3, 0x0

    .line 1219
    :goto_0
    return v3

    .line 1012
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 1013
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1015
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1017
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 1018
    .local v10, action:I
    const/4 v3, 0x2

    if-ne v10, v3, :cond_4

    .line 1019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1020
    const/4 v3, 0x1

    goto :goto_0

    .line 1021
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1022
    const/4 v3, 0x0

    goto :goto_0

    .line 1026
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 1027
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1028
    .local v20, y:F
    const/16 v21, 0x0

    .local v21, y1:I
    const/16 v22, 0x0

    .local v22, y2:I
    const/16 v16, 0x0

    .local v16, x1:I
    const/16 v17, 0x0

    .line 1030
    .local v17, x2:I
    sparse-switch v10, :sswitch_data_0

    .line 1219
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_0

    .line 1032
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    move v3, v0

    if-eqz v3, :cond_9

    .line 1033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    move v3, v0

    if-eqz v3, :cond_6

    .line 1034
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1038
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1039
    .local v12, currentScreen:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->cancelLongPress()V

    .line 1041
    .end local v12           #currentScreen:Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1043
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1044
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1045
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1046
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinchStart:I

    move v3, v0

    sub-int v4, v21, v22

    sub-int v5, v21, v22

    mul-int/2addr v4, v5

    sub-int v5, v16, v17

    sub-int v6, v16, v17

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v3

    if-ltz v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1052
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    move v3, v0

    const/16 v4, 0x64

    if-le v3, v4, :cond_5

    .line 1053
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 1056
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1075
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    move v3, v0

    sub-float v3, v15, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1079
    .local v18, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    move v3, v0

    sub-float v3, v20, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1081
    .local v23, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    move v13, v0

    .line 1082
    .local v13, touchSlop:I
    move/from16 v0, v18

    move v1, v13

    if-le v0, v1, :cond_b

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 1083
    .local v19, xMoved:Z
    :goto_2
    move/from16 v0, v23

    move v1, v13

    if-le v0, v1, :cond_c

    const/4 v3, 0x1

    move/from16 v24, v3

    .line 1085
    .local v24, yMoved:Z
    :goto_3
    if-nez v19, :cond_a

    if-eqz v24, :cond_f

    .line 1087
    :cond_a
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    if-eqz v24, :cond_d

    .line 1088
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1100
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    move v3, v0

    if-eqz v3, :cond_5

    .line 1101
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1106
    .restart local v12       #currentScreen:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    .line 1082
    .end local v12           #currentScreen:Landroid/view/View;
    .end local v19           #xMoved:Z
    .end local v24           #yMoved:Z
    :cond_b
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_2

    .line 1083
    .restart local v19       #xMoved:Z
    :cond_c
    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_3

    .line 1089
    .restart local v24       #yMoved:Z
    :cond_d
    if-eqz v19, :cond_e

    .line 1091
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    goto :goto_4

    .line 1096
    :cond_e
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto :goto_4

    .line 1109
    :cond_f
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto/16 :goto_1

    .line 1116
    .end local v13           #touchSlop:I
    .end local v18           #xDiff:I
    .end local v19           #xMoved:Z
    .end local v23           #yDiff:I
    .end local v24           #yMoved:Z
    :sswitch_1
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1117
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    .line 1118
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1119
    const-wide/16 v3, 0x4e20

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->reserveIndicatorHideTime(J)V

    .line 1122
    float-to-int v3, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonArea(II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1123
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 1131
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v3, v0

    float-to-int v4, v15

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    move v4, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move v5, v0

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    :cond_11
    const/4 v3, 0x1

    :goto_5
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x0

    goto :goto_5

    .line 1138
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    move v3, v0

    if-eqz v3, :cond_13

    float-to-int v3, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonArea(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1139
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->isSettingsButtonTouched:Z

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 1142
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1145
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1148
    .local v12, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "android.wallpaper.tap"

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1156
    .end local v12           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 1157
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1158
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1160
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    move v3, v0

    if-eqz v3, :cond_5

    .line 1161
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v3

    if-ltz v3, :cond_16

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1163
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    move v3, v0

    const/16 v4, 0x64

    if-le v3, v4, :cond_5

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    goto/16 :goto_1

    .line 1183
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    move v3, v0

    if-nez v3, :cond_5

    .line 1184
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1185
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1186
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1187
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1189
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1190
    sub-int v3, v21, v22

    sub-int v4, v21, v22

    mul-int/2addr v3, v4

    sub-int v4, v16, v17

    sub-int v5, v16, v17

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinchStart:I

    .line 1196
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    move v3, v0

    if-eqz v3, :cond_5

    .line 1197
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1202
    .local v12, currentScreen:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    .line 1219
    .end local v12           #currentScreen:Landroid/view/View;
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1030
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 887
    const/4 v1, 0x0

    .line 888
    .local v1, childLeft:I
    const/4 v2, 0x0

    .line 890
    .local v2, childTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 891
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 892
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 893
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 895
    .local v3, childWidth:I
    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 896
    add-int/2addr v1, v3

    .line 891
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 900
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator()V

    .line 901
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v7, 0x0

    const-string v8, "Workspace can only be used in EXACTLY mode."

    .line 854
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 856
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 857
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 858
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 859
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 862
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 863
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 864
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 869
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 870
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_2
    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 875
    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 876
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v5

    if-nez v5, :cond_3

    .line 877
    const/4 v5, 0x1

    sub-int v5, v0, v5

    mul-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 880
    :cond_3
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirstLayout:Z

    .line 881
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 883
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 917
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 919
    .local v2, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_0

    .line 920
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .line 932
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    return v3

    .line 923
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 924
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 928
    .local v1, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 929
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 932
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 926
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
    .line 1493
    move-object v0, p1

    check-cast v0, Landroid/view/AbsSavedState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1494
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v2, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    move-object v1, v0

    .line 1499
    .local v1, savedState:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v2, :cond_0

    .line 1500
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 1501
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1486
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1487
    .local v0, state:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    .line 1488
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

    .line 298
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

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 303
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 312
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1260
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1261
    :cond_0
    const/4 v11, 0x0

    .line 1394
    :goto_0
    return v11

    .line 1264
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_2

    .line 1265
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1267
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1270
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1271
    .local v9, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1273
    .local v10, y:F
    packed-switch v0, :pswitch_data_0

    .line 1394
    :cond_3
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 1279
    :pswitch_0
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1280
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1287
    :cond_4
    :goto_2
    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1288
    iput v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    goto :goto_1

    .line 1282
    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1283
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

    .line 1292
    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1293
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v11, :cond_7

    .line 1294
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto :goto_1

    .line 1298
    :cond_7
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    sub-float/2addr v11, v9

    float-to-int v2, v11

    .line 1299
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    sub-float/2addr v11, v10

    float-to-int v3, v11

    .line 1301
    .local v3, deltaY:I
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    if-eqz v11, :cond_9

    .line 1302
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    if-gt v11, v12, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    if-le v11, v12, :cond_3

    .line 1303
    :cond_8
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1308
    :cond_9
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1311
    :cond_a
    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    .line 1313
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1314
    .local v1, childCount:I
    const/4 v11, 0x1

    sub-int v11, v1, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v12

    mul-int v5, v11, v12

    .line 1315
    .local v5, maxScrollX:I
    if-gez v2, :cond_c

    .line 1316
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    neg-int v6, v11

    .line 1317
    .local v6, minScrollX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-le v11, v6, :cond_3

    .line 1318
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-lez v11, :cond_b

    .line 1319
    const/4 v11, 0x0

    invoke-virtual {p0, v2, v11}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1323
    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1324
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1321
    :cond_b
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v11, v6, v11

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_3

    .line 1327
    .end local v6           #minScrollX:I
    :cond_c
    if-lez v2, :cond_3

    .line 1328
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

    .line 1329
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-ge v11, v5, :cond_3

    .line 1330
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v11, v5, v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1331
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1332
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1339
    .end local v1           #childCount:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v5           #maxScrollX:I
    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 1340
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    if-eqz v11, :cond_14

    .line 1341
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    float-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    float-to-int v13, v10

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v4

    .line 1342
    .local v4, index:I
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v11, :cond_10

    .line 1343
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    if-nez v11, :cond_e

    .line 1344
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1345
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1346
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1347
    :cond_d
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1348
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1349
    const/4 v11, -0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 1366
    :cond_e
    :goto_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1384
    .end local v4           #index:I
    :goto_5
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 1385
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1387
    :cond_f
    const-wide/16 v11, 0x7d0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->reserveIndicatorHideTime(J)V

    .line 1388
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 1351
    .restart local v4       #index:I
    :cond_10
    const/4 v11, -0x1

    if-eq v4, v11, :cond_11

    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    if-ne v4, v11, :cond_11

    .line 1352
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_4

    .line 1353
    :cond_11
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1354
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    if-eqz v11, :cond_12

    .line 1355
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v11, v12}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto :goto_4

    .line 1357
    :cond_12
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1358
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1359
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1360
    :cond_13
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1361
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1362
    const/4 v11, -0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto :goto_4

    .line 1368
    .end local v4           #index:I
    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1369
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    iget v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v7, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1370
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v8, v11

    .line 1372
    .local v8, velocityX:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1373
    .restart local v1       #childCount:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    if-le v8, v11, :cond_15

    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ltz v11, :cond_15

    .line 1375
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_5

    .line 1376
    :cond_15
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    neg-int v11, v11

    if-ge v8, v11, :cond_16

    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v12, 0x1

    sub-int v12, v1, v12

    if-gt v11, v12, :cond_16

    .line 1378
    iget v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto/16 :goto_5

    .line 1380
    :cond_16
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_5

    .line 1391
    .end local v1           #childCount:I
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v8           #velocityX:I
    :pswitch_3
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 1273
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
    .line 2126
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2127
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2136
    :cond_0
    return-void

    .line 2128
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2129
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2130
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2131
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2132
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2133
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2129
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInScreen(Landroid/view/View;I)V
    .locals 5
    .parameter "child"
    .parameter "screen"

    .prologue
    .line 528
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 529
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

    .line 532
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 534
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 535
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 536
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 539
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

    .line 540
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
    .line 1953
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 1954
    .local v7, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1955
    .local v4, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 1957
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1958
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1959
    .local v6, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 1960
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1959
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1963
    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    .line 1964
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1967
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace$3;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/CellLayout;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1963
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2076
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    return-void
.end method

.method removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 22
    .parameter "packageName"

    .prologue
    .line 1856
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v4, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 1859
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_7

    .line 1860
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1861
    .local v14, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    .line 1863
    .local v3, childCount:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1865
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-ge v12, v3, :cond_4

    .line 1866
    invoke-virtual {v14, v12}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1867
    .local v19, view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1869
    .local v17, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1870
    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v10, v0

    .line 1874
    .local v10, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v11, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1875
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 1877
    .local v15, name:Landroid/content/ComponentName;
    const-string v20, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1881
    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    .end local v10           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #name:Landroid/content/ComponentName;
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1883
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1884
    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v10, v0

    .line 1885
    .local v10, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v5, v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;->contents:Ljava/util/ArrayList;

    .line 1886
    .local v5, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    new-instance v18, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1887
    .local v18, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1888
    .local v6, contentsCount:I
    const/16 v16, 0x0

    .line 1890
    .local v16, removedFromFolder:Z
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    if-ge v13, v6, :cond_3

    .line 1891
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 1892
    .local v2, appInfo:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v11, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1893
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 1895
    .restart local v15       #name:Landroid/content/ComponentName;
    const-string v20, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1897
    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1899
    const/16 v16, 0x1

    .line 1890
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1903
    .end local v2           #appInfo:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #name:Landroid/content/ComponentName;
    :cond_3
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1904
    if-eqz v16, :cond_0

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v8

    .line 1906
    .local v8, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Folder;->notifyDataSetChanged()V

    goto :goto_2

    .line 1911
    .end local v5           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    .end local v6           #contentsCount:I
    .end local v8           #folder:Lcom/sec/android/app/twlauncher/Folder;
    .end local v10           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v13           #k:I
    .end local v16           #removedFromFolder:Z
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ShortcutInfo;>;"
    .end local v19           #view:Landroid/view/View;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1912
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v3, :cond_5

    .line 1913
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v14, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 1912
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1916
    :cond_5
    if-lez v3, :cond_6

    .line 1917
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/CellLayout;->requestLayout()V

    .line 1918
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 1859
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1921
    .end local v3           #childCount:I
    .end local v12           #j:I
    .end local v14           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_7
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 906
    .local v0, screen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 910
    :cond_1
    const/4 v1, 0x1

    .line 912
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
    .line 973
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 977
    .local v0, hideTime:Ljava/util/Calendar;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    if-nez v3, :cond_0

    .line 978
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    .line 980
    :cond_0
    const/16 v3, 0xe

    long-to-int v4, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 981
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 983
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 989
    .local v2, timerTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 990
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v3, 0x64

    add-long/2addr v3, p1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 991
    return-void
.end method

.method resume(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 2153
    move v0, p1

    .line 2154
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 2155
    .local v2, width:I
    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    .line 2156
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 2157
    .local v1, scroller:Landroid/widget/Scroller;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2158
    :cond_0
    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 2160
    .end local v1           #scroller:Landroid/widget/Scroller;
    :cond_1
    return-void
.end method

.method resumeScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 2140
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2141
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2150
    :cond_0
    return-void

    .line 2142
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2143
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2144
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2145
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2146
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2147
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1778
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1779
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1780
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1782
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1786
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

    .line 1788
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1790
    :cond_0
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1852
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1853
    return-void
.end method

.method setAtuoScrollScreen(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 2209
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 2210
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 2211
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 2213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2215
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 432
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 434
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1752
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1748
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 578
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 579
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_0
    return-void
.end method

.method setShowIndicator()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 438
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1421
    const/16 v0, 0x190

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 1422
    return-void
.end method

.method snapToScreen(II)V
    .locals 9
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1425
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1426
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1431
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_4

    move v6, v1

    .line 1432
    .local v6, changingScreens:Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1433
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1436
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 1437
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_2

    .line 1438
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 1441
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 1442
    .local v8, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v3, v8, v0

    .line 1444
    .local v3, delta:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 1446
    if-gez p2, :cond_3

    .line 1447
    const/16 p2, 0x190

    .line 1449
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1450
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 1451
    return-void

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_4
    move v6, v2

    .line 1431
    goto :goto_0
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter "cellInfo"

    .prologue
    .line 1454
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1458
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v4, :cond_0

    .line 1466
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1468
    .local v3, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 1469
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1472
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1474
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1475
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1477
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1479
    .local v2, current:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1480
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    const/4 v5, 0x0

    invoke-interface {v4, v1, p0, v3, v5}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 1481
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_0
.end method

.method stopAutoScrollRunnable()V
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2248
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 21
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
    .line 2079
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2081
    .local v13, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 2082
    .local v5, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 2083
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2084
    .local v11, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v4

    .line 2085
    .local v4, childCount:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    if-ge v9, v4, :cond_2

    .line 2086
    invoke-virtual {v11, v9}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2087
    .local v15, view:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 2088
    .local v14, tag:Ljava/lang/Object;
    move-object v0, v14

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2089
    move-object v0, v14

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v7, v0

    .line 2093
    .local v7, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v8, v7, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2094
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 2095
    .local v12, name:Landroid/content/ComponentName;
    move-object v0, v7

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    move/from16 v16, v0

    if-nez v16, :cond_1

    const-string v16, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    if-eqz v12, :cond_1

    .line 2097
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2098
    .local v3, appCount:I
    const/4 v10, 0x0

    .local v10, k:I
    :goto_2
    if-ge v10, v3, :cond_1

    .line 2099
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2100
    .local v2, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v2

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2102
    move-object v0, v15

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2098
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2085
    .end local v2           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #appCount:I
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #k:I
    .end local v12           #name:Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 2082
    .end local v14           #tag:Ljava/lang/Object;
    .end local v15           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2111
    .end local v4           #childCount:I
    .end local v9           #j:I
    .end local v11           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_3
    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 14
    .parameter "packageName"

    .prologue
    const/4 v13, 0x0

    .line 1924
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 1925
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1926
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1927
    .local v7, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 1928
    .local v1, childCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 1929
    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1930
    .local v10, view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1931
    .local v9, tag:Ljava/lang/Object;
    instance-of v11, v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v11, :cond_0

    .line 1932
    move-object v0, v9

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    .line 1936
    .local v4, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v5, v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1937
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1938
    .local v8, name:Landroid/content/ComponentName;
    iget v11, v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1942
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    iget-object v12, v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1943
    check-cast v10, Landroid/widget/TextView;

    .end local v10           #view:Landroid/view/View;
    new-instance v11, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v4, v12}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v13, v11, v13, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1928
    .end local v4           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #name:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1925
    .end local v9           #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1950
    .end local v1           #childCount:I
    .end local v6           #j:I
    .end local v7           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_2
    return-void
.end method

.method updateWallpaperOffset()V
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 585
    return-void
.end method

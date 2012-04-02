.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Landroid/view/ViewGroup;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
    }
.end annotation


# static fields
.field private static DRAW_SETTING_INFO:Z


# instance fields
.field private SNAP_VELOCITY:I

.field private isSettingsButtonTouched:Z

.field private mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAniFadeIn:Landroid/view/animation/Animation;

.field private mAniFadeOut:Landroid/view/animation/Animation;

.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

.field private mCloseAnimations:[Landroid/view/animation/Animation;

.field private final mColumnNum:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

.field private mDeleteIcon:Landroid/graphics/Bitmap;

.field private mDownX:F

.field mDragCell:I

.field private mDragRect:Landroid/graphics/Rect;

.field mDragView:Landroid/view/View;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mDropCell:I

.field private mEditMenuBg:Landroid/graphics/Bitmap;

.field private mEditTopBg:Landroid/graphics/Bitmap;

.field private mEnablePageIndicatorShowHide:Z

.field private mFirstLayout:Z

.field private mHideIndicator:Ljava/lang/Runnable;

.field private mIsClosing:Z

.field private mIsSingleTap:Z

.field private mItemNumOfPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

.field mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

.field mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMode:I

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mNextScreen:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenAnimations:[Landroid/view/animation/Animation;

.field private mOpenFlag:Z

.field public final mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

.field private mOrientation:I

.field private mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMoreGap:I

.field private mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoint:[I

.field private mRightOffset:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSettingsBg:Landroid/graphics/drawable/Drawable;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIcon:Landroid/graphics/drawable/Drawable;

.field private mSnapToScreenDuration:I

.field private mTempPage:I

.field private mTextSize:I

.field private mTopOffset:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedPageIndicatorIndex:I

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

.field private final mUseLargeDrawablesOnlyForPageIndicator:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/MenuManager;->DRAW_SETTING_INFO:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4080

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 101
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 121
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 130
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    .line 158
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 159
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    .line 167
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 173
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    .line 174
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    .line 176
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 177
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    .line 193
    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 194
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 202
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    .line 204
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    .line 1750
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1766
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2282
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 2354
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 2385
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 2388
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 210
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 211
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    .line 212
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 214
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    .line 215
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    .line 217
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->init()V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/twlauncher/MenuManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/MenuManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBlankPage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2269
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2271
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 2272
    .local v2, pageCount:I
    if-eqz v2, :cond_0

    .line 2274
    sub-int v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2275
    .local v1, lastPage:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2276
    .local v0, itemCount:I
    if-ne v0, v5, :cond_0

    .line 2277
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 5
    .parameter "adapter"
    .parameter "info"

    .prologue
    .line 1941
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 1959
    :goto_0
    return-object v3

    .line 1942
    :cond_1
    const/4 v1, 0x0

    .line 1943
    .local v1, adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 1944
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1945
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1946
    .restart local v1       #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1949
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1950
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1951
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1953
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1954
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1955
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    :cond_2
    move-object v3, v1

    .line 1959
    goto :goto_0

    .line 1944
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object v6, v0

    .line 483
    .local v6, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    .line 484
    .local v10, pageCount:I
    if-lez v10, :cond_0

    if-nez v6, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v15

    .line 490
    .local v15, updatedScreen:I
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 491
    if-gez v15, :cond_8

    .line 492
    const/16 v16, 0x1

    sub-int v15, v10, v16

    .line 498
    :cond_2
    :goto_1
    const/16 v8, 0x9

    .line 499
    .local v8, max:I
    const/4 v3, 0x4

    .line 500
    .local v3, centerIndex:I
    const/4 v5, 0x0

    .line 501
    .local v5, firstIndex:I
    const/4 v7, 0x0

    .line 502
    .local v7, isCenterSort:Z
    const/4 v4, 0x0

    .line 503
    .local v4, drawMore:Z
    const/16 v16, 0x9

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 504
    sub-int v5, v15, v3

    .line 505
    if-gez v5, :cond_9

    .line 506
    const/4 v5, 0x0

    .line 512
    :goto_2
    const/4 v4, 0x1

    .line 515
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move v11, v0

    .line 516
    .local v11, pageIndicatorTop:I
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v16, :cond_5

    .line 517
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_5

    .line 518
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 519
    .local v13, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v13

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43c8

    div-float v9, v16, v17

    .line 520
    .local v9, normalized:F
    const/high16 v16, 0x3f80

    cmpl-float v16, v9, v16

    if-ltz v16, :cond_4

    .line 521
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    .line 522
    const/high16 v9, 0x3f80

    .line 524
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_b

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v9

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move v11, v0

    .line 534
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_5
    :goto_3
    invoke-virtual {v6, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setFirstTextNum(I)V

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object v0, v6

    move/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 537
    if-eqz v7, :cond_c

    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v16, v0

    move-object v0, v6

    move v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 543
    :goto_4
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 544
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 545
    if-eqz v4, :cond_7

    .line 546
    if-lez v15, :cond_6

    if-lez v5, :cond_6

    .line 547
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 550
    :cond_6
    const/16 v16, 0x1

    sub-int v16, v10, v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    add-int/lit8 v16, v5, 0x9

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_7

    .line 552
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 555
    :cond_7
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v12

    .line 556
    .local v12, redraw:Z
    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto/16 :goto_0

    .line 493
    .end local v3           #centerIndex:I
    .end local v4           #drawMore:Z
    .end local v5           #firstIndex:I
    .end local v7           #isCenterSort:Z
    .end local v8           #max:I
    .end local v11           #pageIndicatorTop:I
    .end local v12           #redraw:Z
    :cond_8
    if-lt v15, v10, :cond_2

    .line 494
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 507
    .restart local v3       #centerIndex:I
    .restart local v4       #drawMore:Z
    .restart local v5       #firstIndex:I
    .restart local v7       #isCenterSort:Z
    .restart local v8       #max:I
    :cond_9
    add-int v16, v15, v3

    move/from16 v0, v16

    move v1, v10

    if-lt v0, v1, :cond_a

    .line 508
    const/16 v16, 0x9

    sub-int v5, v10, v16

    goto/16 :goto_2

    .line 510
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 527
    .restart local v9       #normalized:F
    .restart local v11       #pageIndicatorTop:I
    .restart local v13       #startTime:J
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/AnticipateInterpolator;->getInterpolation(F)F

    move-result v9

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v16, v17

    goto/16 :goto_3

    .line 540
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_c
    sub-int v16, v15, v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    goto/16 :goto_4
.end method

.method private drawSettingButton(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 563
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    sget-boolean v0, Lcom/sec/android/app/twlauncher/MenuManager;->DRAW_SETTING_INFO:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 571
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/twlauncher/MenuManager;->DRAW_SETTING_INFO:Z

    .line 573
    :cond_0
    return-void
.end method

.method private static findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2591
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2592
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2593
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2594
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2595
    .local v3, x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 2599
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_1
    return v4

    .line 2593
    .restart local v3       #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2599
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 4
    .parameter "num"

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1522
    .local v0, count:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1523
    const/4 v2, 0x0

    .line 1524
    .local v2, page:Lcom/sec/android/app/twlauncher/AppMenu;
    if-lt p1, v0, :cond_1

    .line 1525
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    .line 1526
    move p1, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, p0

    :goto_0
    return-object v3

    .line 1528
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1529
    .restart local v2       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 1530
    .local v1, itemNum:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-lt v1, v3, :cond_0

    .line 1531
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    goto :goto_0
.end method

.method private getXDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x42c8

    const/high16 v6, 0x4248

    const/4 v5, 0x0

    const/high16 v4, -0x3d38

    const/high16 v3, -0x3db8

    .line 2418
    .line 2419
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v0, p1, v0

    .line 2421
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2422
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 2472
    :goto_1
    return v0

    .line 2424
    :pswitch_0
    const/high16 v0, -0x3d10

    .line 2425
    goto :goto_1

    .line 2427
    :pswitch_1
    const/high16 v0, -0x3d90

    .line 2428
    goto :goto_1

    .line 2430
    :pswitch_2
    const/high16 v0, 0x4270

    .line 2431
    goto :goto_1

    .line 2433
    :pswitch_3
    const/high16 v0, 0x42f0

    goto :goto_1

    .line 2437
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 2438
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 2441
    goto :goto_1

    :pswitch_5
    move v0, v3

    .line 2444
    goto :goto_1

    :pswitch_6
    move v0, v5

    .line 2447
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 2450
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 2452
    goto :goto_1

    .line 2456
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_9
    move v0, v4

    .line 2459
    goto :goto_1

    :pswitch_a
    move v0, v3

    .line 2462
    goto :goto_1

    :pswitch_b
    move v0, v6

    .line 2465
    goto :goto_1

    :pswitch_c
    move v0, v7

    .line 2467
    goto :goto_1

    .line 2422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2438
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2456
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x430c

    const/high16 v6, 0x428c

    const/4 v5, 0x0

    const/high16 v4, -0x3cf4

    const/high16 v3, -0x3d74

    .line 2476
    .line 2477
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v0, p1, v0

    .line 2479
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2480
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 2481
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 2530
    :goto_1
    return v0

    :pswitch_0
    move v0, v4

    .line 2484
    goto :goto_1

    :pswitch_1
    move v0, v3

    .line 2487
    goto :goto_1

    :pswitch_2
    move v0, v5

    .line 2490
    goto :goto_1

    :pswitch_3
    move v0, v6

    .line 2493
    goto :goto_1

    :pswitch_4
    move v0, v7

    .line 2495
    goto :goto_1

    .line 2499
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 2502
    goto :goto_1

    :pswitch_6
    move v0, v3

    .line 2505
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 2508
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 2510
    goto :goto_1

    .line 2515
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2517
    :pswitch_9
    const/high16 v0, -0x3d60

    .line 2518
    goto :goto_1

    .line 2520
    :pswitch_a
    const/high16 v0, -0x3de0

    .line 2521
    goto :goto_1

    .line 2523
    :pswitch_b
    const/high16 v0, 0x4220

    .line 2524
    goto :goto_1

    .line 2526
    :pswitch_c
    const/high16 v0, 0x42a0

    goto :goto_1

    .line 2481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2499
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2515
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 224
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 226
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 228
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 229
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 231
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 235
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 239
    const v2, 0x7f02001a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 243
    const v2, 0x7f02001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    .line 250
    :cond_2
    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 251
    const v2, 0x7f02002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 252
    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 253
    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    .line 255
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 256
    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    .line 257
    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    .line 258
    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    .line 271
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 272
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 274
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 275
    const/16 v2, 0x190

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 283
    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    .line 284
    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    .line 285
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 290
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    .line 292
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    .line 294
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 295
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 298
    return-void

    .line 277
    :cond_3
    const/16 v2, 0x258

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 2289
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v7, :cond_1

    .line 2290
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v7, :cond_0

    .line 2291
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v1

    .line 2292
    .local v1, deltaX:F
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v2

    .line 2294
    .local v2, deltaY:F
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v1, v9, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2295
    .local v6, openTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2296
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2297
    .local v4, openAlpha:Landroid/view/animation/AlphaAnimation;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2298
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2299
    .local v5, openAniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2300
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2301
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v5, v7, v3

    .line 2303
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2304
    .local v0, closeAniSet:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v9, v1, v9, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2305
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2306
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v0, v7, v3

    .line 2307
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v8, v10}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2289
    .end local v0           #closeAniSet:Landroid/view/animation/AnimationSet;
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v4           #openAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v5           #openAniSet:Landroid/view/animation/AnimationSet;
    .end local v6           #openTrans:Landroid/view/animation/TranslateAnimation;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2309
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2310
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2311
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2312
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 2316
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    .line 2317
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    .line 2318
    return-void
.end method

.method private initPageIndicator()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 445
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 446
    .local v3, indicatorWidth:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 448
    .local v1, indicatorHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 449
    .local v5, pageCount:I
    if-gtz v5, :cond_0

    .line 479
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v6, :cond_1

    .line 452
    new-instance v6, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 455
    :cond_1
    const/16 v4, 0x9

    .line 456
    .local v4, max:I
    const/16 v6, 0x9

    if-le v5, v6, :cond_2

    .line 457
    const/16 v5, 0x9

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 461
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setMoreDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 464
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(II)V

    .line 465
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 466
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v6, :cond_5

    .line 467
    invoke-virtual {v0, v9}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 472
    :goto_1
    mul-int v6, v3, v5

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    if-lez v5, :cond_3

    sub-int v8, v5, v9

    :cond_3
    mul-int/2addr v7, v8

    add-int v2, v6, v7

    .line 473
    .local v2, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    .line 474
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 475
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    goto :goto_0

    .line 469
    .end local v2           #indicatorTotalWidth:I
    :cond_5
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_1

    .line 477
    .restart local v2       #indicatorTotalWidth:I
    :cond_6
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    goto :goto_0
.end method

.method private isListChild()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2534
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 2535
    .local v1, count:I
    if-ne v1, v4, :cond_0

    .line 2536
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2537
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    move v2, v4

    .line 2541
    .end local v0           #child:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isSettingsButtonArea(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 2618
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2619
    .local v0, rect:Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2620
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2621
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2622
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2623
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2624
    const/4 v1, 0x1

    .line 2626
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1505
    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    .line 1506
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1510
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 1517
    :goto_0
    return-object v0

    .line 1513
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1514
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1515
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1014
    return-void
.end method

.method private updateMenu()V
    .locals 14

    .prologue
    const/4 v8, -0x1

    const/4 v13, 0x2

    const v12, 0xffff

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1568
    if-nez v1, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 1570
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1572
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v4

    .line 1574
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1576
    if-ne v3, v13, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1579
    invoke-virtual {v4, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 1586
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1587
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 1589
    if-lez v2, :cond_0

    .line 1591
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    if-ne v3, v11, :cond_6

    .line 1594
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v6, v10

    .line 1597
    :goto_2
    if-ge v6, v2, :cond_4

    .line 1598
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1599
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v7, v12, :cond_3

    .line 1600
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 1581
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1582
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1583
    invoke-virtual {v4, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    goto :goto_1

    .line 1603
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1606
    :cond_4
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1607
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1608
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->sort(Ljava/util/Comparator;)V

    .line 1609
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1611
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1624
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1637
    iput v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1638
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1640
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1641
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v10

    .line 1642
    :goto_4
    if-ge v1, v0, :cond_5

    .line 1643
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1644
    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-virtual {v4, p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1642
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1646
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1651
    :cond_6
    invoke-virtual {v1, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    move v6, v10

    .line 1656
    :goto_5
    if-ge v6, v2, :cond_d

    .line 1657
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1658
    if-ne v3, v13, :cond_a

    .line 1659
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    if-eq v7, v12, :cond_8

    .line 1660
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_7
    :goto_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    .line 1665
    :cond_8
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    if-ne v7, v12, :cond_9

    .line 1666
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    .line 1668
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1669
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1674
    :goto_7
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1675
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1676
    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1678
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    .line 1679
    iget v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    sub-int v9, v7, v11

    if-eq v8, v9, :cond_7

    .line 1680
    sub-int/2addr v7, v11

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_6

    .line 1671
    :cond_9
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    goto :goto_7

    .line 1683
    :cond_a
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1684
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1685
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1687
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v7, v12, :cond_b

    .line 1688
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1693
    :cond_b
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v7, v12, :cond_c

    .line 1694
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    .line 1696
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1697
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1699
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1700
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1702
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1707
    :goto_8
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1708
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1709
    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1711
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    .line 1712
    iget v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    sub-int v9, v7, v11

    if-eq v8, v9, :cond_7

    .line 1713
    sub-int v8, v7, v11

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1714
    sub-int/2addr v7, v11

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1715
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    goto/16 :goto_6

    .line 1704
    :cond_c
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    goto :goto_8

    .line 1720
    :cond_d
    if-ne v3, v13, :cond_e

    .line 1721
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1724
    :cond_e
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1725
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v10

    .line 1726
    :goto_9
    if-ge v2, v1, :cond_10

    .line 1727
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1728
    if-ne v3, v13, :cond_f

    .line 1729
    iget v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1726
    :goto_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 1731
    :cond_f
    iget v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    goto :goto_a

    .line 1734
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1737
    if-lez v0, :cond_12

    .line 1738
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v1, v0, :cond_11

    .line 1739
    sub-int/2addr v0, v11

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1740
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1747
    :cond_11
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto/16 :goto_0

    .line 1743
    :cond_12
    iput v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1744
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto :goto_b
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 2550
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2552
    .local v0, N:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 2553
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2554
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2555
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 2557
    .local v2, index:I
    if-gez v2, :cond_0

    .line 2558
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 2560
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2563
    .end local v2           #index:I
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v4, :cond_2

    .line 2564
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2565
    :cond_2
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

    .line 2194
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2195
    .local v0, childCount:I
    if-le v0, v3, :cond_4

    .line 2196
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 2197
    .local v1, currentScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2198
    const/16 v2, 0x11

    if-ne p2, v2, :cond_2

    .line 2199
    if-lez v1, :cond_1

    .line 2200
    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2214
    .end local v1           #currentScreen:I
    :cond_0
    :goto_0
    return-void

    .line 2201
    .restart local v1       #currentScreen:I
    :cond_1
    if-nez v1, :cond_0

    .line 2202
    sub-int v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2204
    :cond_2
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 2205
    sub-int v2, v0, v3

    if-ge v1, v2, :cond_3

    .line 2206
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2207
    :cond_3
    sub-int v2, v0, v3

    if-ne v1, v2, :cond_0

    .line 2208
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2212
    .end local v1           #currentScreen:I
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    .line 1862
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1863
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1864
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1865
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    .line 1866
    if-gez v4, :cond_4

    .line 1867
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 1868
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1896
    :goto_0
    return-object v0

    .line 1869
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    move v7, v4

    move-object v4, v1

    move v1, v7

    .line 1872
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1873
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1875
    if-ge v3, p2, :cond_2

    .line 1876
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1880
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1881
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v3, v1, :cond_1

    .line 1882
    const/4 v1, 0x1

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1883
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1884
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 1888
    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v4, v1, :cond_3

    .line 1889
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1890
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1891
    const v6, 0xffff

    iput v6, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1892
    iput v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1893
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1888
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 1878
    :cond_2
    invoke-virtual {v0, v5, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    move-object v0, v5

    .line 1896
    goto :goto_0

    :cond_4
    move v7, v4

    move-object v4, v1

    move v1, v7

    goto :goto_1
.end method

.method public animateClose()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1177
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1179
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1180
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1183
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v3, v6}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1185
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1186
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1187
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1190
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1191
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundClose()V

    .line 1192
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1193
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1194
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1195
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1196
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1199
    :cond_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1200
    .local v0, child:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 1201
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1202
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1203
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1205
    :cond_3
    return-void
.end method

.method public animateOpen()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1143
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v5, v8}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1146
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1147
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1151
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1153
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1154
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1155
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1156
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1157
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1159
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1161
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1162
    .local v0, child:Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 1163
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1164
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1168
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    .line 1169
    .local v4, width:I
    if-eqz v4, :cond_4

    .line 1170
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 1171
    .local v3, scroller:Landroid/widget/Scroller;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1172
    :cond_3
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v4

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1174
    .end local v3           #scroller:Landroid/widget/Scroller;
    :cond_4
    return-void
.end method

.method clearChildrenCache()V
    .locals 4

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1097
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1098
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1099
    .local v2, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1102
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1230
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1231
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1234
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1236
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1237
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1238
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1240
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1241
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1242
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1243
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1244
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1245
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1247
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 1248
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 928
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v1, v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 930
    :cond_1
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 977
    :cond_2
    :goto_0
    return-void

    .line 934
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 936
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 947
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0

    .line 948
    .end local v0           #count:I
    :cond_4
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-eq v1, v4, :cond_2

    .line 949
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 950
    .restart local v0       #count:I
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v3, v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 966
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v1, v5, :cond_5

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 970
    :cond_5
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 971
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 972
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0
.end method

.method public discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 4

    .prologue
    .line 2604
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 2605
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2606
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2607
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2608
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2609
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 2605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2612
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 365
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v8

    if-gez v8, :cond_0

    .line 369
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 370
    sub-int v8, v0, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v9

    mul-int v7, v8, v9

    .line 372
    .local v7, maxScrollX:I
    if-le v0, v11, :cond_2

    .line 373
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-gez v8, :cond_7

    .line 374
    sub-int v8, v0, v11

    iput v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 380
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    if-eqz v8, :cond_5

    .line 381
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 382
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v8, :cond_4

    .line 383
    new-instance v8, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    .line 390
    :cond_4
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 391
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    :cond_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v8, v11, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v5, v11

    .line 396
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_9

    .line 397
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-ge v8, v0, :cond_6

    .line 398
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 437
    :cond_6
    :goto_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v8, v11, :cond_0

    .line 438
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 440
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawSettingButton(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 375
    .end local v5           #fastDraw:Z
    :cond_7
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v8, v0, :cond_2

    .line 376
    iput v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_1

    :cond_8
    move v5, v12

    .line 394
    goto :goto_2

    .line 400
    .restart local v5       #fastDraw:Z
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v3

    .line 403
    .local v3, drawingTime:J
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v2, v8, v9

    .line 404
    .local v2, diff:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ltz v8, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ge v8, v0, :cond_a

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v11, :cond_b

    .line 418
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 419
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 420
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 409
    .end local v1           #count:I
    .end local v6           #i:I
    :cond_b
    if-lez v2, :cond_d

    .line 410
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v9, v0, v11

    if-ge v8, v9, :cond_c

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 414
    :cond_c
    :goto_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 415
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 412
    :cond_d
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lez v8, :cond_c

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_5
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2631
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2632
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2633
    .local v0, action:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 2635
    packed-switch v0, :pswitch_data_0

    .line 2655
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 2637
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonArea(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2638
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    goto :goto_0

    .line 2642
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonArea(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2643
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    .line 2644
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 2645
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2646
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    :goto_2
    move v3, v4

    .line 2650
    goto :goto_1

    .line 2648
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    goto :goto_2

    .line 2635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 2218
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2219
    .local v0, childCount:I
    if-le v0, v3, :cond_1

    .line 2220
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 2221
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-nez v1, :cond_1

    .line 2222
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2232
    :goto_0
    return v1

    .line 2225
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 2226
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 2227
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2228
    goto :goto_0

    .line 2232
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1063
    if-le p1, p2, :cond_0

    .line 1064
    move p1, p2

    .line 1065
    move p2, p1

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1069
    .local v1, count:I
    const/4 v0, -0x1

    .line 1070
    .local v0, cached:I
    if-le v1, v5, :cond_1

    .line 1071
    if-gez p1, :cond_2

    .line 1072
    sub-int v0, v1, v5

    .line 1073
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1074
    .local v3, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1075
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    .line 1084
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1085
    sub-int v4, v1, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1087
    move v2, p1

    .local v2, i:I
    :goto_1
    if-gt v2, p2, :cond_4

    .line 1088
    if-ne v0, v2, :cond_3

    .line 1087
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1076
    .end local v2           #i:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 1077
    const/4 v0, 0x0

    .line 1078
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1079
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1080
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 1089
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1090
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1091
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_2

    .line 1093
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4
    return-void
.end method

.method public getAnimateStatus()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 2241
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    return v0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 1480
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    .line 1481
    const/4 v0, 0x0

    .line 1483
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    goto :goto_0
.end method

.method getDropScreen()I
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    goto :goto_0
.end method

.method getIndexOfCell(II)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    .line 1805
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1806
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    .line 1807
    .local v4, childWidth:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    .line 1808
    .local v3, childHeight:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    .line 1811
    .local v6, padding:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1812
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    .line 1814
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1816
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 1818
    .local v5, col:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_3

    .line 1819
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-ne v9, v11, :cond_2

    .line 1820
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, 0x1

    .line 1828
    .local v8, row:I
    :goto_0
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1829
    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    .line 1830
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    .line 1832
    if-gez p1, :cond_4

    const/4 p1, 0x0

    move v1, p1

    .line 1833
    .local v1, cellX:I
    :goto_1
    div-int v2, p2, v3

    .line 1835
    .local v2, cellY:I
    sub-int v9, v5, v11

    if-le v1, v9, :cond_0

    sub-int v1, v5, v11

    .line 1836
    :cond_0
    sub-int v9, v8, v11

    if-le v2, v9, :cond_1

    sub-int v2, v8, v11

    .line 1838
    :cond_1
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    .line 1840
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :goto_2
    return v9

    .line 1822
    .end local v8           #row:I
    :cond_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    sub-int v8, v9, v11

    .restart local v8       #row:I
    goto :goto_0

    .line 1825
    .end local v8           #row:I
    :cond_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .restart local v8       #row:I
    goto :goto_0

    .line 1832
    :cond_4
    div-int v9, p1, v4

    move v1, v9

    goto :goto_1

    .line 1840
    :cond_5
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 577
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getWhichScreen()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 980
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v3

    .line 981
    .local v3, screenWidth:I
    const/4 v5, 0x0

    .line 982
    .local v5, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 983
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 992
    .local v4, scrollX:I
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 993
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 994
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 995
    .local v0, availableToScroll:I
    if-gez v4, :cond_1

    .line 996
    const/4 v5, 0x0

    .line 1009
    .end local v0           #availableToScroll:I
    :cond_0
    :goto_0
    return v5

    .line 997
    .restart local v0       #availableToScroll:I
    :cond_1
    if-gtz v0, :cond_2

    .line 998
    sub-int v5, v1, v8

    goto :goto_0

    .line 1000
    :cond_2
    if-lez v3, :cond_3

    .line 1001
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    .line 1003
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 2386
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1290
    return-void
.end method

.method public makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "parent"

    .prologue
    .line 1539
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1540
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1541
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v3, -0x1

    .line 1543
    .local v3, oldOrientation:I
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v5, v6, :cond_0

    .line 1544
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1545
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1547
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1548
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1551
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1553
    .local v0, app:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1554
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1555
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1557
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1558
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1559
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1560
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1563
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 1461
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
    .line 1300
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
    .line 1305
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 25
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1310
    const/16 v3, 0x32

    move/from16 v0, p2

    move v1, v3

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    const/16 v4, 0x32

    sub-int/2addr v3, v4

    move/from16 v0, p2

    move v1, v3

    if-le v0, v1, :cond_1

    .line 1311
    :cond_0
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1397
    :goto_0
    return-void

    .line 1315
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 1316
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    move-object/from16 v20, v0

    .line 1318
    .local v20, point:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v23

    .line 1319
    .local v23, target:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1321
    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1323
    move-object/from16 v0, v23

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v15, v0

    .line 1324
    .local v15, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v16

    .line 1325
    .local v16, index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1327
    .local v24, v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1328
    .local v19, parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_3

    .line 1329
    move-object v0, v15

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeItem(Landroid/view/View;I)V

    .line 1357
    :goto_1
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1373
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto :goto_0

    .line 1331
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1333
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1334
    .local v17, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v12

    .line 1336
    .local v12, addView:Landroid/view/View;
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibleChildCount()I

    move-result v3

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1337
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    .line 1340
    :cond_4
    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    .line 1341
    .local v22, shiftView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1344
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1345
    .local v4, animationView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1349
    .local v18, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, v20, v6

    int-to-float v6, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v20, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v10, v0

    int-to-float v10, v10

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    .line 1355
    .end local v4           #animationView:Landroid/view/View;
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_5
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_1

    .line 1358
    .end local v12           #addView:Landroid/view/View;
    .end local v17           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v19           #parent:Landroid/view/View;
    .end local v22           #shiftView:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_6
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_2

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1360
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1361
    .restart local v19       #parent:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1362
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1363
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1364
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1365
    .local v13, dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1368
    .local v14, dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1369
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1370
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_2

    .line 1376
    .end local v13           #dragView:Landroid/view/View;
    .end local v14           #dropIndex:I
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .end local v16           #index:I
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v16

    .line 1377
    .restart local v16       #index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1379
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1380
    .restart local v19       #parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_9

    .line 1381
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1382
    .restart local v15       #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1386
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1387
    .restart local v13       #dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1390
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1391
    .restart local v14       #dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1392
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1393
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1395
    .end local v13           #dragView:Landroid/view/View;
    .end local v14           #dropIndex:I
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto/16 :goto_0

    .line 1384
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 4
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 1464
    instance-of v3, p2, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v3, :cond_1

    .line 1465
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v2, v0

    .line 1466
    .local v2, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1467
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1468
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1477
    .end local v2           #shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1471
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v1, :cond_0

    .line 1472
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1473
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1474
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 22
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 1405
    .local v19, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v20

    .line 1406
    .local v20, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1410
    .local v16, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 1411
    .local v17, parent:Landroid/view/ViewGroup;
    if-eqz v17, :cond_0

    .line 1413
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1415
    .local v18, point:[I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_2

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    sub-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, p3, p5

    int-to-float v7, v7

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    goto :goto_0

    .line 1419
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 1420
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v15

    .line 1421
    .local v15, index:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1423
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1424
    .local v21, v:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_6

    .line 1425
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1426
    .local v14, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1430
    .end local v14           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1431
    .local v13, dropView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 1433
    .local v12, dropCell:I
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1434
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1437
    .end local v12           #dropCell:I
    .end local v13           #dropView:Landroid/view/View;
    .end local v15           #index:I
    .end local v21           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(Landroid/view/View;[I)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    sub-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/AppMenu;->getLeft()I

    move-result v6

    const/4 v7, 0x0

    aget v7, v18, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, p3, p5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v8, v0

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v18, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v10, v0

    int-to-float v10, v10

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    goto/16 :goto_0

    .line 1428
    .restart local v15       #index:I
    .restart local v21       #v:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    const/4 v2, -0x1

    .line 1448
    if-eqz p2, :cond_1

    .line 1449
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 1454
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1455
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1456
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1457
    return-void

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 586
    const/16 v16, 0x1

    .line 762
    :goto_0
    return v16

    .line 589
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 590
    const/16 v16, 0x1

    goto :goto_0

    .line 593
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    .line 607
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 608
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 610
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 613
    .local v3, action:I
    const/16 v16, 0x2

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 614
    const/16 v16, 0x1

    goto :goto_0

    .line 618
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 619
    .local v6, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 620
    .local v11, y:F
    const/4 v12, 0x0

    .local v12, y1:I
    const/4 v13, 0x0

    .local v13, y2:I
    const/4 v7, 0x0

    .local v7, x1:I
    const/4 v8, 0x0

    .line 622
    .local v8, x2:I
    packed-switch v3, :pswitch_data_0

    .line 760
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_13

    const/16 v16, 0x1

    move/from16 v4, v16

    .local v4, ret:Z
    :goto_2
    move/from16 v16, v4

    .line 762
    goto :goto_0

    .line 633
    .end local v4           #ret:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 634
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 635
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 636
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 637
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinchStart:I

    move/from16 v16, v0

    sub-int v17, v12, v13

    sub-int v18, v12, v13

    mul-int v17, v17, v18

    sub-int v18, v7, v8

    sub-int v19, v7, v8

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v16

    if-ltz v16, :cond_7

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 644
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 645
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 648
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 655
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 659
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    move/from16 v16, v0

    sub-float v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 664
    .local v9, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v16, v0

    sub-float v16, v11, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 668
    .local v14, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v5, v0

    .line 669
    .local v5, touchSlop:I
    if-le v9, v5, :cond_b

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 670
    .local v10, xMoved:Z
    :goto_3
    if-le v14, v5, :cond_c

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 672
    .local v15, yMoved:Z
    :goto_4
    if-nez v10, :cond_a

    if-eqz v15, :cond_e

    .line 674
    :cond_a
    if-eqz v10, :cond_d

    .line 676
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 669
    .end local v10           #xMoved:Z
    .end local v15           #yMoved:Z
    :cond_b
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_3

    .line 670
    .restart local v10       #xMoved:Z
    :cond_c
    const/16 v16, 0x0

    move/from16 v15, v16

    goto :goto_4

    .line 680
    .restart local v15       #yMoved:Z
    :cond_d
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 683
    :cond_e
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 691
    .end local v5           #touchSlop:I
    .end local v9           #xDiff:I
    .end local v10           #xMoved:Z
    .end local v14           #yDiff:I
    .end local v15           #yMoved:Z
    :pswitch_2
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 692
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v16, v0

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v17, v0

    move v0, v11

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    :cond_f
    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    :cond_10
    const/16 v16, 0x0

    goto :goto_5

    .line 708
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 709
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 712
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v16

    if-ltz v16, :cond_12

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 715
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    goto/16 :goto_1

    .line 735
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 739
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 740
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 741
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 742
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 744
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 745
    sub-int v16, v12, v13

    sub-int v17, v12, v13

    mul-int v16, v16, v17

    sub-int v17, v7, v8

    sub-int v18, v7, v8

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinchStart:I

    goto/16 :goto_1

    .line 760
    :cond_13
    const/16 v16, 0x0

    move/from16 v4, v16

    goto/16 :goto_2

    .line 622
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
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 337
    .local v3, count:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 338
    .local v5, topPadding:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 339
    const/4 v5, 0x0

    .line 342
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 343
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 346
    .local v2, childWidth:I
    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 347
    add-int/2addr v1, v2

    .line 342
    .end local v2           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator()V

    .line 353
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const-string v8, "Menulayout can only be used in EXACTLY mode."

    .line 302
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 304
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 305
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 306
    .local v4, widthMode:I
    if-eq v4, v7, :cond_0

    .line 307
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 310
    :cond_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 311
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRightOffset:I

    sub-int/2addr v3, v5

    .line 312
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 315
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 316
    .local v1, heightMode:I
    if-eq v1, v7, :cond_2

    .line 317
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 322
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 323
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    if-eqz v5, :cond_4

    .line 327
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 330
    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2177
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2179
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2180
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2185
    .local v1, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2186
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 2189
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2182
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 768
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 769
    const/16 v21, 0x1

    .line 923
    :goto_0
    return v21

    .line 772
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 773
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 775
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 778
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 779
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 781
    .local v18, y:F
    packed-switch v3, :pswitch_data_0

    .line 923
    :cond_2
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    .line 788
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 793
    :cond_3
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 794
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto :goto_1

    .line 800
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move/from16 v21, v0

    sub-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 802
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move v8, v0

    .line 804
    .local v8, deltaY:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 805
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    .line 812
    .end local v8           #deltaY:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 814
    :cond_6
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    .line 819
    .local v4, childCount:I
    const/16 v21, 0x1

    sub-int v21, v4, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    mul-int v10, v21, v22

    .line 823
    .local v10, maxScrollX:I
    if-gez v7, :cond_8

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    neg-int v0, v0

    move v11, v0

    .line 825
    .local v11, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v11

    if-le v0, v1, :cond_2

    .line 826
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    if-lez v21, :cond_7

    .line 827
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 829
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    sub-int v21, v11, v21

    move/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 832
    .end local v11           #minScrollX:I
    :cond_8
    if-lez v7, :cond_2

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 834
    .local v6, cv:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 835
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v10, v21, v22

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 845
    .end local v4           #childCount:I
    .end local v6           #cv:Landroid/view/View;
    .end local v7           #deltaX:I
    .end local v10           #maxScrollX:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    move/from16 v21, v0

    sub-float v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 850
    .local v16, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 854
    .local v19, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v12, v0

    .line 855
    .local v12, touchSlop:I
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_b

    const/16 v21, 0x1

    move/from16 v17, v21

    .line 856
    .local v17, xMoved:Z
    :goto_2
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_c

    const/16 v21, 0x1

    move/from16 v20, v21

    .line 858
    .local v20, yMoved:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    if-lez v21, :cond_e

    if-nez v17, :cond_a

    if-eqz v20, :cond_e

    .line 860
    :cond_a
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 864
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 855
    .end local v17           #xMoved:Z
    .end local v20           #yMoved:Z
    :cond_b
    const/16 v21, 0x0

    move/from16 v17, v21

    goto :goto_2

    .line 856
    .restart local v17       #xMoved:Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v20, v21

    goto :goto_3

    .line 868
    .restart local v20       #yMoved:Z
    :cond_d
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 871
    :cond_e
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 877
    .end local v12           #touchSlop:I
    .end local v16           #xDiff:I
    .end local v17           #xMoved:Z
    .end local v19           #yDiff:I
    .end local v20           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v9

    .line 880
    .local v9, index:I
    const/16 v21, -0x1

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 881
    const/16 v21, -0x2

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 882
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x9

    sub-int v9, v21, v22

    .line 883
    if-gez v9, :cond_f

    const/4 v9, 0x0

    .line 890
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 892
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 884
    :cond_11
    const/16 v21, -0x3

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v9, v21, 0x9

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 887
    .local v5, count:I
    if-lt v9, v5, :cond_f

    const/16 v21, 0x1

    sub-int v9, v5, v21

    goto :goto_4

    .line 896
    .end local v5           #count:I
    .end local v9           #index:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v0

    .line 897
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v13

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 898
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v14, v0

    .line 902
    .local v14, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    .line 903
    .restart local v4       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    if-ltz v21, :cond_14

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 913
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 914
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 916
    .end local v4           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :cond_13
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 906
    .restart local v4       #childCount:I
    .restart local v13       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v14       #velocityX:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v22, v4, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_15

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    goto :goto_5

    .line 910
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto :goto_5

    .line 920
    .end local v4           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1208
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1209
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1210
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1212
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1214
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1215
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1216
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1219
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1220
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1221
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1222
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1223
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1224
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1225
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1227
    :cond_1
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 2568
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2569
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2570
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2571
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v3

    .line 2572
    if-ltz v3, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2569
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2575
    :cond_0
    const-string v3, "Launcher.MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t find a match for item \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2580
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_2

    .line 2581
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2582
    :cond_2
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1850
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1851
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1852
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1853
    .local v0, child:Landroid/view/View;
    if-ne v0, v3, :cond_1

    .line 1854
    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1858
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 1851
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2166
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2167
    .local v1, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    .line 2168
    .local v0, currentScreen:I
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2169
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 2170
    const/4 v2, 0x1

    .line 2172
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method resume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2246
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2247
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2248
    .local v1, screen:I
    if-le v0, v4, :cond_0

    .line 2249
    if-gez v1, :cond_3

    .line 2250
    sub-int v1, v0, v4

    .line 2251
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2258
    :cond_0
    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2260
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    .line 2261
    .local v3, width:I
    if-eqz v3, :cond_2

    .line 2262
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 2263
    .local v2, scroller:Landroid/widget/Scroller;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2264
    :cond_1
    mul-int v4, v1, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 2266
    .end local v2           #scroller:Landroid/widget/Scroller;
    :cond_2
    return-void

    .line 2252
    .end local v3           #width:I
    :cond_3
    if-lt v1, v0, :cond_0

    .line 2253
    const/4 v1, 0x0

    .line 2254
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1968
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1972
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 1981
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1986
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1495
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1497
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1500
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1502
    :cond_1
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 2545
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2546
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2547
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 2237
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2238
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1445
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1488
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1255
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v0, p1, :cond_2

    .line 1256
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1259
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1261
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1263
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1272
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1274
    :cond_2
    return-void

    .line 1265
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1266
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method shiftItem(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1904
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1906
    if-gt v0, p2, :cond_1

    .line 1907
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v0

    move-object v1, v0

    .line 1912
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1913
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 1914
    if-gez v2, :cond_4

    .line 1915
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 1916
    if-nez v0, :cond_2

    .line 1938
    :cond_0
    return-void

    .line 1909
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v1, v0

    goto :goto_0

    .line 1917
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    move v5, v2

    move-object v2, v0

    move v0, v5

    .line 1919
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1920
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1921
    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 1923
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 1924
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v2, v0, :cond_3

    .line 1925
    const/4 v0, 0x1

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1926
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1927
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    :cond_3
    move v3, v4

    .line 1931
    :goto_2
    if-ge v3, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v0, :cond_0

    .line 1932
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1933
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1934
    const v4, 0xffff

    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1935
    iput p2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1936
    iput v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1931
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_1
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1017
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(II)V

    .line 1018
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1021
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1032
    .local v7, childCount:I
    sub-int v0, v7, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1035
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-eq p1, v0, :cond_5

    move v6, v4

    .line 1037
    .local v6, changingScreens:Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1038
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_2

    .line 1039
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1042
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 1043
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    sub-int v3, v9, v0

    .line 1045
    .local v3, delta:I
    if-gez p1, :cond_6

    .line 1046
    sub-int p1, v7, v4

    .line 1051
    :cond_3
    :goto_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 1053
    if-gez p2, :cond_4

    .line 1054
    iget p2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 1056
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1057
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1059
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_5
    move v6, v2

    .line 1035
    goto :goto_1

    .line 1047
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_6
    if-lt p1, v7, :cond_3

    .line 1048
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public startFullUpdateDB()V
    .locals 4

    .prologue
    .line 2139
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2141
    return-void
.end method

.method public startUpdateDB()V
    .locals 4

    .prologue
    .line 2057
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 2058
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2059
    return-void
.end method

.method public stopFullUpdateDB()V
    .locals 2

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->cancel(Z)Z

    .line 2135
    :cond_0
    return-void
.end method

.method public stopUpdateDB()V
    .locals 2

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->cancel(Z)Z

    .line 2054
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1286
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 2586
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeApps(Ljava/util/ArrayList;)V

    .line 2587
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2588
    return-void
.end method

.method public updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 1123
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1140
    :cond_0
    return-void

    .line 1126
    :cond_1
    const/4 v7, 0x0

    .local v7, page:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .local v5, count:I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 1127
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1128
    .local v3, child:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, cell:I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .local v6, count2:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 1129
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1131
    .local v4, childchild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1132
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 1134
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 1135
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 1136
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1126
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v4           #childchild:Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

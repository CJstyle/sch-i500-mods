.class public Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
.super Landroid/widget/FrameLayout;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;,
        Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Defines;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object; = null

.field public static final ANIMATION_IN_TIME:I = 0x190

.field public static final ANIMATION_OUT_TIME:I = 0x12c

.field private static final ANIMATION_STATE_CLOSE_DONE:I = 0x8

.field private static final ANIMATION_STATE_CLOSE_RUNNING:I = 0x4

.field private static final ANIMATION_STATE_CLOSE_STARTING:I = 0x3

.field private static final ANIMATION_STATE_OPEN_DONE:I = 0x7

.field private static final ANIMATION_STATE_OPEN_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_OPEN_STARTING:I = 0x1

.field private static final ANIMATION_STYLE_1:I = 0x0

.field private static final ANIMATION_STYLE_2:I = 0x1

.field private static final DEBUG:Z = false

.field static final INVALID_VALUE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QuickViewWorkspace"

.field private static final TAG_QUICKVIEW:Ljava/lang/String; = "quickview"

.field private static final TAG_QUICKVIEWLAYOUT:Ljava/lang/String; = "quickviewlayout"

.field private static final TAG_QUICKVIEWSET:Ljava/lang/String; = "quickviewset"

.field static final TOUCH_DRAG_DELETE:I = 0x1

.field static final TOUCH_DRAG_NORMAL:I = 0x0

.field static final TOUCH_STATE_DRAGGING:I = 0x2

.field static final TOUCH_STATE_PINCHIN:I = 0x4

.field static final TOUCH_STATE_PINCHOUT:I = 0x3

.field static final TOUCH_STATE_REST:I = 0x0

.field static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mAnimationDuration:I

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationStyle:I

.field private mBtnSetDefaultPageBig:Landroid/graphics/drawable/Drawable;

.field private mBtnSetDefaultPageFocusedBig:Landroid/graphics/drawable/Drawable;

.field private mBtnSetDefaultPageFocusedSmall:Landroid/graphics/drawable/Drawable;

.field private mBtnSetDefaultPagePressedBig:Landroid/graphics/drawable/Drawable;

.field private mBtnSetDefaultPagePressedSmall:Landroid/graphics/drawable/Drawable;

.field private mBtnSetDefaultPageSmall:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

.field private mChildRects:[Landroid/graphics/Rect;

.field private mCurrentPage:I

.field private mCurrentRects:[Landroid/graphics/Rect;

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private final mDragPaint:Landroid/graphics/Paint;

.field private mDragState:I

.field private mDraggingIndex:I

.field private mDraggingView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mFinishRects:[Landroid/graphics/Rect;

.field private mIsSetButtonPressed:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mOrientation:I

.field private mOriginDragIndex:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPinchIndex:I

.field private mPinchOutIndex:I

.field private mPinchOutProcess:Z

.field private mPressBitmap:Landroid/graphics/Bitmap;

.field private mPressedDefaultButton:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mSkipSetButtonAction:Z

.field private mStartRects:[Landroid/graphics/Rect;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpLocation2:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedView:Landroid/view/View;

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mUseFullScreenInLandScapeMode:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceScreenCountOnOpen:I

.field private mWorkspaceScreenIndexOnOpen:I

.field private nDefaultPageTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    .line 99
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    .line 114
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 115
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 134
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 135
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    .line 153
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    .line 154
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    .line 161
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 162
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 172
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1059
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    .line 1060
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->init()V

    .line 195
    return-void
.end method

.method private addScreen()V
    .locals 5

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1120
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v2, v1, v4

    .line 1121
    .local v2, index:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 1122
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1124
    .local v0, add:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 1125
    .local v3, screen:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1127
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v4, :cond_1

    .line 1128
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1131
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onAdd()V

    .line 1132
    return-void
.end method

.method private applyDeleteZone()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1077
    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 1078
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 1079
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1080
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1081
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1083
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1084
    .local v5, scale:Landroid/graphics/Matrix;
    const/high16 v7, 0x3f80

    .line 1085
    .local v7, scaleFactor:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    move v2, v1

    .line 1087
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 1088
    return-void
.end method

.method private drop(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const-string v5, "QuickViewWorkspace"

    .line 998
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1002
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1005
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 1006
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v1

    .line 1008
    .local v1, homeScreen:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 1009
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1011
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    if-ne v2, v1, :cond_0

    .line 1012
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteWorkScreen()V

    .line 1057
    .end local v1           #homeScreen:I
    :goto_0
    return-void

    .line 1015
    .restart local v1       #homeScreen:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 1039
    .end local v1           #homeScreen:I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v0

    .line 1040
    .local v0, dropedIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    .line 1043
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapSetButton(I)V

    .line 1046
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0

    .line 1051
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapSetButton(I)V

    .line 1054
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 762
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 763
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 765
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 766
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 767
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 768
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 983
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 984
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 985
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 986
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 987
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 988
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 989
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 992
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    .line 995
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 814
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move v2, v5

    .line 822
    :goto_0
    return v2

    .line 815
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v2

    .line 816
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 817
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 816
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 819
    goto :goto_0

    :cond_3
    move v2, v5

    .line 822
    goto :goto_0
.end method

.method private getViewLayout(I)V
    .locals 23
    .parameter "count"

    .prologue
    .line 1545
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1548
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f050004

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 1549
    .local v14, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 1550
    .local v6, attrs:Landroid/util/AttributeSet;
    const-string v20, "quickviewlayout"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1552
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 1556
    .local v10, depth:I
    :cond_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, type:I
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    move v1, v10

    if-le v0, v1, :cond_5

    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 1558
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1561
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1562
    .local v16, set:Ljava/lang/String;
    const-string v20, "quickviewset"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1563
    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1564
    .local v8, c:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1565
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 1566
    .local v9, d:I
    const/4 v12, 0x0

    .line 1568
    .local v12, i:I
    :cond_2
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    move v1, v9

    if-le v0, v1, :cond_4

    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1569
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 1570
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "quickviewset"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1586
    :cond_4
    move v0, v12

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1587
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "xml item count mismatch : item "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", count "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1592
    .end local v6           #attrs:Landroid/util/AttributeSet;
    .end local v8           #c:Ljava/lang/String;
    .end local v9           #d:I
    .end local v10           #depth:I
    .end local v12           #i:I
    .end local v14           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #set:Ljava/lang/String;
    .end local v19           #type:I
    :catch_0
    move-exception v20

    move-object/from16 v11, v20

    .line 1593
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v20, "QuickViewWorkspace"

    const-string v21, "Got exception parsing quickviews."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1599
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_1
    return-void

    .line 1573
    .restart local v6       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #c:Ljava/lang/String;
    .restart local v9       #d:I
    .restart local v10       #depth:I
    .restart local v12       #i:I
    .restart local v14       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v16       #set:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_6
    :try_start_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1574
    .local v18, tag:Ljava/lang/String;
    const-string v20, "quickview"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Lcom/sec/android/app/twlauncher/R$styleable;->QuickView:[I

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1576
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1577
    .local v13, l:I
    const/16 v20, 0x1

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1578
    .local v17, t:I
    const/16 v20, 0x2

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1579
    .local v15, r:I
    const/16 v20, 0x3

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1580
    .local v7, b:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v12

    .line 1581
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    move v1, v13

    move/from16 v2, v17

    move v3, v15

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1582
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1583
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1595
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #attrs:Landroid/util/AttributeSet;
    .end local v7           #b:I
    .end local v8           #c:Ljava/lang/String;
    .end local v9           #d:I
    .end local v10           #depth:I
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v14           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #r:I
    .end local v16           #set:Ljava/lang/String;
    .end local v17           #t:I
    .end local v18           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_1
    move-exception v20

    move-object/from16 v11, v20

    .line 1596
    .local v11, e:Ljava/io/IOException;
    const-string v20, "QuickViewWorkspace"

    const-string v21, "Got exception parsing quickviews."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 200
    new-instance v6, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v6}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 201
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 210
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 211
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 214
    .local v4, srcColor:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v4, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 216
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 217
    .local v5, srcColor2:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 219
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    new-instance v7, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickViewWorkspace;)V

    aput-object v7, v6, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setClipChildren(Z)V

    .line 224
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "rect"

    .prologue
    .line 1522
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 1526
    :cond_0
    const/4 v0, 0x0

    .line 1528
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeleteZone(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 1065
    .local v0, dz:Lcom/sec/android/app/twlauncher/DeleteZone;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteAreaRect(Landroid/graphics/Rect;)V

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 1069
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationInWindow([I)V

    .line 1070
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1072
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isIncludeItem()Z
    .locals 13

    .prologue
    .line 1091
    const/4 v5, 0x0

    .line 1092
    .local v5, ret:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 1094
    .local v8, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1095
    .local v4, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 1097
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1098
    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1099
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1101
    .local v6, tag:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v3, v0

    .line 1103
    .local v3, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 1104
    const/4 v5, 0x0

    .line 1115
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v6           #tag:Ljava/lang/Object;
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return v5

    .line 1108
    .restart local v3       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v6       #tag:Ljava/lang/Object;
    .restart local v7       #view:Landroid/view/View;
    :cond_1
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x64

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 1110
    const/4 v5, 0x1

    .line 1111
    goto :goto_1

    .line 1097
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 946
    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 950
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 951
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 954
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 956
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 957
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    return-object v0
.end method

.method private onAdd()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1196
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1197
    .local v1, count:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 1199
    .local v3, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1200
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1201
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 1202
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1203
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 1204
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1206
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1210
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 1211
    return-void
.end method

.method private onRemove()V
    .locals 22

    .prologue
    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v17

    .line 1219
    .local v17, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1220
    .local v9, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v4

    .line 1221
    .local v4, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_b

    .line 1222
    invoke-virtual {v9, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1223
    .local v15, view:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 1225
    .local v11, tag:Ljava/lang/Object;
    move-object v0, v15

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Folder;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1221
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1231
    :cond_0
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v7, v0

    .line 1233
    .local v7, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object v0, v7

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 1290
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v11           #tag:Ljava/lang/Object;
    .end local v15           #view:Landroid/view/View;
    :goto_2
    return-void

    .line 1235
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v11       #tag:Ljava/lang/Object;
    .restart local v15       #view:Landroid/view/View;
    :cond_1
    move-object v0, v7

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x64

    cmp-long v18, v18, v20

    if-nez v18, :cond_8

    .line 1236
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v8, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1256
    :cond_2
    :goto_3
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1257
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v13, v0

    .line 1258
    .local v13, userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 1271
    .end local v13           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_1

    .line 1238
    :cond_4
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_3

    .line 1240
    :cond_5
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v8, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_3

    .line 1242
    :cond_6
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v8, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_3

    .line 1245
    :cond_7
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "What\'s that????? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1248
    :cond_8
    move-object v0, v11

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1249
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v12, v0

    .line 1250
    .local v12, userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1253
    .restart local v13       #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v8, v0

    invoke-virtual {v13, v8}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto/16 :goto_3

    .line 1260
    .end local v12           #userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v13           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_9
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1261
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    .line 1262
    .local v8, launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v3

    .line 1263
    .local v3, appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    if-eqz v3, :cond_3

    .line 1264
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v18, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_4

    .line 1266
    .end local v3           #appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .end local v8           #launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_a
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1267
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v6, v0

    .line 1268
    .local v6, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v10

    .line 1269
    .local v10, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_4

    .line 1274
    .end local v6           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v10           #manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .end local v11           #tag:Ljava/lang/Object;
    .end local v15           #view:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1275
    .local v14, v:Landroid/view/View;
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeView(Landroid/view/View;)V

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1280
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 1281
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1283
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v16

    .line 1284
    .local v16, workScreenCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_c

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    const/16 v19, 0x1

    sub-int v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 1289
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    goto/16 :goto_2
.end method

.method private onSwap(I)V
    .locals 4
    .parameter "dropedIndex"

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 1181
    .local v1, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1185
    .local v0, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 1187
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 1190
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1191
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1192
    return-void
.end method

.method private setCloseEndRect(I)V
    .locals 36
    .parameter "index"

    .prologue
    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v5

    .line 1422
    .local v5, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v17, v31, v32

    .line 1426
    .local v17, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1428
    .local v24, workScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1429
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v28

    .line 1430
    .local v28, workscreenWidth:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v27

    .line 1431
    .local v27, workscreenHeight:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 1432
    .local v25, workscreenClientPosX:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v26

    .line 1434
    .local v26, workscreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v29

    .line 1435
    .local v29, workspace:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x1050004

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v30, v31, v32

    .line 1439
    .local v30, workspaceScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 1440
    .local v19, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    .line 1441
    .local v20, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 1442
    .local v21, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 1444
    .local v18, panelPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 1445
    :cond_0
    move v0, v5

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 1446
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    aput-object v32, v31, v12

    .line 1446
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1451
    .end local v12           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, p1

    sub-int v32, v25, v19

    sub-int v33, v26, v21

    add-int v34, v25, v28

    add-int v34, v34, v20

    add-int v35, v26, v27

    add-int v35, v35, v18

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/Rect;->set(IIII)V

    .line 1457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, p1

    const/16 v32, 0x0

    sub-int v33, v30, v17

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 1462
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    move/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    if-nez v31, :cond_8

    .line 1464
    :cond_3
    sget v31, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const/16 v32, 0x9

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 1465
    const-string v31, "QuickViewWorkspace"

    const-string v32, "setCloseEndRect : 9:"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/16 v31, 0x4

    move v0, v5

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    const/16 v31, 0x3

    move/from16 v4, v31

    .line 1469
    .local v4, columnNo:I
    :goto_1
    div-int v11, p1, v4

    .line 1470
    .local v11, div:I
    rem-int v16, p1, v4

    .line 1472
    .local v16, mod:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    if-ge v12, v5, :cond_a

    .line 1473
    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 1472
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1467
    .end local v4           #columnNo:I
    .end local v11           #div:I
    .end local v12           #i:I
    .end local v16           #mod:I
    :cond_4
    const/16 v31, 0x2

    move/from16 v4, v31

    goto :goto_1

    .line 1475
    .restart local v4       #columnNo:I
    .restart local v11       #div:I
    .restart local v12       #i:I
    .restart local v16       #mod:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    aget-object v32, v32, p1

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1476
    div-int v13, v12, v4

    .line 1477
    .local v13, idiv:I
    rem-int v15, v12, v4

    .line 1479
    .local v15, imod:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    sub-int v32, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v33, v0

    aget-object v33, v33, p1

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    mul-int v32, v32, v33

    sub-int v33, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v34, v0

    aget-object v34, v34, p1

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->height()I

    move-result v34

    mul-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1482
    .end local v4           #columnNo:I
    .end local v11           #div:I
    .end local v12           #i:I
    .end local v13           #idiv:I
    .end local v15           #imod:I
    .end local v16           #mod:I
    :cond_6
    const-string v31, "QuickViewWorkspace"

    const-string v32, "setCloseEndRect : X"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/16 v31, 0x1

    sub-int v12, p1, v31

    .restart local v12       #i:I
    :goto_4
    if-ltz v12, :cond_7

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    add-int/lit8 v33, v12, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    aget-object v32, v32, v12

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v32

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 1484
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1489
    :cond_7
    add-int/lit8 v12, p1, 0x1

    :goto_5
    if-ge v12, v5, :cond_a

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, v12, v33

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    aget-object v32, v32, v12

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 1489
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1495
    .end local v12           #i:I
    :cond_8
    const-string v31, "QuickViewWorkspace"

    const-string v32, "setCloseEndRect : NEW:"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v2, v31, p1

    .line 1497
    .local v2, cFinishRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v3, v31, p1

    .line 1504
    .local v3, cStartRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 1505
    .local v22, scaleX:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 1507
    .local v23, scaleY:F
    const/4 v14, 0x0

    .local v14, ii:I
    :goto_6
    if-ge v14, v5, :cond_a

    .line 1508
    move v0, v14

    move/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 1507
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1509
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v6, v31, v14

    .line 1510
    .local v6, currentChildRect:Landroid/graphics/Rect;
    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v7, v31, v32

    .line 1511
    .local v7, dX1:I
    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v9, v31, v32

    .line 1513
    .local v9, dY1:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v22

    move/from16 v0, v31

    float-to-int v0, v0

    move v8, v0

    .line 1514
    .local v8, dXX1:I
    move v0, v9

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v23

    move/from16 v0, v31

    float-to-int v0, v0

    move v10, v0

    .line 1515
    .local v10, dYY1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v14

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v8

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v33, v33, v10

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    add-int v34, v34, v8

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    add-int v35, v35, v10

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 1519
    .end local v2           #cFinishRect:Landroid/graphics/Rect;
    .end local v3           #cStartRect:Landroid/graphics/Rect;
    .end local v6           #currentChildRect:Landroid/graphics/Rect;
    .end local v7           #dX1:I
    .end local v8           #dXX1:I
    .end local v9           #dY1:I
    .end local v10           #dYY1:I
    .end local v14           #ii:I
    .end local v22           #scaleX:F
    .end local v23           #scaleY:F
    :cond_a
    return-void
.end method

.method private setDeleteZoneState(Z)V
    .locals 1
    .parameter "dragOver"

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragEnterForced(Z)V

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 1295
    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 36
    .parameter "index"

    .prologue
    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v5

    .line 1322
    .local v5, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v17, v31, v32

    .line 1326
    .local v17, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1328
    .local v24, workScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1329
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v28

    .line 1330
    .local v28, workscreenWidth:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v27

    .line 1331
    .local v27, workscreenHeight:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 1332
    .local v25, workscreenClientPosX:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v26

    .line 1334
    .local v26, workscreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v29

    .line 1335
    .local v29, workspace:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x1050004

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v30, v31, v32

    .line 1339
    .local v30, workspaceScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 1340
    .local v19, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    .line 1341
    .local v20, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 1342
    .local v21, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 1344
    .local v18, panelPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 1345
    :cond_0
    move v0, v5

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 1346
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    aput-object v32, v31, v12

    .line 1346
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1351
    .end local v12           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, p1

    sub-int v32, v25, v19

    sub-int v33, v26, v21

    add-int v34, v25, v28

    add-int v34, v34, v20

    add-int v35, v26, v27

    add-int v35, v35, v18

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/Rect;->set(IIII)V

    .line 1358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, p1

    const/16 v32, 0x0

    sub-int v33, v30, v17

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 1363
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    move/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    if-nez v31, :cond_8

    .line 1365
    :cond_3
    sget v31, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const/16 v32, 0x9

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 1366
    const/16 v31, 0x4

    move v0, v5

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    const/16 v31, 0x3

    move/from16 v4, v31

    .line 1368
    .local v4, columnNo:I
    :goto_1
    div-int v11, p1, v4

    .line 1369
    .local v11, div:I
    rem-int v16, p1, v4

    .line 1371
    .local v16, mod:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    if-ge v12, v5, :cond_a

    .line 1372
    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 1371
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1366
    .end local v4           #columnNo:I
    .end local v11           #div:I
    .end local v12           #i:I
    .end local v16           #mod:I
    :cond_4
    const/16 v31, 0x2

    move/from16 v4, v31

    goto :goto_1

    .line 1374
    .restart local v4       #columnNo:I
    .restart local v11       #div:I
    .restart local v12       #i:I
    .restart local v16       #mod:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    aget-object v32, v32, p1

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1375
    div-int v13, v12, v4

    .line 1376
    .local v13, idiv:I
    rem-int v15, v12, v4

    .line 1378
    .local v15, imod:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    sub-int v32, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v33, v0

    aget-object v33, v33, p1

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    mul-int v32, v32, v33

    sub-int v33, v13, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v34, v0

    aget-object v34, v34, p1

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->height()I

    move-result v34

    mul-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1381
    .end local v4           #columnNo:I
    .end local v11           #div:I
    .end local v12           #i:I
    .end local v13           #idiv:I
    .end local v15           #imod:I
    .end local v16           #mod:I
    :cond_6
    const/16 v31, 0x1

    sub-int v12, p1, v31

    .restart local v12       #i:I
    :goto_4
    if-ltz v12, :cond_7

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    add-int/lit8 v33, v12, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    aget-object v32, v32, v12

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v32

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 1381
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1386
    :cond_7
    add-int/lit8 v12, p1, 0x1

    :goto_5
    if-ge v12, v5, :cond_a

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, v12, v33

    aget-object v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    aget-object v32, v32, v12

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 1386
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1392
    .end local v12           #i:I
    :cond_8
    const-string v31, "QuickViewWorkspace"

    const-string v32, "setOpenStartRect : NEW:"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v3, v31, p1

    .line 1394
    .local v3, cStartRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v2, v31, p1

    .line 1401
    .local v2, cEndRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 1402
    .local v22, scaleX:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 1404
    .local v23, scaleY:F
    const/4 v14, 0x0

    .local v14, ii:I
    :goto_6
    if-ge v14, v5, :cond_a

    .line 1405
    move v0, v14

    move/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 1404
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1406
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v6, v31, v14

    .line 1407
    .local v6, currentChildRect:Landroid/graphics/Rect;
    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v7, v31, v32

    .line 1408
    .local v7, dX1:I
    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v9, v31, v32

    .line 1410
    .local v9, dY1:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v22

    move/from16 v0, v31

    float-to-int v0, v0

    move v8, v0

    .line 1411
    .local v8, dXX1:I
    move v0, v9

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v22

    move/from16 v0, v31

    float-to-int v0, v0

    move v10, v0

    .line 1412
    .local v10, dYY1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    aget-object v31, v31, v14

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v8

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v33, v33, v10

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    add-int v34, v34, v8

    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    add-int v35, v35, v10

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 1417
    .end local v2           #cEndRect:Landroid/graphics/Rect;
    .end local v3           #cStartRect:Landroid/graphics/Rect;
    .end local v6           #currentChildRect:Landroid/graphics/Rect;
    .end local v7           #dX1:I
    .end local v8           #dXX1:I
    .end local v9           #dY1:I
    .end local v10           #dYY1:I
    .end local v14           #ii:I
    .end local v22           #scaleX:F
    .end local v23           #scaleY:F
    :cond_a
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 962
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 964
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 965
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 966
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 969
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 971
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 973
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 974
    .local v5, scale:Landroid/graphics/Matrix;
    const/high16 v7, 0x3f80

    .line 975
    .local v7, scaleFactor:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 977
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    .line 979
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 980
    return-void
.end method

.method private swapScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 1175
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onSwap(I)V

    .line 1176
    return-void
.end method

.method private updateAppInfoInDatabase()V
    .locals 11

    .prologue
    .line 1298
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 1299
    .local v8, work:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 1302
    .local v9, workCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 1303
    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1304
    .local v1, child:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1305
    .local v2, childCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 1306
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1307
    .local v5, itemView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 1308
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 1309
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v4, v0

    .line 1310
    .local v4, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v10, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v10, v3, :cond_0

    .line 1311
    iput v3, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1312
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v10, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1305
    .end local v4           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1302
    .end local v5           #itemView:Landroid/view/View;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1317
    .end local v1           #child:Landroid/view/ViewGroup;
    .end local v2           #childCount:I
    .end local v6           #j:I
    :cond_2
    return-void
.end method

.method private updateTag()V
    .locals 5

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1136
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1137
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1138
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1139
    .local v3, tag:Ljava/lang/Object;
    sget-object v4, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 1140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private updateWallpaperOffset(IIF)V
    .locals 7
    .parameter "newCurScreenIndex"
    .parameter "newScreenCount"
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    .line 341
    const/high16 v2, 0x3f00

    .line 342
    .local v2, wallpaperOffsetOnOpen:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    if-le v4, v6, :cond_0

    .line 343
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 346
    :cond_0
    const/high16 v0, 0x3f00

    .line 347
    .local v0, targetWallpaperOffsetOnClose:F
    if-le p2, v6, :cond_1

    .line 348
    int-to-float v4, p1

    sub-int v5, p2, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 351
    :cond_1
    sub-float v4, v0, v2

    mul-float/2addr v4, p3

    add-float v3, v2, v4

    .line 354
    .local v3, woffset:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 357
    .local v1, token:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 360
    :cond_2
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 888
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 866
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 872
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 873
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 874
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 875
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 876
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 877
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 878
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 880
    return-void
.end method

.method checkButtonArea(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 1746
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1747
    .local v0, buttonArea:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1748
    .local v1, count:I
    const/4 v4, 0x1

    if-gt v1, v4, :cond_0

    move v4, v5

    .line 1757
    :goto_0
    return v4

    .line 1750
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1751
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1752
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getButtonBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1753
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    .line 1754
    goto :goto_0

    .line 1750
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #view:Landroid/view/View;
    :cond_2
    move v4, v5

    .line 1757
    goto :goto_0
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 799
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    .line 800
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    .line 801
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 804
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 806
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 807
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .locals 5

    .prologue
    .line 773
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 774
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 776
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 777
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 779
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v12

    .line 230
    .local v12, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v19

    .line 231
    .local v19, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v16

    .line 232
    .local v16, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDrawingTime()J

    move-result-wide v14

    .line 234
    .local v14, drawingTime:J
    if-eqz v19, :cond_0

    if-nez v16, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    .line 239
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 244
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 245
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 246
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 246
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 251
    .end local v17           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    .line 253
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 258
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 259
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 260
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 260
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 270
    .end local v17           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 271
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_5

    .line 272
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 273
    .local v11, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object v5, v0

    if-eq v11, v5, :cond_4

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 271
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 277
    .end local v11           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    move v5, v0

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    move v5, v0

    add-int v5, v5, v19

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    move v5, v0

    add-int v5, v5, v16

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_0

    .line 280
    .end local v17           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12

    .line 281
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-int v13, v5

    .line 283
    .local v13, current:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v5, v0

    if-lt v13, v5, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v13, v0

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 290
    :cond_8
    int-to-float v5, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v6, v0

    int-to-float v6, v6

    div-float v18, v5, v6

    .line 291
    .local v18, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateWallpaperOffset(IIF)V

    .line 298
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v5, v0

    if-lt v13, v5, :cond_a

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    const/4 v5, 0x7

    :goto_4
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 302
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    array-length v5, v5

    if-eq v5, v12, :cond_c

    .line 303
    :cond_b
    const-string v5, "QuickViewWorkspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dipathDraw mAnimationState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mCurrnetRect.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  array count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-lez v12, :cond_c

    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 307
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 309
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_10

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_f

    .line 309
    :cond_d
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 299
    .end local v17           #i:I
    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 311
    .restart local v17       #i:I
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 312
    .restart local v11       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    aget-object v8, v8, v17

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_6

    .line 321
    .end local v11           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    if-ltz v5, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    if-ge v5, v12, :cond_11

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move/from16 v17, v0

    .line 323
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 324
    .restart local v11       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    aget-object v8, v8, v17

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 330
    .end local v11           #child:Landroid/view/View;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_0

    .line 333
    .end local v13           #current:I
    .end local v17           #i:I
    .end local v18           #progress:F
    :cond_12
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_0

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 333
    add-int/lit8 v17, v17, 0x1

    goto :goto_7
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 27
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 661
    const/4 v12, 0x0

    .line 662
    .local v12, ret:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 663
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v7, v0

    .line 665
    .local v7, current:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 666
    .local v11, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move v5, v11

    .line 667
    .local v5, backgroundAlpha:F
    :goto_0
    const/high16 v22, 0x3f80

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 668
    const/16 v22, 0x0

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 679
    .end local v5           #backgroundAlpha:F
    .end local v7           #current:I
    .end local v11           #progress:F
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 681
    .local v17, tag:Ljava/lang/Object;
    sget-object v22, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 682
    check-cast v17, Ljava/lang/Integer;

    .end local v17           #tag:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 685
    .local v16, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 687
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 691
    .local v15, scaleV:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 692
    .local v14, scaleH:F
    cmpl-float v22, v15, v14

    if-lez v22, :cond_6

    move v13, v14

    .line 694
    .local v13, scale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 699
    const/16 v22, 0x11

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v13

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v13

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v26}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 703
    .local v20, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 705
    .local v21, yOffset:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    add-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v21

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 707
    move-object/from16 v0, p1

    move v1, v13

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 708
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildIndex(Landroid/view/View;)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 721
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawSetButton(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 740
    .end local v6           #child:Landroid/view/View;
    .end local v13           #scale:F
    .end local v14           #scaleH:F
    .end local v15           #scaleV:F
    .end local v16           #screen:I
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 743
    .local v8, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 758
    .end local v8           #dragBitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_4
    return v12

    .line 666
    .restart local v7       #current:I
    .restart local v11       #progress:F
    :cond_3
    const/high16 v22, 0x3f80

    sub-float v22, v22, v11

    move/from16 v5, v22

    goto/16 :goto_0

    .line 673
    .end local v7           #current:I
    .end local v11           #progress:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 674
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 676
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    goto/16 :goto_1

    .restart local v6       #child:Landroid/view/View;
    .restart local v14       #scaleH:F
    .restart local v15       #scaleV:F
    .restart local v16       #screen:I
    :cond_6
    move v13, v15

    .line 692
    goto/16 :goto_2

    .line 723
    .restart local v13       #scale:F
    .restart local v20       #xOffset:I
    .restart local v21       #yOffset:I
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawSetButton(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto :goto_3

    .line 731
    .end local v6           #child:Landroid/view/View;
    .end local v13           #scale:F
    .end local v14           #scaleH:F
    .end local v15           #scaleV:F
    .end local v16           #screen:I
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    .restart local v17       #tag:Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 732
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 733
    .local v9, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    sub-int v23, v23, v19

    div-int/lit8 v23, v23, 0x2

    add-int v10, v22, v23

    .line 734
    .local v10, left:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    sub-int v23, v23, v9

    div-int/lit8 v23, v23, 0x2

    add-int v18, v22, v23

    .line 736
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v10, v19

    add-int v24, v18, v9

    move-object/from16 v0, v22

    move v1, v10

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 745
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #top:I
    .end local v19           #width:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 746
    .restart local v8       #dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 752
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawSetButton(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto/16 :goto_4
.end method

.method public drawCloseAnimation()V
    .locals 2

    .prologue
    .line 1538
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1539
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1540
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    .line 1542
    :cond_0
    return-void
.end method

.method public drawOpenAnimation()V
    .locals 1

    .prologue
    .line 1533
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1534
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    .line 1535
    return-void
.end method

.method drawSetButton(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 10
    .parameter "canvas"
    .parameter "view"
    .parameter "mode"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v9, " height = "

    const-string v6, "QuickViewWorkspace"

    .line 1655
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    if-eqz v3, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1657
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1658
    .local v0, count:I
    const/4 v1, 0x0

    .line 1660
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getButtonBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1662
    .local v2, rect:Landroid/graphics/Rect;
    const-string v3, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " drawSetButton : child count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v3, 0x4

    if-le v0, v3, :cond_4

    .line 1665
    const-string v3, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " drawSetButton : small button | width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    if-nez p3, :cond_2

    .line 1667
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1668
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1690
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawSetButtonText(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1669
    :cond_2
    if-ne p3, v7, :cond_3

    .line 1670
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPagePressedSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1671
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPagePressedSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1672
    :cond_3
    if-ne p3, v8, :cond_1

    .line 1673
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageFocusedSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1674
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageFocusedSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1678
    :cond_4
    const-string v3, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " drawSetButton : large button | width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    if-nez p3, :cond_5

    .line 1680
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageBig:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1681
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageBig:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1682
    :cond_5
    if-ne p3, v7, :cond_6

    .line 1683
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPagePressedBig:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1684
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPagePressedBig:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1685
    :cond_6
    if-ne p3, v8, :cond_1

    .line 1686
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageFocusedBig:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1687
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageFocusedBig:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method drawSetButtonText(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "view"
    .parameter "rect"

    .prologue
    const/4 v9, 0x1

    .line 1695
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildIndex(Landroid/view/View;)I

    move-result v2

    .line 1696
    .local v2, currentScreen:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v3

    .line 1697
    .local v3, homeScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1699
    .local v1, count:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1700
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->nDefaultPageTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1702
    const/4 v6, 0x0

    .line 1703
    .local v6, textWidth:I
    if-ne v2, v3, :cond_1

    .line 1704
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1705
    .local v5, string:Ljava/lang/String;
    const-string v7, "Home"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_0

    .line 1706
    const/16 v6, 0x38

    .line 1714
    :goto_0
    iget v7, p3, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    div-int/lit8 v4, v7, 0x2

    .line 1715
    .local v4, leftMargin:I
    const/16 v0, 0xd

    .line 1716
    .local v0, bottomMargin:I
    iget v7, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    int-to-float v7, v7

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v0

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1718
    return-void

    .line 1708
    .end local v0           #bottomMargin:I
    .end local v4           #leftMargin:I
    :cond_0
    const/16 v6, 0x24

    goto :goto_0

    .line 1711
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1712
    .restart local v5       #string:Ljava/lang/String;
    const/16 v6, 0x5a

    goto :goto_0
.end method

.method getButtonBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 15
    .parameter "view"

    .prologue
    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v3

    .line 1722
    .local v3, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v7, v13, v14

    .line 1723
    .local v7, view_width:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v6, v13, v14

    .line 1724
    .local v6, view_height:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1725
    .local v8, view_x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1727
    .local v9, view_y:I
    const/4 v1, 0x5

    .line 1728
    .local v1, buttonLeftMargin:I
    const/16 v2, 0xa

    .line 1729
    .local v2, buttonRightMargin:I
    const/16 v0, 0xa

    .line 1731
    .local v0, buttonBottomMargin:I
    add-int v13, v1, v2

    sub-int v10, v7, v13

    .line 1732
    .local v10, w:I
    const/16 v4, 0x25

    .line 1733
    .local v4, h:I
    move v11, v1

    .line 1734
    .local v11, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int/2addr v13, v4

    sub-int v12, v13, v0

    .line 1736
    .local v12, y:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1738
    .local v5, rect:Landroid/graphics/Rect;
    add-int/lit8 v13, v8, 0x5

    iput v13, v5, Landroid/graphics/Rect;->left:I

    .line 1739
    add-int/lit8 v13, v10, 0x5

    add-int/2addr v13, v8

    iput v13, v5, Landroid/graphics/Rect;->right:I

    .line 1740
    iput v12, v5, Landroid/graphics/Rect;->top:I

    .line 1741
    add-int v13, v12, v4

    iput v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 1742
    return-object v5
.end method

.method getChildIndex(Landroid/view/View;)I
    .locals 4
    .parameter "view"

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1762
    .local v1, childCount:I
    const/4 v2, -0x1

    .line 1764
    .local v2, childIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1765
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1766
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 1767
    move v2, v3

    .line 1764
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1770
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v2
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    return v0
.end method

.method public getDeleteIndex()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method initScreen(I)V
    .locals 8
    .parameter "screenCount"

    .prologue
    const v7, 0x7f0200c8

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeAllViews()V

    .line 896
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setBackgroundResource(I)V

    .line 898
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 899
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 901
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 902
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 904
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 905
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 907
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 908
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 909
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 911
    const v5, 0x7f02003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 913
    const v5, 0x7f02003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 917
    const v5, 0x7f020015

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageSmall:Landroid/graphics/drawable/Drawable;

    .line 918
    const v5, 0x7f02001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPagePressedSmall:Landroid/graphics/drawable/Drawable;

    .line 919
    const v5, 0x7f02001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageFocusedSmall:Landroid/graphics/drawable/Drawable;

    .line 920
    const v5, 0x7f020016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageBig:Landroid/graphics/drawable/Drawable;

    .line 921
    const v5, 0x7f020019

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPagePressedBig:Landroid/graphics/drawable/Drawable;

    .line 922
    const v5, 0x7f020018

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mBtnSetDefaultPageFocusedBig:Landroid/graphics/drawable/Drawable;

    .line 923
    const v5, 0x7f080047

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->nDefaultPageTextSize:I

    .line 927
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 928
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge p1, v5, :cond_1

    .line 932
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 939
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 941
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 845
    :cond_0
    const/4 v0, 0x0

    .line 847
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOpened()Z
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 639
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    if-nez v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 656
    :goto_0
    return-void

    .line 644
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    .line 645
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addScreen()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 406
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 407
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 409
    .local v5, y:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    move v8, v12

    .line 513
    :goto_0
    return v8

    .line 413
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 513
    :cond_1
    :goto_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-eqz v8, :cond_5

    move v8, v12

    goto :goto_0

    .line 415
    :sswitch_0
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    if-eqz v8, :cond_1

    .line 416
    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 418
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 419
    .local v6, y1:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 420
    .local v3, x1:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 421
    .local v7, y2:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 423
    .local v4, x2:I
    sub-int v8, v6, v7

    sub-int v9, v6, v7

    mul-int/2addr v8, v9

    sub-int v9, v3, v4

    sub-int v10, v3, v4

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinchStart:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinch:I

    .line 427
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    if-eq v8, v13, :cond_2

    .line 428
    iput v13, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    .line 429
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 434
    :cond_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinch:I

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    .line 435
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 436
    .local v1, childOnPinch:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v8, v9, :cond_1

    .line 438
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 439
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 440
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    move v8, v12

    .line 443
    goto :goto_0

    .line 450
    .end local v1           #childOnPinch:Landroid/view/View;
    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :sswitch_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 451
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    .line 455
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    if-nez v8, :cond_1

    .line 456
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    if-nez v8, :cond_1

    .line 457
    float-to-int v8, v2

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v8, v9

    float-to-int v9, v5

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->checkButtonArea(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    .line 459
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    if-eq v8, v13, :cond_1

    .line 460
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    .line 461
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    goto/16 :goto_1

    .line 473
    :sswitch_2
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    if-nez v8, :cond_3

    .line 474
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    if-eqz v8, :cond_3

    .line 475
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    if-eq v8, v13, :cond_3

    .line 476
    const-string v8, "QuickViewWorkspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDefaultHomeScreen is called : Focused Button "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    .line 478
    iput v13, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    .line 485
    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v8, :cond_4

    .line 486
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 487
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 489
    :cond_4
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    .line 495
    :sswitch_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-nez v8, :cond_1

    .line 496
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 498
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 499
    .restart local v6       #y1:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 500
    .restart local v3       #x1:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 501
    .restart local v7       #y2:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 503
    .restart local v4       #x2:I
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v8

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 504
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 505
    sub-int v8, v6, v7

    sub-int v9, v6, v7

    mul-int/2addr v8, v9

    sub-int v9, v3, v4

    sub-int v10, v3, v4

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinchStart:I

    .line 507
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    goto/16 :goto_1

    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :cond_5
    move v8, v11

    .line 513
    goto/16 :goto_0

    .line 413
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
    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 367
    .local v1, count:I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 393
    :cond_0
    return-void

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v4, v4

    if-eq v4, v1, :cond_3

    .line 370
    :cond_2
    if-lez v1, :cond_3

    new-array v4, v1, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    .line 373
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(I)V

    .line 374
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 375
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, child:Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 378
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 379
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 380
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    if-nez v4, :cond_6

    .line 374
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 384
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    if-eqz v4, :cond_7

    .line 385
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 386
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 389
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 629
    :goto_0
    return v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    const-string v0, "QuickViewWorkspace"

    const-string v1, "ignoring long click. Desktop is loading. Editing not allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 612
    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 616
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    .line 620
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    if-eqz v0, :cond_2

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    .line 622
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    .line 624
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    :cond_3
    move v0, v2

    .line 629
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 398
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 399
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 519
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 520
    .local v8, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 523
    .local v9, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    const/4 v11, 0x0

    .line 605
    :goto_0
    return v11

    .line 525
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 605
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v11, 0x1

    goto :goto_0

    .line 529
    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    .line 530
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v11, v9

    float-to-int v3, v11

    .line 532
    .local v3, deltaY:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 533
    .local v6, touchSlop:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_5

    const/4 v11, 0x1

    move v10, v11

    .line 535
    .local v10, yMoved:Z
    :goto_2
    if-eqz v10, :cond_2

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-nez v11, :cond_2

    .line 536
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 539
    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 541
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 542
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 543
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 544
    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 545
    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 546
    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 547
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 549
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 551
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_3
    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 552
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    .line 555
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 557
    .local v7, v:Landroid/view/View;
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 558
    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v11, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_4

    .line 559
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 560
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 561
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 567
    :cond_4
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 568
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->applyDeleteZone()V

    .line 569
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    goto/16 :goto_1

    .line 533
    .end local v1           #child:Landroid/view/View;
    .end local v4           #index:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :cond_5
    const/4 v11, 0x0

    move v10, v11

    goto :goto_2

    .line 571
    .restart local v1       #child:Landroid/view/View;
    .restart local v4       #index:I
    .restart local v7       #v:Landroid/view/View;
    .restart local v10       #yMoved:Z
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 572
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 574
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 576
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 577
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 578
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v11, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1

    .line 579
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 580
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 581
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    goto/16 :goto_1

    .line 590
    .end local v1           #child:Landroid/view/View;
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #index:I
    .end local v6           #touchSlop:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 591
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drop(II)V

    .line 594
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    if-eqz v11, :cond_a

    .line 596
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 599
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    .line 785
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 789
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 790
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->resetMode()V

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    .line 793
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    .line 795
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 796
    return-void
.end method

.method public removeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1146
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1147
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1168
    :goto_0
    return-void

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeSetButtonOnDeletedView()V

    .line 1157
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1159
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1160
    .local v0, count:I
    if-lt v0, v3, :cond_2

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 1162
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1165
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onRemove()V

    .line 1167
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    goto :goto_0
.end method

.method removeSetButtonOnDeletedView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v5, "QuickViewWorkspace"

    const-string v4, " childCount = "

    .line 1773
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 1776
    .local v1, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v0

    .line 1777
    .local v0, homeScreen:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    if-ge v2, v0, :cond_1

    .line 1778
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Home : mDeleteIndex < homeScreen  homeScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " childCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    sub-int v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    if-le v2, v0, :cond_2

    .line 1782
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Home : mDeleteIndex > homeScreen  homeScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " childCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    goto :goto_0

    .line 1785
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    if-ne v2, v0, :cond_0

    .line 1786
    if-nez v0, :cond_3

    .line 1787
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    .line 1788
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Home : home is 0  homeScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " childCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1790
    :cond_3
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1791
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    sub-int v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    .line 1792
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Home : home is last one  homeScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " childCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1794
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    .line 1795
    const-string v2, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Home : home is not last  homeScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " childCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setDeleteIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 830
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 831
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 832
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    goto :goto_0
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 852
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 853
    return-void
.end method

.method swapSetButton(I)V
    .locals 7
    .parameter "dropedIndex"

    .prologue
    const-string v6, " to "

    const-string v5, "QuickViewWorkspace"

    .line 1802
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 1803
    .local v2, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1806
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v0

    .line 1807
    .local v0, homeScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 1808
    const-string v3, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwap : dropIndex =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mOriginDragIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    if-ne v3, v0, :cond_1

    .line 1810
    const-string v3, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwap : Home Screen is draged , change from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1812
    :cond_1
    if-ne p1, v0, :cond_0

    .line 1813
    const-string v3, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwap : Home Screen is selected , change from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->setDefaultHomeScreen(I)V

    goto :goto_0
.end method

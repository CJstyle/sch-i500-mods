.class public Lcom/sec/android/app/twlauncher/AppShortcutZone;
.super Landroid/widget/LinearLayout;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.AppShortcutZone"


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mApplicationsView:Landroid/view/View;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private final mColumnCount:I

.field private mDeleteIcon:Landroid/graphics/Bitmap;

.field private mDeleteIconRightOffset:I

.field private mDeleteIconTopOffset:I

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field private mEditBg:Landroid/graphics/Bitmap;

.field private mEditIndex:I

.field private mEditLeftOffset:I

.field private mEditLeftOffset2:I

.field private mEditTopOffset:I

.field private mEnabledChildAnimation:Z

.field private mEnabledDrawing:Z

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mIconWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrawBg:Z

.field private mItemGap1:I

.field private mItemGap2:I

.field private mLRPadding:I

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOldOrientation:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVirtualView:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 68
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledDrawing:Z

    .line 81
    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 82
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 93
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    .line 95
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;

    const/high16 v2, 0x3f40

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 515
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 531
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 102
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->AppShortcutZone:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v3, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppShortcutZone_iconColumnCount should be at least 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v1, v3

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    .line 111
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method private getApplicationInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 7
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v6, 0x0

    .line 423
    const/4 v2, 0x0

    .line 425
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 426
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 430
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 432
    .local v0, N:I
    if-lez v0, :cond_0

    .line 433
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-direct {v2, v4, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/IconCache;)V

    .line 441
    .end local v0           #N:I
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method private getItemGap(I)I
    .locals 1
    .parameter "childCount"

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, gap:I
    packed-switch p1, :pswitch_data_0

    .line 921
    :goto_0
    return v0

    .line 914
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap1:I

    .line 915
    goto :goto_0

    .line 917
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap2:I

    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 121
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 126
    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    .line 127
    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    .line 128
    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 129
    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset:I

    .line 130
    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset2:I

    .line 131
    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditTopOffset:I

    .line 132
    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconTopOffset:I

    .line 133
    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconRightOffset:I

    .line 134
    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconWidth:I

    .line 135
    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLRPadding:I

    .line 136
    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap1:I

    .line 137
    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap2:I

    .line 139
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setClickable(Z)V

    .line 141
    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 142
    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 147
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v3, v3, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V

    .line 155
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDrawingCacheEnabled(Z)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->buildDrawingCache(Z)V

    .line 158
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    new-instance v4, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    aput-object v4, v3, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_1
    return-void
.end method

.method private initApplicationsView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 164
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030003

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, itemView:Landroid/view/View;
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v7, v0

    .line 167
    .local v7, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 171
    .local v6, paddingTop:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 172
    .local v4, paddingLeft:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 173
    .local v3, paddingBottom:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 175
    .local v5, paddingRight:I
    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    .line 176
    invoke-virtual {v7, v4, v6, v5, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPadding(IIII)V

    .line 178
    invoke-virtual {v7, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 179
    new-instance v8, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v8, v11

    if-ge v1, v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 202
    return-void
.end method


# virtual methods
.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .parameter "v"
    .parameter "index"

    .prologue
    const v4, 0xffff

    .line 651
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 652
    .local v2, child:Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 656
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 657
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 658
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput p2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 659
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 660
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 663
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method arrangeItem(I)V
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, -0x1

    .line 852
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 853
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 888
    :cond_0
    return-void

    .line 855
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v4

    .line 856
    .local v4, count:I
    const/4 v6, -0x1

    .line 857
    .local v6, moveIndex:I
    add-int/lit8 v5, p1, 0x1

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 858
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 859
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_5

    .line 860
    move v6, v5

    .line 865
    .end local v3           #child:Landroid/view/View;
    :cond_2
    if-ne v6, v10, :cond_3

    .line 866
    const/4 v9, 0x1

    sub-int v5, p1, v9

    :goto_1
    if-ltz v5, :cond_3

    .line 867
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 868
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    .line 869
    move v6, v5

    .line 875
    .end local v3           #child:Landroid/view/View;
    :cond_3
    if-eq v6, v10, :cond_0

    .line 876
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 877
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v9, v9, p1

    invoke-virtual {p0, v9, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 879
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_0

    .line 880
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 881
    .local v2, appView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 882
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_4

    instance-of v9, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v9, :cond_4

    .line 883
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 884
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 879
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 857
    .end local v2           #appView:Landroid/view/View;
    .end local v7           #tag:Ljava/lang/Object;
    .restart local v3       #child:Landroid/view/View;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 866
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public changeApplicationsIcon()V
    .locals 5

    .prologue
    const v4, 0x7f0a003e

    .line 731
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 732
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 733
    .local v1, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 737
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 740
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method changeItem(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "index"

    .prologue
    .line 634
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 638
    :cond_0
    const/4 v1, -0x1

    .line 639
    .local v1, oldIndex:I
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 640
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-result v1

    .line 641
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 642
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    .line 643
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0
.end method

.method public clearApplications()V
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeAllViews()V

    .line 452
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 456
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 332
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledDrawing:Z

    if-nez v5, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 338
    iput v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 341
    :cond_2
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    if-ne v5, v8, :cond_7

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationStartTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationDuration:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 344
    .local v1, normalized:F
    cmpl-float v5, v1, v10

    if-ltz v5, :cond_3

    .line 345
    iput v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 346
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    if-eqz v5, :cond_5

    .line 347
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v5, v12}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 352
    :cond_3
    :goto_1
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 353
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 354
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationTo:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float v4, v5, v6

    .line 356
    .local v4, value:F
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v5

    if-nez v5, :cond_6

    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v10, v4

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 359
    .local v3, offsetY:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v9, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    .end local v3           #offsetY:I
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    if-eq v5, v11, :cond_4

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 378
    .end local v1           #normalized:F
    .end local v4           #value:F
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 382
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 383
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v5

    if-eqz v5, :cond_8

    .line 386
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset2:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditTopOffset:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 349
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #normalized:F
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v5, v12}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 361
    .restart local v4       #value:F
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v10, v4

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 362
    .local v2, offsetX:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    invoke-virtual {v5, v2, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 371
    .end local v1           #normalized:F
    .end local v2           #offsetX:I
    .end local v4           #value:F
    :cond_7
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    if-eqz v5, :cond_4

    .line 372
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 373
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 388
    .restart local v0       #child:Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v6, 0x42

    const/16 v4, 0x11

    const/4 v5, 0x1

    .line 747
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v3, :cond_5

    .line 748
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 749
    .local v1, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 750
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 751
    .local v0, childCount:I
    if-le v0, v5, :cond_5

    .line 752
    if-ne p2, v4, :cond_1

    .line 753
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    if-nez v3, :cond_0

    .line 754
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_0
    move v3, v5

    .line 779
    .end local v0           #childCount:I
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :goto_0
    return v3

    .line 757
    .restart local v0       #childCount:I
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :cond_1
    if-ne p2, v6, :cond_5

    .line 758
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    sub-int v4, v0, v5

    if-ne v3, v4, :cond_2

    .line 759
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_2
    move v3, v5

    .line 761
    goto :goto_0

    .line 764
    .end local v0           #childCount:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 765
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 766
    .local v2, w:Lcom/sec/android/app/twlauncher/Workspace;
    if-ne p2, v4, :cond_4

    .line 767
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    if-lez v3, :cond_5

    .line 768
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 769
    goto :goto_0

    .line 771
    :cond_4
    if-ne p2, v6, :cond_5

    .line 772
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    .line 773
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 774
    goto :goto_0

    .line 779
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0
.end method

.method public drawBg(ZZ)V
    .locals 5
    .parameter "draw"
    .parameter "animation"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 709
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    .line 710
    if-eqz p2, :cond_1

    .line 711
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationDuration:I

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationStartTime:J

    .line 713
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    if-eqz v0, :cond_0

    .line 714
    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 715
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    .line 716
    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationTo:F

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 727
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 728
    return-void

    .line 719
    :cond_0
    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 720
    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    .line 721
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationTo:F

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 725
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset2:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditTopOffset:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .local v0, ret:Z
    move v1, v0

    .line 307
    .end local v0           #ret:Z
    :goto_1
    return v1

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    goto :goto_1
.end method

.method public drawChildUninstallableMarker(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 8
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 314
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_1

    .line 318
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 319
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v4, :cond_1

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, childTopMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v4

    if-eqz v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconRightOffset:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconTopOffset:I

    add-int/lit8 v6, v6, 0x0

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 328
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #childTopMargin:I
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public getApplicationsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    return v0
.end method

.method public getEnabledChildCount()I
    .locals 6

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 832
    .local v1, count:I
    const/4 v3, 0x0

    .line 833
    .local v3, ret:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 834
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 838
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method getIndexOfCell(II)I
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 577
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 578
    .local v14, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 580
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 581
    iget v15, v14, Landroid/graphics/Rect;->left:I

    sub-int p1, p1, v15

    .line 582
    iget v15, v14, Landroid/graphics/Rect;->top:I

    sub-int p2, p2, v15

    .line 584
    const/4 v3, -0x1

    .line 585
    .local v3, cell:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getEnabledChildCount()I

    move-result v11

    .line 586
    .local v11, enabledChildCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v10

    .line 587
    .local v10, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    move v9, v0

    .line 588
    .local v9, childWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    move v6, v0

    .line 590
    .local v6, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    move v15, v0

    if-lt v11, v15, :cond_5

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v15

    if-nez v15, :cond_4

    .line 592
    if-gez p1, :cond_3

    const/16 p1, 0x0

    move/from16 v3, p1

    .line 624
    :cond_0
    :goto_0
    if-ltz v3, :cond_1

    const/4 v15, 0x1

    sub-int v15, v10, v15

    if-lt v3, v15, :cond_2

    .line 625
    :cond_1
    const/4 v3, -0x1

    :cond_2
    move v15, v3

    .line 630
    .end local v3           #cell:I
    .end local v6           #childHeight:I
    .end local v9           #childWidth:I
    .end local v10           #count:I
    .end local v11           #enabledChildCount:I
    :goto_1
    return v15

    .line 592
    .restart local v3       #cell:I
    .restart local v6       #childHeight:I
    .restart local v9       #childWidth:I
    .restart local v10       #count:I
    .restart local v11       #enabledChildCount:I
    :cond_3
    div-int v15, p1, v9

    move v3, v15

    goto :goto_0

    .line 594
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    move v15, v0

    add-int/2addr v15, v6

    div-int v3, p2, v15

    .line 595
    const/4 v15, 0x1

    sub-int v15, v10, v15

    sub-int v3, v15, v3

    goto :goto_0

    .line 598
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v15

    if-nez v15, :cond_8

    .line 599
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v5

    .line 600
    .local v5, childGap:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v15

    mul-int v16, v11, v9

    sub-int v15, v15, v16

    const/16 v16, 0x1

    sub-int v16, v11, v16

    mul-int v16, v16, v5

    sub-int v15, v15, v16

    div-int/lit8 v7, v15, 0x2

    .line 602
    .local v7, childLeft:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v10, :cond_0

    .line 603
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 604
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 602
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 605
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 606
    add-int v15, v9, v5

    mul-int/2addr v15, v3

    add-int/2addr v15, v7

    div-int/lit8 v16, v9, 0x2

    add-int v15, v15, v16

    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_6

    goto :goto_0

    .line 609
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childGap:I
    .end local v7           #childLeft:I
    .end local v12           #i:I
    :cond_8
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v5

    .line 610
    .restart local v5       #childGap:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v15

    mul-int v16, v11, v6

    sub-int v15, v15, v16

    const/16 v16, 0x1

    sub-int v16, v11, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    move/from16 v17, v0

    add-int v17, v17, v5

    mul-int v16, v16, v17

    sub-int v15, v15, v16

    div-int/lit8 v8, v15, 0x2

    .line 612
    .local v8, childTop:I
    const/4 v15, 0x1

    sub-int v3, v10, v15

    .line 613
    const/4 v13, 0x0

    .line 614
    .local v13, index:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v10, :cond_0

    .line 615
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 616
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 614
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 617
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 618
    add-int/lit8 v13, v13, 0x1

    .line 619
    add-int v15, v6, v5

    mul-int/2addr v15, v13

    add-int/2addr v15, v8

    div-int/lit8 v16, v6, 0x2

    add-int v15, v15, v16

    move/from16 v0, p2

    move v1, v15

    if-ge v0, v1, :cond_9

    goto/16 :goto_0

    .line 630
    .end local v3           #cell:I
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childGap:I
    .end local v6           #childHeight:I
    .end local v8           #childTop:I
    .end local v9           #childWidth:I
    .end local v10           #count:I
    .end local v11           #enabledChildCount:I
    .end local v12           #i:I
    .end local v13           #index:I
    :cond_b
    const/4 v15, -0x1

    goto/16 :goto_1
.end method

.method public getVisibleChildCount()I
    .locals 5

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 843
    .local v1, count:I
    const/4 v3, 0x0

    .line 844
    .local v3, ret:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 845
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 844
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 848
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method public loadApplications()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 395
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 398
    .local v1, count:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 402
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 403
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, strCName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getApplicationInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v4

    .line 405
    .local v4, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v4, :cond_2

    .line 406
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 407
    .local v7, topnum:I
    iput v7, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 408
    iput v7, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 409
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    .line 410
    .local v5, item:Landroid/view/View;
    move v3, v2

    .line 411
    .local v3, index:I
    if-ltz v7, :cond_1

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v8, v10

    if-ge v7, v8, :cond_1

    .line 412
    move v3, v7

    .line 414
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 415
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 417
    .end local v3           #index:I
    .end local v5           #item:Landroid/view/View;
    .end local v7           #topnum:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v4           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v6           #strCName:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 10
    .parameter "info"

    .prologue
    const/4 v9, -0x1

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 483
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 485
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    if-eq v6, v7, :cond_0

    .line 486
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 487
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    iput v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 489
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 490
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 493
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, itemView:Landroid/view/View;
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v5, v0

    .line 496
    .local v5, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    new-instance v6, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v7, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v6, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 500
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 503
    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 505
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    if-eq v6, v9, :cond_1

    .line 506
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 507
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    iput v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 508
    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 509
    iput v9, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 512
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v5
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 1
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V

    .line 570
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x1

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v10

    .line 233
    .local v10, orientation:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v7

    .line 234
    .local v7, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLRPadding:I

    .line 235
    .local v3, childLeft:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 236
    .local v4, childTop:I
    const/4 v5, 0x0

    .line 237
    .local v5, childTopMargin:I
    const/4 v1, 0x0

    .line 239
    .local v1, childGap:I
    if-eqz v10, :cond_0

    .line 240
    const/4 v3, 0x0

    .line 241
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 242
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getEnabledChildCount()I

    move-result v8

    .line 247
    .local v8, enabledChildCount:I
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 248
    .local v11, r:Landroid/graphics/Rect;
    if-nez v10, :cond_4

    .line 249
    if-lez v8, :cond_1

    iget v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v8, v12, :cond_1

    .line 250
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v1

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v12

    iget v13, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    mul-int/2addr v13, v8

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    sub-int v13, v8, v13

    mul-int/2addr v13, v1

    sub-int/2addr v12, v13

    div-int/lit8 v3, v12, 0x2

    .line 253
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_8

    .line 254
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 253
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 257
    .local v6, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 258
    .local v2, childHeight:I
    invoke-virtual {v0, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    iget-boolean v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v12, :cond_3

    .line 261
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v12, v12, v9

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 266
    :goto_2
    add-int v12, v6, v1

    add-int/2addr v3, v12

    goto :goto_1

    .line 264
    :cond_3
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v0, v3, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 269
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v6           #childWidth:I
    .end local v9           #i:I
    :cond_4
    if-lez v8, :cond_5

    iget v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v8, v12, :cond_5

    .line 270
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v1

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v12

    iget v13, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    mul-int/2addr v13, v8

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    sub-int v13, v8, v13

    iget v14, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    add-int/2addr v14, v1

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    div-int/lit8 v4, v12, 0x2

    .line 273
    :cond_5
    const/4 v12, 0x1

    sub-int v9, v7, v12

    .restart local v9       #i:I
    :goto_3
    if-ltz v9, :cond_8

    .line 274
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    .line 273
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 276
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 277
    .restart local v6       #childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 278
    .restart local v2       #childHeight:I
    invoke-virtual {v0, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    iget-boolean v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v12, :cond_7

    .line 281
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 282
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v12, v12, v9

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 286
    :goto_5
    add-int v12, v2, v5

    add-int/2addr v12, v1

    add-int/2addr v4, v12

    goto :goto_4

    .line 284
    :cond_7
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v0, v3, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 289
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v6           #childWidth:I
    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 210
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 212
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 213
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 215
    .local v1, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    .line 216
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v3

    .line 217
    .local v3, orientation:I
    if-nez v3, :cond_0

    .line 218
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLRPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    .line 223
    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 224
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 226
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    .end local v2           #i:I
    :cond_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    div-int v5, v1, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    goto :goto_0

    .line 228
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method removeItem(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 668
    .local v1, count:I
    const/4 v3, -0x1

    .line 669
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 670
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 671
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 672
    move v3, v2

    .line 677
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 678
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 679
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 681
    :cond_1
    return v3

    .line 669
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    .line 694
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 574
    return-void
.end method

.method public setEditBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    .line 698
    return-void
.end method

.method public setEditIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 685
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    .line 686
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    .line 690
    return-void
.end method

.method public setEnabledDrawing(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledDrawing:Z

    .line 702
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 566
    return-void
.end method

.method public updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V
    .locals 7
    .parameter "info"
    .parameter "num"

    .prologue
    .line 459
    if-nez p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    const/4 v5, 0x3

    if-ge p2, v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge p2, v5, :cond_0

    .line 466
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 467
    .local v3, tag:Ljava/lang/Object;
    const/4 v4, 0x1

    .line 468
    .local v4, update:Z
    if-eqz v3, :cond_2

    .line 469
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v2, v0

    .line 470
    .local v2, orgInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-ne v2, p1, :cond_2

    .line 471
    const/4 v4, 0x0

    .line 475
    .end local v2           #orgInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    if-eqz v4, :cond_0

    .line 477
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0
.end method

.method public updateApplications()V
    .locals 0

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 447
    return-void
.end method

.method updateBadgeCount(Ljava/util/List;)V
    .locals 5
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
    .line 891
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 892
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    if-eqz v1, :cond_1

    .line 893
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 894
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 896
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 897
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 898
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v4

    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 900
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 901
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 902
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 893
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 907
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 908
    return-void
.end method

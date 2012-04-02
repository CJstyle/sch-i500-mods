.class public Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApplicationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 42
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 49
    .local v10, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez p2, :cond_0

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030002

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p3

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v11, v0

    .line 54
    .local v11, itemview:Lcom/sec/android/app/twlauncher/MenuItemView;
    new-instance v16, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v13, 0x0

    .line 58
    .local v13, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 59
    .local v5, className:Ljava/lang/String;
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 60
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 61
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 63
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v10

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    move/from16 v17, v0

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Utilities;->getDrawableIconBg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 64
    .local v6, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const v16, 0x7f06000a

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 67
    .local v8, iconView:Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v16

    sget-object v17, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 68
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    .line 69
    .local v9, iconWidth:F
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    .line 71
    .local v7, iconHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move v15, v0

    .line 72
    .local v15, viewWidth:F
    move v14, v15

    .line 74
    .local v14, viewHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080016

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    .line 76
    .local v4, appIconSize:F
    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    .line 77
    .local v12, m:Landroid/graphics/Matrix;
    if-nez v12, :cond_4

    .line 78
    new-instance v12, Landroid/graphics/Matrix;

    .end local v12           #m:Landroid/graphics/Matrix;
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .restart local v12       #m:Landroid/graphics/Matrix;
    div-float v16, v4, v9

    div-float v17, v4, v7

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 80
    sub-float v16, v15, v4

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v17, v14, v4

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 88
    .end local v4           #appIconSize:F
    .end local v7           #iconHeight:F
    .end local v9           #iconWidth:F
    .end local v12           #m:Landroid/graphics/Matrix;
    .end local v14           #viewHeight:F
    .end local v15           #viewWidth:F
    :cond_2
    :goto_0
    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    move-object/from16 v16, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v16

    move/from16 v0, v16

    move-object v1, v10

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 92
    :cond_3
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    return-object p2

    .line 83
    .restart local v4       #appIconSize:F
    .restart local v7       #iconHeight:F
    .restart local v9       #iconWidth:F
    .restart local v12       #m:Landroid/graphics/Matrix;
    .restart local v14       #viewHeight:F
    .restart local v15       #viewWidth:F
    :cond_4
    div-float v16, v4, v9

    div-float v17, v4, v7

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 84
    sub-float v16, v15, v4

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v17, v14, v4

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

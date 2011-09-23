.class public Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;
.super Landroid/widget/ProgressBar;
.source "PanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/PanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoramaProgressBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/PanoramaView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 493
    const/4 v0, 0x0

    const v1, 0x1010078

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 494
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->init()V

    .line 495
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 488
    const v0, 0x1010078

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 489
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->init()V

    .line 490
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 483
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 484
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->init()V

    .line 485
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setPadding(IIII)V

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setMax(I)V

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setProgress(I)V

    .line 507
    return-void
.end method

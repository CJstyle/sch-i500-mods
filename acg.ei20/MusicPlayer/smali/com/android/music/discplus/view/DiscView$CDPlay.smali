.class Lcom/android/music/discplus/view/DiscView$CDPlay;
.super Ljava/lang/Object;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CDPlay"
.end annotation


# instance fields
.field btn:Landroid/widget/ImageView;

.field isEnable:Z

.field isPlaying:Z

.field pressed:Z

.field rc:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/discplus/view/DiscView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscView$CDPlay;-><init>()V

    return-void
.end method

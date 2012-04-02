.class Lcom/android/music/discplus/view/DiscView$DiscInfoText;
.super Ljava/lang/Object;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscInfoText"
.end annotation


# instance fields
.field infoScreen:Landroid/widget/LinearLayout;

.field pressed:Z

.field rc:Landroid/graphics/Rect;

.field str1:Landroid/widget/TextView;

.field str2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/discplus/view/DiscView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscView$DiscInfoText;-><init>()V

    return-void
.end method

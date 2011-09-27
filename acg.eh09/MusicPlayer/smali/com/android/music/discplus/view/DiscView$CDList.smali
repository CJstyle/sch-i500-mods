.class Lcom/android/music/discplus/view/DiscView$CDList;
.super Ljava/lang/Object;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CDList"
.end annotation


# instance fields
.field list:Landroid/widget/ListView;

.field pressed:Z

.field rc:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/discplus/view/DiscView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscView$CDList;-><init>()V

    return-void
.end method

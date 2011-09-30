.class Lcom/android/music/discplus/view/DiscRenderer$CDRange;
.super Ljava/lang/Object;
.source "DiscRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CDRange"
.end annotation


# instance fields
.field idx:I

.field public rect:Landroid/graphics/Rect;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/discplus/view/DiscRenderer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/music/discplus/view/DiscRenderer$CDRange;-><init>()V

    return-void
.end method

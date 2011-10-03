.class Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "TFHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .parameter "input"

    .prologue
    .line 145
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    return v0
.end method

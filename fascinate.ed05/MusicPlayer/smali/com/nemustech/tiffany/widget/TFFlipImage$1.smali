.class Lcom/nemustech/tiffany/widget/TFFlipImage$1;
.super Ljava/lang/Object;
.source "TFFlipImage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;->doFlipNextAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

.field final synthetic val$frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$1;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$1;->val$frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$1;->val$frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setVisibility(I)V

    .line 409
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "ani"

    .prologue
    .line 412
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "ani"

    .prologue
    .line 416
    return-void
.end method

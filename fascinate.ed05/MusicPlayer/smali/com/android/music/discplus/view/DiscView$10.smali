.class Lcom/android/music/discplus/view/DiscView$10;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;)V
    .locals 0
    .parameter

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 1807
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1808
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$900(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1809
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1811
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1805
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$900(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$10;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1804
    return-void
.end method

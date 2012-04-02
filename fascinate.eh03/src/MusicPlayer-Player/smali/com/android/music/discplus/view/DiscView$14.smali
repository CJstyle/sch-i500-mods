.class Lcom/android/music/discplus/view/DiscView$14;
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
    .line 1959
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 1972
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1973
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v1

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1974
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/data/DiscPlusData;->getAudioItemCount()I

    move-result v0

    .line 1975
    .local v0, audioCount:I
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$800(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1976
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1977
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v1

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1978
    :cond_1
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;

    move-result-object v1

    iget-object v1, v1, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1980
    return-void

    :cond_2
    move v2, v3

    .line 1975
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1963
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$14;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1962
    :cond_0
    return-void
.end method

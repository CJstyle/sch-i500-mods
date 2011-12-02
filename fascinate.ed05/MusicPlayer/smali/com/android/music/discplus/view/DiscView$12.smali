.class Lcom/android/music/discplus/view/DiscView$12;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$inAnimationScreen:Landroid/view/animation/TranslateAnimation;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;Landroid/view/animation/TranslateAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    iput-object p2, p0, Lcom/android/music/discplus/view/DiscView$12;->val$inAnimationScreen:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1825
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2300(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscInfoText;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$DiscInfoText;->infoScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$900(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1828
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$700(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDList;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1829
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$700(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDList;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$2400(Lcom/android/music/discplus/view/DiscView;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1830
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$2200(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$AnimationText;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$AnimationText;->aniScreen:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$12;->val$inAnimationScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1831
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$12;->this$0:Lcom/android/music/discplus/view/DiscView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscView;->access$2502(Lcom/android/music/discplus/view/DiscView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1832
    return-void
.end method

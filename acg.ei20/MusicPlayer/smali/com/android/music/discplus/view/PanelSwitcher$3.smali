.class Lcom/android/music/discplus/view/PanelSwitcher$3;
.super Ljava/lang/Object;
.source "PanelSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/PanelSwitcher;->moveDown()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/PanelSwitcher;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/PanelSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$500(Lcom/android/music/discplus/view/PanelSwitcher;)I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    const-string v0, "DISC+"

    const-string v1, "TopView Show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$200(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 202
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$300(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/TopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/discplus/view/TopView;->setNowPosition()V

    .line 203
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$300(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/TopView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/TopView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$200(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$3;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$510(Lcom/android/music/discplus/view/PanelSwitcher;)I

    .line 207
    :cond_0
    return-void
.end method

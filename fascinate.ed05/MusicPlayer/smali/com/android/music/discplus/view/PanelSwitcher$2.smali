.class Lcom/android/music/discplus/view/PanelSwitcher$2;
.super Ljava/lang/Object;
.source "PanelSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/PanelSwitcher;->moveUp()Z
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
    .line 152
    iput-object p1, p0, Lcom/android/music/discplus/view/PanelSwitcher$2;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$2;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$500(Lcom/android/music/discplus/view/PanelSwitcher;)I

    move-result v0

    iget-object v1, p0, Lcom/android/music/discplus/view/PanelSwitcher$2;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v1}, Lcom/android/music/discplus/view/PanelSwitcher;->access$100(Lcom/android/music/discplus/view/PanelSwitcher;)[Landroid/view/View;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 156
    const-string v0, "DISC+"

    const-string v1, "DiscView Show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$2;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$200(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 159
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$2;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$200(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->setPlaying()V

    .line 160
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher$2;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v0}, Lcom/android/music/discplus/view/PanelSwitcher;->access$508(Lcom/android/music/discplus/view/PanelSwitcher;)I

    .line 162
    :cond_0
    return-void
.end method

.class Lcom/android/music/discplus/view/DiscView$5$1;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/discplus/view/DiscView$5;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$5$1;->this$1:Lcom/android/music/discplus/view/DiscView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$5$1;->this$1:Lcom/android/music/discplus/view/DiscView$5;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1171
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$5$1;->this$1:Lcom/android/music/discplus/view/DiscView$5;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscView;->access$1402(Lcom/android/music/discplus/view/DiscView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1172
    return-void
.end method

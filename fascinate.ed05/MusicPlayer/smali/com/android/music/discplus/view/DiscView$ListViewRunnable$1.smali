.class Lcom/android/music/discplus/view/DiscView$ListViewRunnable$1;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView$ListViewRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable$1;->this$1:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable$1;->this$1:Lcom/android/music/discplus/view/DiscView$ListViewRunnable;

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_OUT_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1395
    return-void
.end method

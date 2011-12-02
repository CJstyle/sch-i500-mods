.class Lcom/android/music/discplus/view/DiscView$3;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->onResume()V
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
    .line 648
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$3;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$3;->this$0:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 650
    return-void
.end method

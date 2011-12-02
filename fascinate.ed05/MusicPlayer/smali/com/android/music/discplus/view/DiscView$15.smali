.class Lcom/android/music/discplus/view/DiscView$15;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;

.field final synthetic val$effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$15;->this$0:Lcom/android/music/discplus/view/DiscView;

    iput-object p2, p0, Lcom/android/music/discplus/view/DiscView$15;->val$effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$15;->this$0:Lcom/android/music/discplus/view/DiscView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$15;->val$effectnext:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1935
    return-void
.end method

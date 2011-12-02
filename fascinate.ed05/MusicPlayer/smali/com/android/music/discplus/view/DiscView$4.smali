.class Lcom/android/music/discplus/view/DiscView$4;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->showAniMationDismiss()V
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
    .line 726
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$4;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$4;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$800(Lcom/android/music/discplus/view/DiscView;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    .line 730
    return-void
.end method

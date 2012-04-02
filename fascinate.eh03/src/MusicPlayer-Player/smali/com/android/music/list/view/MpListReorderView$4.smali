.class Lcom/android/music/list/view/MpListReorderView$4;
.super Ljava/lang/Object;
.source "MpListReorderView.java"

# interfaces
.implements Lcom/android/music/list/view/MpListReorderView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/MpListReorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/MpListReorderView;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/MpListReorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView$4;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1
    .parameter "from"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/music/list/view/MpListReorderView$4;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-static {v0, p1}, Lcom/android/music/list/view/MpListReorderView;->access$700(Lcom/android/music/list/view/MpListReorderView;I)V

    .line 656
    return-void
.end method

.class Lcom/android/music/list/adapter/AbstractMpListAdapter$1;
.super Landroid/os/Handler;
.source "AbstractMpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;->GetHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$1;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, index:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Tag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dbid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, dbid:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$1;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

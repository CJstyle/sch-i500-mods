.class Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;
.super Landroid/os/Handler;
.source "MpThumnailOneEditTitleScreenLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 266
    return-void
.end method

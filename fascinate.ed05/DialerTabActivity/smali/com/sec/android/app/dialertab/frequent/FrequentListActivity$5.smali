.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$5;
.super Landroid/os/Handler;
.source "FrequentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1249
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1254
    return-void
.end method

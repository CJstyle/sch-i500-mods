.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startScrollProcessing()V
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
    .line 1261
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1262
    const/4 v0, 0x0

    .line 1263
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1600(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1264
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1266
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Z)Z

    .line 1269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1271
    :cond_1
    return-void
.end method
